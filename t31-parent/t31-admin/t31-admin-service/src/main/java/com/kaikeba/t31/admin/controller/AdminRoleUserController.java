package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.AdminRoleUser;
import com.kaikeba.t31.admin.service.AdminRoleUserService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户角色控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/role/user")
public class AdminRoleUserController {

    @Resource
    private AdminRoleUserService adminRoleUserService;

    /**
     * 查询用户角色列表
     *
     * @param adminRoleUser 入参
     * @return 角色列表
     */
    @PostMapping("/list")
    public Result list(@RequestBody AdminRoleUser adminRoleUser) {
        List<AdminRoleUser> list = adminRoleUserService.selectAdminRoleUserList(adminRoleUser);
        return Result.success(list);
    }

    /**
     * 获取用户角色详细信息
     *
     * @param roleId 角色Id
     * @return {@link AdminRoleUser}
     */
    @GetMapping(value = "/{roleId}")
    public Result getInfo(@PathVariable("roleId") Long roleId) {
        return Result.success(adminRoleUserService.selectAdminRoleUserByRoleId(roleId));
    }

    /**
     * 新增用户角色
     *
     * @param adminRoleUser 入参
     * @return 新增数
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminRoleUser adminRoleUser) {
        return Result.success(adminRoleUserService.insertAdminRoleUser(adminRoleUser));
    }

    /**
     * 修改用户角色
     *
     * @param adminRoleUser 入参
     * @return 更新数
     */
    @PutMapping
    public Result info(@RequestBody AdminRoleUser adminRoleUser) {
        return Result.success(adminRoleUserService.updateAdminRoleUser(adminRoleUser));
    }

    /**
     * 删除用户角色
     *
     * @param roleIds 角色Ids
     * @return 删除数
     */
    @DeleteMapping("/{roleIds}")
    public Result remove(@PathVariable Long[] roleIds) {
        return Result.success(adminRoleUserService.deleteAdminRoleUserByRoleIds(roleIds));
    }
}
