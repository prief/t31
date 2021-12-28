package com.kaikeba.t31.order.entity;

import lombok.Getter;
import lombok.Setter;

/**
 * 乘客实体
 *
 * @author zhouyu
 */
@Setter
@Getter
public class Passenger {

    /**
     * 乘客id
     */
    private Long id;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 乘客姓名
     */
    private String name;

    /**
     * 手机号
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 编号
     */
    private String idNumber;

    /**
     * 乘客类型
     */
    private String type;

    /**
     * 乘客地址
     */
    private String address;

}
