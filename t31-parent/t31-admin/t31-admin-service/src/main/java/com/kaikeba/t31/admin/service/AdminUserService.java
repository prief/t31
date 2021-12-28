package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.AdminMenu;
import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.entity.AdminUser;
import com.kaikeba.t31.common.response.Result;
import org.springframework.security.core.Authentication;

import java.util.List;

/**
 * 用户Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminUserService extends IService<AdminUser> {

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
    void insertAdminUser(AdminUser adminUser);

    /**
     * 修改用户
     *
     * @param adminUser 用户
     * @return 结果
     */
    int updateAdminUser(AdminUser adminUser);

    /**
     * 批量删除用户
     *
     * @param ids 需要删除的用户主键集合
     * @return 结果
     */
    int deleteAdminUserByIds(List<Long> ids);

    /**
     * 删除用户信息
     *
     * @param id 用户主键
     * @return 结果
     */
    int deleteAdminUserById(Long id);

    /**
     * 根据用户id获取角色列表
     *
     * @param id 用户id
     * @return 角色列表
     */
    List<AdminRole> getRolesByUserId(Long id);

    /**
     * 根据用户名称获取详细用户信息
     *
     * @param userName 用户名称
     * @return 用户详细信息
     */
    AdminUser getAdminUserByUserName(String userName);

    /**
     * 根据用户名称查询菜单
     *
     * @param userName 用户名称
     * @return 菜单集合
     */
    List<AdminMenu> selectMenuByLoginUser(String userName);

    /**
     * 查询用户分页列表
     *
     * @param adminUser 用户查询实体
     * @return 用户分页列表
     */
    Page<AdminUser> pageList(AdminUser adminUser);

    /**
     * 验证用户名是否存在
     *
     * @param userName       用户名
     * @param authentication 当前用户
     * @return 是否存在
     */
    Boolean validUserName(String userName, Authentication authentication);

    /**
     * 锁定用户
     *
     * @param id 用户id
     */
    Result lock(Long id);

    /**
     * 根据uid获取用户信息
     *
     * @param id 用户id
     * @return 用户信息
     */
    AdminUser getInfoByUid(Long id);

}
