package com.kaikeba.t31.ticket.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 经停站实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@TableName("train_station")
public class StationEntity extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 车次外键
     */
    private Long numberId;

    /**
     * 到达类型
     */
    private String arriveType;

    /**
     * 到达时间
     */
    private String arriveTime;

    /**
     * 开车时间
     */
    private String startTime;

    /**
     * 运行时长
     */
    private String duration;

    /**
     * 车站编号
     */
    private Integer no;

    /**
     * 经停站名称
     */
    private String name;

    /**
     * 描述
     */
    private String desc;

}
