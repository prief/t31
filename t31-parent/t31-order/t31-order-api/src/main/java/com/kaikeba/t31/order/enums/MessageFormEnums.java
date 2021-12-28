package com.kaikeba.t31.order.enums;


import lombok.Getter;

/**
 * 信息通知类型枚举
 *
 * @author zhouyu
 */
@Getter
public enum MessageFormEnums {

    /**
     * 邮件通知
     */
    MAIL("mail"),

    /**
     * 短信通知
     */
    SMS("sms");

    /**
     * 通知类型
     */
    private String name;

    MessageFormEnums(String name) {
        this.name = name;
    }

}
