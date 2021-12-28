package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.AdminPost;

import java.util.List;

/**
 * 岗位Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminPostMapper extends BaseMapper<AdminPost> {
    /**
     * 查询岗位
     *
     * @param id 岗位主键
     * @return 岗位
     */
    AdminPost selectAdminPostById(Long id);

    /**
     * 查询岗位列表
     *
     * @param adminPost 岗位
     * @return 岗位集合
     */
    List<AdminPost> selectAdminPostList(AdminPost adminPost);

    /**
     * 新增岗位
     *
     * @param adminPost 岗位
     * @return 结果
     */
    int insertAdminPost(AdminPost adminPost);

    /**
     * 修改岗位
     *
     * @param adminPost 岗位
     * @return 结果
     */
    int updateAdminPost(AdminPost adminPost);

    /**
     * 删除岗位
     *
     * @param id 岗位主键
     * @return 结果
     */
    int deleteAdminPostById(Long id);

    /**
     * 批量删除岗位
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteAdminPostByIds(List<Long> ids);
}
