package com.kaikeba.t31.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 部门对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class AdminDept extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 节点名称
     */
    private String title;

    /**
     * 排序字段
     */
    private Long sequence;

    /**
     * 父节点id
     */
    private Long parentId;

    /**
     * 地址
     */
    private String address;

    /**
     * 描述
     */
    private String comment;

    /**
     * 电话
     */
    private String tel;

    /**
     * 是否括展
     */
    private Integer isExpand;

    @TableField(exist = false)
    private String deptName;

    @TableField(exist = false)
    private Long deptId;
}
