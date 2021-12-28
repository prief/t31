package com.kaikeba.t31.order.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 车票订单对象实体
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class TrainOrder extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * skuId
     */
    private Integer skuId;
    /**
     * 购票日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date trainDate;

    /**
     * 乘车人
     */
    private Long passengerId;

    /**
     * 车次
     */
    private String trainNumber;

    /**
     * 出发站编号
     */
    private Long startStationNo;

    /**
     * 出发站名称
     */
    private String startStationName;

    /**
     * 终点站编号
     */
    private Long endStationNo;

    /**
     * 终点站名称
     */
    private String endStationName;

    /**
     * 车厢编号
     */
    private Long carriageNo;

    /**
     * 座位编号
     */
    private Long seatNo;

    /**
     * 座位名称
     */
    private String seatName;

    /**
     * 座位类型
     */
    private String seatType;

    /**
     * 订单金额
     */
    private BigDecimal money;

    /**
     * 订单状态
     */
    private Long status;

    /**
     * 出发时间
     */
    private String startTime;

    /**
     * 备注
     */
    private String comment;

    /**
     * 登录用户名-搜索条件
     */
    @TableField(exist = false)
    private String userName;

    /**
     * 乘车姓名（用于页面显示）
     */
    @TableField(exist = false)
    private String passengerName;


}
