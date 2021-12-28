package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.AdminRoleUser;

import java.util.List;

/**
 * 用户角色Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminRoleUserService extends IService<AdminRoleUser> {
    /**
     * 查询用户角色
     *
     * @param roleId 用户角色主键
     * @return 用户角色
     */
    AdminRoleUser selectAdminRoleUserByRoleId(Long roleId);

    /**
     * 查询用户角色列表
     *
     * @param adminRoleUser 用户角色
     * @return 用户角色集合
     */
    List<AdminRoleUser> selectAdminRoleUserList(AdminRoleUser adminRoleUser);

    /**
     * 新增用户角色
     *
     * @param adminRoleUser 用户角色
     * @return 结果
     */
    int insertAdminRoleUser(AdminRoleUser adminRoleUser);

    /**
     * 修改用户角色
     *
     * @param adminRoleUser 用户角色
     * @return 结果
     */
    int updateAdminRoleUser(AdminRoleUser adminRoleUser);

    /**
     * 批量删除用户角色
     *
     * @param roleIds 需要删除的用户角色主键集合
     * @return 结果
     */
    int deleteAdminRoleUserByRoleIds(Long[] roleIds);

    /**
     * 删除用户角色信息
     *
     * @param roleId 用户角色主键
     * @return 结果
     */
    int deleteAdminRoleUserByRoleId(Long roleId);
}
