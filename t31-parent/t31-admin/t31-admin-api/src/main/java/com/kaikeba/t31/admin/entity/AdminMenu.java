package com.kaikeba.t31.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 菜单对象实体
 *
 * @author  zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class AdminMenu extends BaseTreeEntity {

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
     * 路径
     */
    private String path;

    /**
     * 名称
     */
    private String name;

    /**
     * 组件
     */
    private String component;

    /**
     * 设为true后在左侧菜单不会显示该页面选项
     */
    private Boolean hideInMenu;

    /**
     * 设为true后页面不会缓存
     */
    private Boolean notCache;

    /**
     * 该页面在左侧菜单、面包屑和标签导航处显示的图标，如果是自定义图标，需要在图标名称前加下划线'_'
     */
    private String icon;

    /**
     * 是否展开节点
     */
    private Boolean isExpand;

    /**
     * 角色选择菜单，选中角色已有的菜单
     */
    @TableField(exist = false)
    private boolean selected = false;

    /**
     * 角色选择菜单，选中角色已有的菜单
     */
    @TableField(exist = false)
    private boolean checked = false;

}
