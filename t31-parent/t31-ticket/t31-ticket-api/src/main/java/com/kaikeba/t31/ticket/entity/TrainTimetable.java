package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 列车时刻表对象
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
@TableName("train_timetable")
public class TrainTimetable extends BaseEntity {

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
     * 始发站
     */
    private String startStation;

    /**
     * 终点站
     */
    private String endStation;

    /**
     * 开始站点
     */
    private String fromStation;

    /**
     * 到达站点
     */
    private String toStation;

    /**
     * 开始时间
     */
    private String startTime;

    /**
     * 到达时间
     */
    private String arrivalTime;

    /**
     * 历时时长
     */
    private String duration;

    /**
     * 描述
     */
    private String comment;

}
