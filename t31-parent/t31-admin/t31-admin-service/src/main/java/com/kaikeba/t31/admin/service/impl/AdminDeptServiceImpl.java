package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminDept;
import com.kaikeba.t31.admin.mapper.AdminDeptMapper;
import com.kaikeba.t31.admin.service.AdminDeptService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 部门Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminDeptServiceImpl extends ServiceImpl<AdminDeptMapper, AdminDept> implements AdminDeptService {

    /**
     * 查询部门
     *
     * @param id 部门主键
     * @return 部门
     */
    @Override
    public AdminDept selectAdminDeptById(Long id) {
        return baseMapper.selectAdminDeptById(id);
    }

    /**
     * 查询部门列表
     *
     * @param adminDept 部门
     * @return 部门
     */
    @Override
    public List<AdminDept> selectAdminDeptList(AdminDept adminDept) {
        List<AdminDept> adminDeptList = baseMapper.selectAdminDeptList(adminDept);
        adminDeptList.forEach(dept -> {
            dept.setDeptName(dept.getTitle());
            dept.setDeptId(dept.getId());
        });
        return adminDeptList;
    }

    /**
     * 新增部门
     *
     * @param adminDept 部门
     * @return 结果
     */
    @Override
    public int insertAdminDept(AdminDept adminDept) {
        adminDept.setCreateTime(new Date());
        return baseMapper.insertAdminDept(adminDept);
    }

    /**
     * 修改部门
     *
     * @param adminDept 部门
     * @return 结果
     */
    @Override
    public int updateAdminDept(AdminDept adminDept) {
        adminDept.setUpdateTime(new Date());
        return baseMapper.updateAdminDept(adminDept);
    }

    /**
     * 批量删除部门
     *
     * @param ids 需要删除的部门主键
     * @return 结果
     */
    @Override
    public int deleteAdminDeptByIds(List<Long> ids) {
        return baseMapper.deleteBatchIds(ids);
    }

    /**
     * 删除部门信息
     *
     * @param id 部门主键
     * @return 结果
     */
    @Override
    public int deleteAdminDeptById(Long id) {
        return baseMapper.deleteAdminDeptById(id);
    }
}
