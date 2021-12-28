package com.kaikeba.t31.order.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 火车票SKU实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@TableName("train_sku")
public class TrainSkuEntity extends BaseEntity {

    /**
     * 车次外键
     */
    private Long numberId;

    /**
     * 车次
     */
    private String trainNumber;

    /**
     * 发车日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date trainDate;

    /**
     * 始发站
     */
    private String startStation;

    /**
     * 终点站
     */
    private String endStation;

    /**
     * 出发站
     */
    private String fromStation;

    /**
     * 到达站
     */
    private String toStation;

    /**
     * 发车时间
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
     * 硬座
     */
    private Integer hardSeatStock;

    /**
     * 一等座
     */
    private Integer firstSeatStock;

    /**
     * 二等座
     */
    private Integer secondSeatStock;

    /**
     * 特等座
     */
    private Integer specialSeatStock;

    /**
     * 硬卧
     */
    private Integer hardSleeperStock;

    /**
     * 软卧
     */
    private Integer softSleeperStock;

}
