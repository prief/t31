package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminMenu;
import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.entity.AdminRoleUser;
import com.kaikeba.t31.admin.entity.AdminUser;
import com.kaikeba.t31.admin.mapper.AdminUserMapper;
import com.kaikeba.t31.admin.service.AdminMenuService;
import com.kaikeba.t31.admin.service.AdminRoleService;
import com.kaikeba.t31.admin.service.AdminRoleUserService;
import com.kaikeba.t31.admin.service.AdminUserService;
import com.kaikeba.t31.common.response.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * 用户Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Slf4j
@Service
public class AdminUserServiceImpl extends ServiceImpl<AdminUserMapper, AdminUser> implements AdminUserService {

    @Resource
    private AdminRoleService adminRoleService;

    @Resource
    private AdminMenuService adminMenuService;

    @Resource
    private PasswordEncoder passwordEncoder;

    @Resource
    private AdminRoleUserService adminRoleUserService;


    /**
     * 查询用户
     *
     * @param id 用户主键
     * @return 用户
     */
    @Override
    public AdminUser selectAdminUserById(Long id) {
        return baseMapper.selectAdminUserById(id);
    }

    /**
     * 查询用户列表
     *
     * @param adminUser 用户
     * @return 用户
     */
    @Override
    public List<AdminUser> selectAdminUserList(AdminUser adminUser) {
        return baseMapper.selectAdminUserList(adminUser);
    }

    /**
     * 新增用户
     *
     * @param adminUser 用户
     * @return 结果
     */
    @Override
    public void insertAdminUser(AdminUser adminUser) {
        // 添加时，设置lock=false
        if (null == adminUser.getId()) {
            adminUser.setLock(false);
        }
        adminUser.setPassword(passwordEncoder.encode(adminUser.getPassword()));
        adminUser.setCreateTime(new Date());
        this.saveOrUpdate(adminUser);
        // 根据用户id删除角色信息
        baseMapper.deleteRoleByUser(adminUser.getId());
        Long[] roleIds = adminUser.getRoleIds();
        if (null != roleIds) {
            List<AdminRoleUser> adminRoleUsers = new ArrayList<>(roleIds.length);
            for (Long roleId : roleIds) {
                AdminRoleUser adminRoleUser = new AdminRoleUser();
                adminRoleUser.setUserId(adminUser.getId());
                adminRoleUser.setRoleId(roleId);
                adminRoleUsers.add(adminRoleUser);
            }
            // 批量保存用户角色信息
            adminRoleUserService.saveBatch(adminRoleUsers);
        }
    }

    /**
     * 修改用户
     *
     * @param adminUser 用户
     * @return 结果
     */
    @Override
    public int updateAdminUser(AdminUser adminUser) {
        adminUser.setUpdateTime(new Date());
        return baseMapper.updateAdminUser(adminUser);
    }

    /**
     * 批量删除用户
     *
     * @param ids 需要删除的用户主键
     * @return 结果
     */
    @Override
    public int deleteAdminUserByIds(List<Long> ids) {
        return baseMapper.deleteBatchIds(ids);
    }

    /**
     * 删除用户信息
     *
     * @param id 用户主键
     * @return 结果
     */
    @Override
    public int deleteAdminUserById(Long id) {
        return baseMapper.deleteAdminUserById(id);
    }

    /**
     * 根据用户id获取角色列表
     *
     * @param id 用户id
     * @return 角色列表
     */
    @Override
    public List<AdminRole> getRolesByUserId(Long id) {
        return adminRoleService.getRolesByUserId(id);
    }

    /**
     * 根据用户名称获取详细用户信息
     *
     * @param userName 用户名称
     * @return 用户详细信息
     */
    @Override
    public AdminUser getAdminUserByUserName(String userName) {
        return this.getOne(new LambdaQueryWrapper<AdminUser>().eq(AdminUser::getUserName, userName));
    }

    /**
     * 根据用户名称查询菜单
     *
     * @param userName 用户名称
     * @return 菜单集合
     */
    @Override
    public List<AdminMenu> selectMenuByLoginUser(String userName) {
        AdminUser user = this.getAdminUserByUserName(userName);
        List<AdminMenu> menus = adminMenuService.selectMenuByUserId(user.getId());
        // 部分子节点选中时，父节点不选中，找到后返回
        Set<AdminMenu> result = new HashSet<>();
        menus.forEach((item) -> {
            if (item.getParentId() != null && menus.stream().noneMatch((it) -> item.getParentId().equals(it.getId()))) {
                AdminMenu menu = adminMenuService.getById(item.getParentId());
                result.add(menu);
            }
        });
        menus.addAll(result);
        return menus;
    }

    /**
     * 查询用户分页列表
     *
     * @param adminUser 用户查询实体
     * @return 用户分页列表
     */
    @Override
    public Page<AdminUser> pageList(AdminUser adminUser) {
        return baseMapper.pageList(new Page<>(adminUser.getPageNum(), adminUser.getPageSize()), adminUser);
    }

    /**
     * 验证用户名是否存在
     *
     * @param userName       用户名
     * @param authentication 当前用户
     * @return 是否存在
     */
    @Override
    public Boolean validUserName(String userName, Authentication authentication) {
        return true;
    }

    /**
     * 锁定用户
     *
     * @param id 用户id
     */
    @Override
    public Result lock(Long id) {
        Result result = new Result();
        try {
            AdminUser adminUser = this.getById(id);
            if (null != adminUser && adminUser.getLock()) {
                adminUser.setLock(false);
                result.put("msg", "用户已解锁");
            } else {
                adminUser.setLock(true);
                result.put("msg", "用户已锁定");
            }
            this.updateById(adminUser);
        } catch (Exception e) {
            log.error("锁定用户时发生异常，errMsg:{}", e.getMessage());
            return Result.error();
        }
        return result;
    }

    /**
     * 根据uid获取用户信息
     *
     * @param id 用户id
     * @return 用户信息
     */
    @Override
    public AdminUser getInfoByUid(Long id) {
        AdminUser adminUser = this.getById(id);
        // 根据用户id获取角色列表
        List<AdminRole> roles = this.getRolesByUserId(id);
        Long[] ids = new Long[roles.size()];
        for (int i = 0; i < roles.size(); i++) {
            ids[i] = roles.get(i).getId();
        }
        adminUser.setRoleIds(ids);
        return adminUser;
    }
}
