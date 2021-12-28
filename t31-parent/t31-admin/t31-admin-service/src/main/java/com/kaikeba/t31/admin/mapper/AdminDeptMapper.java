package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.AdminDept;

import java.util.List;

/**
 * 部门Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminDeptMapper extends BaseMapper<AdminDept> {
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
     * 删除部门
     *
     * @param id 部门主键
     * @return 结果
     */
    int deleteAdminDeptById(Long id);

    /**
     * 批量删除部门
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteAdminDeptByIds(List<Long> ids);
}
