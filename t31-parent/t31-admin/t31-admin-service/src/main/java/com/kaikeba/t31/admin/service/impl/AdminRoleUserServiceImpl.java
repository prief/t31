package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminRoleUser;
import com.kaikeba.t31.admin.mapper.AdminRoleUserMapper;
import com.kaikeba.t31.admin.service.AdminRoleUserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户角色Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminRoleUserServiceImpl extends ServiceImpl<AdminRoleUserMapper, AdminRoleUser> implements AdminRoleUserService {


    /**
     * 查询用户角色
     *
     * @param roleId 用户角色主键
     * @return 用户角色
     */
    @Override
    public AdminRoleUser selectAdminRoleUserByRoleId(Long roleId) {
        return baseMapper.selectAdminRoleUserByRoleId(roleId);
    }

    /**
     * 查询用户角色列表
     *
     * @param adminRoleUser 用户角色
     * @return 用户角色
     */
    @Override
    public List<AdminRoleUser> selectAdminRoleUserList(AdminRoleUser adminRoleUser) {
        return baseMapper.selectAdminRoleUserList(adminRoleUser);
    }

    /**
     * 新增用户角色
     *
     * @param adminRoleUser 用户角色
     * @return 结果
     */
    @Override
    public int insertAdminRoleUser(AdminRoleUser adminRoleUser) {
        return baseMapper.insertAdminRoleUser(adminRoleUser);
    }

    /**
     * 修改用户角色
     *
     * @param adminRoleUser 用户角色
     * @return 结果
     */
    @Override
    public int updateAdminRoleUser(AdminRoleUser adminRoleUser) {
        return baseMapper.updateAdminRoleUser(adminRoleUser);
    }

    /**
     * 批量删除用户角色
     *
     * @param roleIds 需要删除的用户角色主键
     * @return 结果
     */
    @Override
    public int deleteAdminRoleUserByRoleIds(Long[] roleIds) {
        return baseMapper.deleteAdminRoleUserByRoleIds(roleIds);
    }

    /**
     * 删除用户角色信息
     *
     * @param roleId 用户角色主键
     * @return 结果
     */
    @Override
    public int deleteAdminRoleUserByRoleId(Long roleId) {
        return baseMapper.deleteAdminRoleUserByRoleId(roleId);
    }
}
