package com.kaikeba.t31.order.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.alipay.easysdk.factory.Factory;
import com.alipay.easysdk.kernel.util.JsonUtil;
import com.alipay.easysdk.kernel.util.ResponseChecker;
import com.alipay.easysdk.payment.page.models.AlipayTradePagePayResponse;
import com.kaikeba.t31.common.exception.OrderException;
import com.kaikeba.t31.common.utils.DateUtils;
import com.kaikeba.t31.order.client.PassengerClient;
import com.kaikeba.t31.order.constants.PayConstants;
import com.kaikeba.t31.order.entity.Passenger;
import com.kaikeba.t31.order.entity.TrainOrder;
import com.kaikeba.t31.order.enums.MessageFormEnums;
import com.kaikeba.t31.order.enums.OrderStatus;
import com.kaikeba.t31.order.pay.ProductModel;
import com.kaikeba.t31.order.propertis.AliPayProperties;
import com.kaikeba.t31.order.service.NoticeService;
import com.kaikeba.t31.order.service.PayService;
import com.kaikeba.t31.order.service.TrainOrderService;
import com.kaikeba.t31.order.service.TrainSkuService;
import com.kaikeba.t31.order.vo.MessageVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * 支付实现类
 *
 * @author zhouyu
 */
@Slf4j
@Service
public class PayServiceImpl implements PayService {

    @Resource
    private AliPayProperties aliPayProperties;

    @Resource
    private TrainOrderService trainOrderService;

    @Resource
    private TrainSkuService trainSkuService;

    @Resource
    private Map<String, NoticeService> noticeServiceMap = new HashMap<>(16);

    @Resource
    private PassengerClient passengerClient;

    /**
     * 电脑网站支付-统一收单
     *
     * @param productModel 支付订单信息
     * @return 支付页
     * @throws OrderException com.kaikeba.t31.common.exception.OrderException
     */
    @Override
    public String webSitePay(ProductModel productModel) throws OrderException {
        // 添加自定义参数，回调使用
        Map<String, Object> businessParams = new HashMap<>(16);
        // 根据订单id查询订单详细
        TrainOrder trainOrder = trainOrderService.getById(productModel.getOutTradeNo());
        String trainDate = StringUtils.join(DateUtils.formatDate(trainOrder.getTrainDate()), " ", trainOrder.getStartTime());
        if (DateUtils.parse(trainDate, DateUtils.DATE_TIME_MM_PATTERN).getTime() < DateUtils.now()) {
            throw new OrderException("车票已超过发车时间，请重新选择");
        }
        businessParams.put(PayConstants.SKU_ID, trainOrder.getSkuId());
        businessParams.put(PayConstants.SEAT_TYPE, trainOrder.getSeatType());
        businessParams.put(PayConstants.PASSENGER_ID, trainOrder.getPassengerId());
        businessParams.put(PayConstants.START_STATION_NAME, trainOrder.getStartStationName());
        businessParams.put(PayConstants.END_STATION_NAME, trainOrder.getEndStationName());
        // 向支付宝发起下单请求
        AlipayTradePagePayResponse alipayTradeWapPayResponse = null;
        try {
            alipayTradeWapPayResponse = Factory.Payment.Page().optional(PayConstants.PASSBACK_PARAMS, JsonUtil.toJsonString(businessParams))
                    .pay(productModel.getSubject(), productModel.getOutTradeNo(), productModel.getTotalAmount(), aliPayProperties.getReturnUrl());
        } catch (Exception e) {
            log.error("向支付宝发起下单请求发生异常:{}", e.getMessage());
        }
        if (ResponseChecker.success(alipayTradeWapPayResponse)) {
            return alipayTradeWapPayResponse.getBody();
        } else {
            log.error("支付宝电脑网站支付失败:{}", alipayTradeWapPayResponse.body);
            return PayConstants.FAIL;
        }
    }

    /**
     * 支付宝支付回调
     *
     * @param request 回调信息
     * @return
     */
    @Override
    public String payNotify(HttpServletRequest request) {
        String message = PayConstants.SUCCESS;
        Map<String, String> params = new HashMap<>(16);
        Enumeration<String> parameterNames = request.getParameterNames();
        // 转化支付宝回调参数
        while (parameterNames.hasMoreElements()) {
            String parameterName = parameterNames.nextElement();
            params.put(parameterName, request.getParameter(parameterName));
        }
        String outTradeNo = request.getParameter(PayConstants.OUT_TRADE_NO);
        String businessParams = request.getParameter(PayConstants.PASSBACK_PARAMS);
        Map<String, Object> bizMap = JSONObject.parseObject(businessParams, Map.class);
        String skuId = bizMap.get(PayConstants.SKU_ID).toString();
        String seatType = bizMap.get(PayConstants.SEAT_TYPE).toString();
        String passengerId = bizMap.get(PayConstants.PASSENGER_ID).toString();
        String startStationName = bizMap.get(PayConstants.START_STATION_NAME).toString();
        String endStationName = bizMap.get(PayConstants.END_STATION_NAME).toString();
        try {
            // 验证签名
            Boolean flag = Factory.Payment.Common().verifyNotify(params);
            if (flag) {
                log.info("订单outTradeNo:{}支付成功", outTradeNo);
                TrainOrder trainOrder = new TrainOrder();
                trainOrder.setId(Long.valueOf(outTradeNo));
                trainOrder.setStatus(OrderStatus.PAID.getStatus());
                // 变更订单状态为已支付
                trainOrderService.updateTrainOrder(trainOrder);
                // 支付成功扣减库存
                trainSkuService.saleStock(skuId, seatType);
                // 购买通知
                this.notice(Long.parseLong(passengerId), startStationName, endStationName);
            } else {
                log.info("订单outTradeNo:{}验证签名失败", outTradeNo);
                message = PayConstants.FAIL;
            }
        } catch (Exception e) {
            log.error("支付回调发生异常信息，errMsg:{}", e.getMessage());
            message = PayConstants.FAIL;
        }
        return message;
    }

    /**
     * 购买通知
     *
     * @param passengerId 乘客id
     */
    public void notice(Long passengerId, String startStationName, String endStationName) {
        // 根据乘客id获取乘客信息
        Passenger passenger = passengerClient.getById(passengerId);
        if (StringUtils.isNotBlank(passenger.getEmail()) && StringUtils.isNotBlank(passenger.getPhone())) {
            MessageVO messageVO = MessageVO.builder()
                    .userName(passenger.getName())
                    .mobile(passenger.getPhone())
                    .email(passenger.getEmail())
                    .messageTitle(PayConstants.MESSAGE_TITLE)
                    .messageContent(StringUtils.join("您购买的从", startStationName, "到", endStationName, "已出票成功。"))
                    .build();
            // 获取对应的通知接口
            NoticeService noticeService = noticeServiceMap.get(StringUtils.join(MessageFormEnums.MAIL.getName(), NoticeService.class.getSimpleName()));
            // 发送消息
            noticeService.sendMessage(messageVO);
        }
    }

}


