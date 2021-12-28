package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.AdminDept;

import java.util.List;

/**
 * 部门Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminDeptService extends IService<AdminDept> {
    /**
     * 查询部门
     *
     * @param id 部门主键
     * @return 部门
     */
    AdminDept selectAdminDeptById(Long id);

    /**
     * 查询部门列表
     *
     * @param adminDept 部门
     * @return 部门集合
     */
    List<AdminDept> selectAdminDeptList(AdminDept adminDept);

    /**
     * 新增部门
     *
     * @param adminDept 部门
     * @return 结果
     */
    int insertAdminDept(AdminDept adminDept);

    /**
     * 修改部门
     *
     * @param adminDept 部门
     * @return 结果
     */
    int updateAdminDept(AdminDept adminDept);

    /**
     * 批量删除部门
     *
     * @param ids 需要删除的部门主键集合
     * @return 结果
     */
    int deleteAdminDeptByIds(List<Long> ids);

    /**
     * 删除部门信息
     *
     * @param id 部门主键
     * @return 结果
     */
    int deleteAdminDeptById(Long id);
}
