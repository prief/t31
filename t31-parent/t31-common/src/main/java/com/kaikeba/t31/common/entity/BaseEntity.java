package com.kaikeba.t31.common.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体类基类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class BaseEntity implements Serializable {

    /**
     * 实体编号（唯一标识）
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    @TableField(exist = false)
    private Integer pageNum = 1;

    @TableField(exist = false)
    private Integer pageSize = 10;
}
