package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.AdminRoleMenu;

import java.util.List;

/**
 * 菜单角色Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminRoleMenuService extends IService<AdminRoleMenu> {

    /**
     * 查询菜单角色
     *
     * @param roleId 菜单角色主键
     * @return 菜单角色
     */
    AdminRoleMenu selectAdminRoleMenuByRoleId(Long roleId);

    /**
     * 查询菜单角色列表
     *
     * @param adminRoleMenu 菜单角色
     * @return 菜单角色集合
     */
    List<AdminRoleMenu> selectAdminRoleMenuList(AdminRoleMenu adminRoleMenu);

    /**
     * 新增菜单角色
     *
     * @param adminRoleMenu 菜单角色
     * @return 结果
     */
    int insertAdminRoleMenu(AdminRoleMenu adminRoleMenu);

    /**
     * 修改菜单角色
     *
     * @param adminRoleMenu 菜单角色
     * @return 结果
     */
    int updateAdminRoleMenu(AdminRoleMenu adminRoleMenu);

    /**
     * 批量删除菜单角色
     *
     * @param roleIds 需要删除的菜单角色主键集合
     * @return 结果
     */
    int deleteAdminRoleMenuByRoleIds(Long[] roleIds);

    /**
     * 删除菜单角色信息
     *
     * @param roleId 菜单角色主键
     * @return 结果
     */
    int deleteAdminRoleMenuByRoleId(Long roleId);
}
