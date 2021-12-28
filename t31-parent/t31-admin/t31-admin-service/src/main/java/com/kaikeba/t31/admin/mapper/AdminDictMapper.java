package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.AdminDict;

import java.util.List;

/**
 * 字典Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminDictMapper extends BaseMapper<AdminDict> {
    /**
     * 查询字典
     *
     * @param id 字典主键
     * @return 字典
     */
    AdminDict selectAdminDictById(Long id);

    /**
     * 查询字典列表
     *
     * @param adminDict 字典
     * @return 字典集合
     */
    List<AdminDict> selectAdminDictList(AdminDict adminDict);

    /**
     * 新增字典
     *
     * @param adminDict 字典
     * @return 结果
     */
    int insertAdminDict(AdminDict adminDict);

    /**
     * 修改字典
     *
     * @param adminDict 字典
     * @return 结果
     */
    int updateAdminDict(AdminDict adminDict);

    /**
     * 删除字典
     *
     * @param id 字典主键
     * @return 结果
     */
    int deleteAdminDictById(Long id);

    /**
     * 批量删除字典
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteAdminDictByIds(List<Long> ids);
}
