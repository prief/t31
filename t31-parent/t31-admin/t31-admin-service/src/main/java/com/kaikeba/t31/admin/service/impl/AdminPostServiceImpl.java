package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminPost;
import com.kaikeba.t31.admin.mapper.AdminPostMapper;
import com.kaikeba.t31.admin.service.AdminPostService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 岗位Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminPostServiceImpl extends ServiceImpl<AdminPostMapper, AdminPost> implements AdminPostService {


    /**
     * 查询岗位
     *
     * @param id 岗位主键
     * @return 岗位
     */
    @Override
    public AdminPost selectAdminPostById(Long id) {
        return this.selectAdminPostById(id);
    }

    /**
     * 查询岗位列表
     *
     * @param adminPost 岗位
     * @return 岗位
     */
    @Override
    public List<AdminPost> selectAdminPostList(AdminPost adminPost) {
        return this.selectAdminPostList(adminPost);
    }

    /**
     * 新增岗位
     *
     * @param adminPost 岗位
     * @return 结果
     */
    @Override
    public int insertAdminPost(AdminPost adminPost) {
        adminPost.setCreateTime(new Date());
        return this.insertAdminPost(adminPost);
    }

    /**
     * 修改岗位
     *
     * @param adminPost 岗位
     * @return 结果
     */
    @Override
    public int updateAdminPost(AdminPost adminPost) {
        adminPost.setUpdateTime(new Date());
        return this.updateAdminPost(adminPost);
    }

    /**
     * 批量删除岗位
     *
     * @param ids 需要删除的岗位主键
     * @return 结果
     */
    @Override
    public int deleteAdminPostByIds(List<Long> ids) {
        return this.deleteAdminPostByIds(ids);
    }

    /**
     * 删除岗位信息
     *
     * @param id 岗位主键
     * @return 结果
     */
    @Override
    public int deleteAdminPostById(Long id) {
        return this.deleteAdminPostById(id);
    }
}
