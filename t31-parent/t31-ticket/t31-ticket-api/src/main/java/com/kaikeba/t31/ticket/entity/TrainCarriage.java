package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 乘客实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@TableName("train_carriage")
public class TrainCarriage extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 车次外键
     */
    private Long numberId;

    /**
     * 车厢编号
     */
    private String carriageNo;

    /**
     * 车厢类型
     */
    private String type;

    /**
     * 座位数
     */
    private Integer count;

    /**
     * 单价
     */
    private String price;

    /**
     * 地址
     */
    private String comment;

}
