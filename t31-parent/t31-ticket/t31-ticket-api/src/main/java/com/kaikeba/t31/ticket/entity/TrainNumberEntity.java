package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

/**
 * 车次实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@TableName("train_number")
public class TrainNumberEntity extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 车次
     */
    private String number;

    /**
     * 类型
     */
    private String type;

    /**
     * 车厢数
     */
    private Integer carriageCount;

    /**
     * 开始站
     */
    private String startStation;

    /**
     * 结束站
     */
    private String endStation;

    /**
     * 开始时间
     */
    private String startTime;

    /**
     * 结束时间
     */
    private String endTime;

    /**
     * 到达类型
     */
    private String arriveType;

    /**
     * 运行时长
     */
    private String duration;

    /**
     * 运行类型
     */
    private String runType;

    /**
     * 列车车厢列表
     */
    @TableField(exist = false)
    private List<CarriageEntity> carriageEntities = new ArrayList<>();

    /**
     * 列车经停站
     */
    @TableField(exist = false)
    private List<StationEntity> stationEntities = new ArrayList<>();

    /**
     * 列车时刻表
     */
    @TableField(exist = false)
    private List<TrainTimetable> timetableEntities = new ArrayList<>();

}
