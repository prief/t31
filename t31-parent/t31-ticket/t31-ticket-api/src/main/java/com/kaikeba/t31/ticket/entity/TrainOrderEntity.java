package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 车次订单实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@TableName("train_order")
public class TrainOrderEntity extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 发车日期
     */
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date trainDate;

    /**
     * 乘车人外键
     */
    private Long passengerId;

    /**
     * 车次
     */
    private String trainNumber;

    /**
     * 出发站编号
     */
    private Integer startStationNo;

    /**
     * 出发站名称
     */
    private String startStationName;

    /**
     * 到达站编号
     */
    private Integer endStationNo;

    /**
     * 到达站名称
     */
    private String endStationName;

    /**
     * 车厢
     */
    private Integer carriageNo;

    /**
     * 座位编号
     */
    private Integer seatNo;

    /**
     * 座位名称
     */
    private String seatName;

    /**
     * 座位类型：硬座，一等座，二等座，特等座，硬卧，软卧
     */
    private String seatType;

    /**
     * 订单金额
     */
    private Double money;

    /**
     * 下单时间
     */
    private Date createTime;

    /**
     * 出发时间
     */
    private Date startTime;

    /**
     * 订单状态
     */
    private Integer status;

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