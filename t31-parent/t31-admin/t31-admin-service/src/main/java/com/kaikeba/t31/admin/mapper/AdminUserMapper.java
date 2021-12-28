package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kaikeba.t31.admin.entity.AdminUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminUserMapper extends BaseMapper<AdminUser> {
    /**
     * 查询用户
     *
     * @param id 用户主键
     * @return 用户
     */
    AdminUser selectAdminUserById(Long id);

    /**
     * 查询用户列表
     *
     * @param adminUser 用户
     * @return 用户集合
     */
    List<AdminUser> selectAdminUserList(AdminUser adminUser);

    /**
     * 新增用户
     *
     * @param adminUser 用户
     * @return 结果
     */
    int insertAdminUser(AdminUser adminUser);

    /**
     * 修改用户
     *
     * @param adminUser 用户
     * @return 结果
     */
    int updateAdminUser(AdminUser adminUser);

    /**
     * 删除用户
     *
     * @param id 用户主键
     * @return 结果
     */
    int deleteAdminUserById(Long id);

    /**
     * 批量删除用户
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteAdminUserByIds(List<Long> ids);

    /**
     * 查询用户分页列表
     *
     * @param page      分页参数
     * @param adminUser 用户查询实体
     * @return 用户分页列表
     */
    Page<AdminUser> pageList(Page<AdminUser> page, @Param("adminUser") AdminUser adminUser);

    /**
     * 根据用户id删除角色信息
     *
     * @param id
     */
    void deleteRoleByUser(Long id);
}
