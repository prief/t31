package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminDict;
import com.kaikeba.t31.admin.mapper.AdminDictMapper;
import com.kaikeba.t31.admin.service.AdminDictService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 字典Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminDictServiceImpl extends ServiceImpl<AdminDictMapper, AdminDict> implements AdminDictService {

    @Resource
    private AdminDictMapper adminDictMapper;

    /**
     * 查询字典
     *
     * @param id 字典主键
     * @return 字典
     */
    @Override
    public AdminDict selectAdminDictById(Long id) {
        return adminDictMapper.selectAdminDictById(id);
    }

    /**
     * 查询字典列表
     *
     * @param adminDict 字典
     * @return 字典
     */
    @Override
    public List<AdminDict> selectAdminDictList(AdminDict adminDict) {
        return adminDictMapper.selectAdminDictList(adminDict);
    }

    /**
     * 新增字典
     *
     * @param adminDict 字典
     * @return 结果
     */
    @Override
    public int insertAdminDict(AdminDict adminDict) {
        adminDict.setCreateTime(new Date());
        return adminDictMapper.insertAdminDict(adminDict);
    }

    /**
     * 修改字典
     *
     * @param adminDict 字典
     * @return 结果
     */
    @Override
    public int updateAdminDict(AdminDict adminDict) {
        adminDict.setUpdateTime(new Date());
        return adminDictMapper.updateAdminDict(adminDict);
    }

    /**
     * 批量删除字典
     *
     * @param ids 需要删除的字典主键
     * @return 结果
     */
    @Override
    public int deleteAdminDictByIds(List<Long> ids) {
        return adminDictMapper.deleteAdminDictByIds(ids);
    }

    /**
     * 删除字典信息
     *
     * @param id 字典主键
     * @return 结果
     */
    @Override
    public int deleteAdminDictById(Long id) {
        return adminDictMapper.deleteAdminDictById(id);
    }
}
