package com.kaikeba.t31.order.enums;

import lombok.Getter;

/**
 * 订单支付状态枚举类
 *
 * @author zhouyu
 */
@Getter
public enum OrderStatus {

    /**
     * 未支付
     */
    UNPAID(0L, "未支付"),

    /**
     * 已支付
     */
    PAID(1L, "已支付");

    /**
     * 状态
     */
    private Long status;

    /**
     * 描述
     */
    private String desc;

    OrderStatus(Long status, String desc) {
        this.status = status;
        this.desc = desc;
    }
}
