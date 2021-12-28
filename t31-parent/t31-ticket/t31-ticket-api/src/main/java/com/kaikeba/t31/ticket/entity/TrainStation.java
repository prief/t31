package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 经停站对象 train_station
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
@TableName("train_station")
public class TrainStation extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 车次ID
     */
    private Long numberId;

    /**
     * 车次号
     */
    private String trainNumber;

    /**
     * 到达类型
     */
    private String arriveType;

    /**
     * 到达时间
     */
    private String arriveTime;

    /**
     * 开始时间
     */
    private String startTime;

    /**
     * 运行时间
     */
    private String duration;

    /**
     * 车站编号
     */
    private Long num;

    /**
     * 车站名称
     */
    private String name;

    /**
     * 描述
     */
    private String comment;

}
