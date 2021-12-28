package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 车厢实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@TableName("train_carriage")
public class CarriageEntity extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 车次外键
     */
    private Long numberId;

    /**
     * 车厢号
     */
    private Integer carriageNo;

    /**
     * 车厢类型
     */
    private String type;

    /**
     * 座位数量
     */
    private Integer count;

    /**
     * 价格
     */
    private Double price;

    /**
     * 备注
     */
    private String desc;

}
