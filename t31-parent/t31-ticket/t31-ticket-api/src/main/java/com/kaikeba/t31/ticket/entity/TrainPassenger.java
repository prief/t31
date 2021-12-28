package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 火车乘客实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
@TableName("train_passenger")
public class TrainPassenger extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 外键-用户
     */
    private Long userId;

    /**
     * 电话
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 身份证号
     */
    private String idNumber;

    /**
     * 乘客类型
     */
    private String type;

    /**
     * 住址
     */
    private String address;

    /**
     * 姓名
     */
    private String name;

}
