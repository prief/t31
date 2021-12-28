package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.AdminRoleMenu;

import java.util.List;

/**
 * 菜单角色Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminRoleMenuMapper extends BaseMapper<AdminRoleMenu> {
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
     * 删除菜单角色
     *
     * @param roleId 菜单角色主键
     * @return 结果
     */
    int deleteAdminRoleMenuByRoleId(Long roleId);

    /**
     * 批量删除菜单角色
     *
     * @param roleIds 需要删除的数据主键集合
     * @return 结果
     */
    int deleteAdminRoleMenuByRoleIds(Long[] roleIds);
}
