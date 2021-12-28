package com.kaikeba.t31.order.enums;

import lombok.Getter;

/**
 * @author 座位类型
 */
@Getter
public enum SeatTypes {

    /**
     * 硬坐
     */
    HARD_SEAT("硬坐"),

    /**
     * 一等座
     */
    FIRST_CLASS_SEAT("一等座"),

    /**
     * 二等座
     */
    SECOND_CLASS_SEAT("二等座"),

    /**
     * 特等座
     */
    SPECIAL_SEAT("特等座"),

    /**
     * 硬卧
     */
    HARD_SLEEPER("硬卧"),

    /**
     * 软卧
     */
    SOFT_SLEEPER("软卧"),

    ;

    /**
     * 状态
     */

    /**
     * 描述
     */
    private String desc;

    SeatTypes(String desc) {
        this.desc = desc;
    }
}
