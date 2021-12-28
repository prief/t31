package com.kaikeba.t31.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

/**
 * 用户对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class AdminUser extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 生日
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    /**
     * 描述
     */
    private String comment;

    /**
     * 电子邮件
     */
    private String email;

    /**
     * 是否锁定
     */
    @TableField(value = "`lock`")
    private Boolean lock;

    /**
     * 密码
     */
    private String password;

    /**
     * 是否为部门负责人，用于"常用语:直接上级"
     */
    private Boolean principal;

    /**
     * 真实名称
     */
    private String realName;

    /**
     * 加密密码的盐
     */
    private String salt;

    /**
     * 性别
     */
    private String sex;

    /**
     * 电话
     */
    private String tel;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 部门ID
     */
    private Long deptId;

    /**
     * 岗位
     */
    private Long postId;

    /**
     * 部门名称，用于列表显示
     */
    @TableField(exist = false)
    private String deptName;

    /**
     * 瞬时属性，用户的角色列表，如：[1,3,4,5]
     */
    @TableField(exist = false)
    private Long[] roleIds;

    /**
     * 部门名称，用于列表显示
     */
    @TableField(exist = false)
    private String postName;


}
