package com.kaikeba.t31.order.service;

import com.kaikeba.t31.common.exception.OrderException;
import com.kaikeba.t31.order.pay.ProductModel;

import javax.servlet.http.HttpServletRequest;

/**
 * 支付接口
 *
 * @author zhouyu
 */
public interface PayService {

    /**
     * 电脑网站支付-统一收单
     *
     * @param productModel 支付订单信息
     * @return 支付页
     * @throws OrderException com.kaikeba.t31.common.exception.OrderException;
     */
    String webSitePay(ProductModel productModel) throws OrderException;

    /**
     * 支付宝支付回调
     *
     * @param request 回调信息
     * @return
     */
    String payNotify(HttpServletRequest request);
}
