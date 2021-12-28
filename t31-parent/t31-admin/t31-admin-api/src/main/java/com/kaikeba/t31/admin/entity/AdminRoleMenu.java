package com.kaikeba.t31.admin.entity;

import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 菜单角色对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class AdminRoleMenu extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 角色ID
     */
    private Long roleId;

    /**
     * 菜单ID
     */
    private Long menuId;


}
