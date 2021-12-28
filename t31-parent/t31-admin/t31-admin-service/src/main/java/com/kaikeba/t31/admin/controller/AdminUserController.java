package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.AdminMenu;
import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.entity.AdminUser;
import com.kaikeba.t31.admin.service.AdminUserService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/user")
public class AdminUserController {

    @Resource
    private AdminUserService adminUserService;

    /**
     * 查询用户分页列表
     *
     * @param adminUser 用户查询实体
     * @return 用户分页列表
     */
    @PostMapping("/list-page")
    public Result pageList(@RequestBody AdminUser adminUser) {
        return Result.success(adminUserService.pageList(adminUser));
    }

    /**
     * 查询用户列表
     *
     * @return 角色列表
     */
    @PostMapping("/list")
    public List<AdminUser> list() {
        return adminUserService.list();
    }

    /**
     * 根据用户id获取角色列表
     *
     * @param id 用户id
     * @return 角色列表
     */
    @GetMapping("/select-roles/{id}")
    public List<AdminRole> getRolesByUserId(@PathVariable("id") Long id) {
        return adminUserService.getRolesByUserId(id);
    }

    /**
     * 根据用户名称获取详细用户信息
     *
     * @param userName 用户名称
     * @return 用户详细信息
     */
    @GetMapping("/get/{userName}")
    public AdminUser getByUserName(@PathVariable("userName") String userName) {
        return adminUserService.getAdminUserByUserName(userName);
    }

    /**
     * 获取当前用户的菜单
     *
     * @param authentication 当前用户
     * @return 菜单集合
     */
    @GetMapping("/select-user-menu")
    public List<AdminMenu> selectMenuByLoginUser(Authentication authentication) {
        return adminUserService.selectMenuByLoginUser(authentication.getName());
    }

    /**
     * 获取当前用户信息
     *
     * @param authentication
     * @return {@link AdminUser}
     */
    @GetMapping("/self")
    public AdminUser userInfo(Authentication authentication) {
        return adminUserService.getAdminUserByUserName(authentication.getName());
    }

    /**
     * 加载修改的用户信息
     *
     * @param id 用户id
     * @return {@link AdminUser}
     */
    @GetMapping("/info/{id}")
    public AdminUser info(@PathVariable Long id) {
        return adminUserService.getInfoByUid(id);
    }

    /**
     * 删除用户
     *
     * @param id 主键
     * @return 删除数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(adminUserService.deleteAdminUserById(id));
    }

    /**
     * 批量删除用户
     *
     * @param ids ids
     * @return 删除数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(adminUserService.deleteAdminUserByIds(ids));
    }

    /**
     * 验证用户名是否存在
     *
     * @param userName       用户名
     * @param authentication 当前用户
     * @return 是否存在
     */
    @GetMapping("/validate-name/{userName}")
    public Boolean validUserName(@PathVariable("userName") String userName, Authentication authentication) {
        return adminUserService.validUserName(userName, authentication);
    }

    /**
     * 新增用户
     *
     * @param adminUser 主键
     * @return 新增数
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminUser adminUser) {
        adminUserService.insertAdminUser(adminUser);
        return Result.success();
    }

    /**
     * 锁定用户
     *
     * @param id 用户id
     */
    @GetMapping("/lock/{id}")
    public Result lock(@PathVariable Long id) {
        return adminUserService.lock(id);
    }
}
