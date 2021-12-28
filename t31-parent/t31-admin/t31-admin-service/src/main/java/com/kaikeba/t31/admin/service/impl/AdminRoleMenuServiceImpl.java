package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminRoleMenu;
import com.kaikeba.t31.admin.mapper.AdminRoleMenuMapper;
import com.kaikeba.t31.admin.service.AdminRoleMenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 菜单角色Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminRoleMenuServiceImpl extends ServiceImpl<AdminRoleMenuMapper, AdminRoleMenu> implements AdminRoleMenuService {

    /**
     * 查询菜单角色
     *
     * @param roleId 菜单角色主键
     * @return 菜单角色
     */
    @Override
    public AdminRoleMenu selectAdminRoleMenuByRoleId(Long roleId) {
        return baseMapper.selectAdminRoleMenuByRoleId(roleId);
    }

    /**
     * 查询菜单角色列表
     *
     * @param adminRoleMenu 菜单角色
     * @return 菜单角色
     */
    @Override
    public List<AdminRoleMenu> selectAdminRoleMenuList(AdminRoleMenu adminRoleMenu) {
        return baseMapper.selectAdminRoleMenuList(adminRoleMenu);
    }

    /**
     * 新增菜单角色
     *
     * @param adminRoleMenu 菜单角色
     * @return 结果
     */
    @Override
    public int insertAdminRoleMenu(AdminRoleMenu adminRoleMenu) {
        return baseMapper.insertAdminRoleMenu(adminRoleMenu);
    }

    /**
     * 修改菜单角色
     *
     * @param adminRoleMenu 菜单角色
     * @return 结果
     */
    @Override
    public int updateAdminRoleMenu(AdminRoleMenu adminRoleMenu) {
        return baseMapper.updateAdminRoleMenu(adminRoleMenu);
    }

    /**
     * 批量删除菜单角色
     *
     * @param roleIds 需要删除的菜单角色主键
     * @return 结果
     */
    @Override
    public int deleteAdminRoleMenuByRoleIds(Long[] roleIds) {
        return baseMapper.deleteAdminRoleMenuByRoleIds(roleIds);
    }

    /**
     * 删除菜单角色信息
     *
     * @param roleId 菜单角色主键
     * @return 结果
     */
    @Override
    public int deleteAdminRoleMenuByRoleId(Long roleId) {
        return baseMapper.deleteAdminRoleMenuByRoleId(roleId);
    }
}
