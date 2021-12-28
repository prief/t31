package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.AdminRole;

import java.util.List;

/**
 * 角色Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminRoleService extends IService<AdminRole> {
    /**
     * 查询角色
     *
     * @param id 角色主键
     * @return 角色
     */
    AdminRole selectAdminRoleById(Long id);

    /**
     * 查询角色列表
     *
     * @param adminRole 角色
     * @return 角色集合
     */
    List<AdminRole> selectAdminRoleList(AdminRole adminRole);

    /**
     * 新增角色
     *
     * @param adminRole 角色
     * @return 结果
     */
    int insertAdminRole(AdminRole adminRole);

    /**
     * 修改角色
     *
     * @param adminRole 角色
     * @return 结果
     */
    int updateAdminRole(AdminRole adminRole);

    /**
     * 批量删除角色
     *
     * @param ids 需要删除的角色主键集合
     * @return 结果
     */
    int deleteAdminRoleByIds(List<Long> ids);

    /**
     * 删除角色信息
     *
     * @param id 角色主键
     * @return 结果
     */
    int deleteAdminRoleById(Long id);

    /**
     * 角色分页列表
     *
     * @param adminRole
     * @return
     */
    Page<AdminRole> pageList(AdminRole adminRole);

    /**
     * 根据用户id获取角色列表
     *
     * @param id 用户id
     * @return 角色列表
     */
    List<AdminRole> getRolesByUserId(Long id);

}
