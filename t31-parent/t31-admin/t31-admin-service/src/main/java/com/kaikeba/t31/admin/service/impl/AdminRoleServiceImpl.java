package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.mapper.AdminRoleMapper;
import com.kaikeba.t31.admin.service.AdminRoleService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 角色Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminRoleServiceImpl extends ServiceImpl<AdminRoleMapper, AdminRole> implements AdminRoleService {


    /**
     * 查询角色
     *
     * @param id 角色主键
     * @return 角色
     */
    @Override
    public AdminRole selectAdminRoleById(Long id) {
        return baseMapper.selectAdminRoleById(id);
    }

    /**
     * 查询角色列表
     *
     * @param adminRole 角色
     * @return 角色
     */
    @Override
    public List<AdminRole> selectAdminRoleList(AdminRole adminRole) {
        return baseMapper.selectAdminRoleList(adminRole);
    }

    /**
     * 新增角色
     *
     * @param adminRole 角色
     * @return 结果
     */
    @Override
    public int insertAdminRole(AdminRole adminRole) {
        adminRole.setCreateTime(new Date());
        return baseMapper.insertAdminRole(adminRole);
    }

    /**
     * 修改角色
     *
     * @param adminRole 角色
     * @return 结果
     */
    @Override
    public int updateAdminRole(AdminRole adminRole) {
        adminRole.setUpdateTime(new Date());
        return baseMapper.updateAdminRole(adminRole);
    }

    /**
     * 批量删除角色
     *
     * @param ids 需要删除的角色主键
     * @return 结果
     */
    @Override
    public int deleteAdminRoleByIds(List<Long> ids) {
        return baseMapper.deleteAdminRoleByIds(ids);
    }

    /**
     * 删除角色信息
     *
     * @param id 角色主键
     * @return 结果
     */
    @Override
    public int deleteAdminRoleById(Long id) {
        return baseMapper.deleteAdminRoleById(id);
    }

    @Override
    public Page<AdminRole> pageList(AdminRole adminRole) {
        return this.page(new Page<>(adminRole.getPageNum(),adminRole.getPageSize()));
    }

    /**
     * 根据用户id获取角色列表
     *
     * @param id 用户id
     * @return 角色列表
     */
    @Override
    public List<AdminRole> getRolesByUserId(Long id) {
        return baseMapper.getRolesByUserId(id);
    }

}
