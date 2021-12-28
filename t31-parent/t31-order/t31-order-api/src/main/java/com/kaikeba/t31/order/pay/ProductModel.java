package com.kaikeba.t31.order.pay;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 支付订单信息
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class ProductModel implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单名称
     */
    private String subject;

    /**
     * 商品描述
     */
    private String body;

    /**
     * 总金额(单位是分)
     */
    private String totalAmount;

    /**
     * 订单号(唯一)
     */
    private String outTradeNo;

}
