package com.kaikeba.t31.order.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.order.pay.ProductModel;
import com.kaikeba.t31.order.service.PayService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 支付控制器
 *
 * @author zhouyu
 */
@RestController
@RequestMapping("ali-pay")
public class PayController {

    @Resource
    private PayService payService;

    /**
     * 电脑网站支付-统一收单
     *
     * @param productModel 支付订单信息
     * @return 支付页
     */
    @PostMapping("website-pay")
    public Result webSitePay(@RequestBody ProductModel productModel) {
        return Result.success(payService.webSitePay(productModel));
    }

    /**
     * 支付宝支付回调
     *
     * @param request 回调信息
     * @return
     */
    @PostMapping("notify")
    public String paySuccess(HttpServletRequest request) {
        return payService.payNotify(request);
    }

}
