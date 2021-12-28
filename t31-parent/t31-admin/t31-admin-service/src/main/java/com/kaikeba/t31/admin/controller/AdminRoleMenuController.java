package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.AdminRoleMenu;
import com.kaikeba.t31.admin.service.AdminRoleMenuService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 菜单角色控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/roleMenu")
public class AdminRoleMenuController {

    @Resource
    private AdminRoleMenuService adminRoleMenuService;

    /**
     * 查询菜单角色列表
     *
     * @param adminRoleMenu 入参
     * @return 角色列表
     */
    @PostMapping("/list")
    public Result list(@RequestBody AdminRoleMenu adminRoleMenu) {
        List<AdminRoleMenu> list = adminRoleMenuService.selectAdminRoleMenuList(adminRoleMenu);
        return Result.success(list);
    }

    /**
     * 获取菜单角色详细信息
     *
     * @param roleId 角色Id
     * @return {@link AdminRoleMenu}
     */
    @GetMapping(value = "/{roleId}")
    public Result getInfo(@PathVariable("roleId") Long roleId) {
        return Result.success(adminRoleMenuService.selectAdminRoleMenuByRoleId(roleId));
    }

    /**
     * 新增菜单角色
     *
     * @param adminRoleMenu 入参
     * @return 保存成功数
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminRoleMenu adminRoleMenu) {
        return Result.success(adminRoleMenuService.insertAdminRoleMenu(adminRoleMenu));
    }

    /**
     * 修改菜单角色
     *
     * @param adminRoleMenu 入参
     * @return 更新数
     */
    @PutMapping
    public Result info(@RequestBody AdminRoleMenu adminRoleMenu) {
        return Result.success(adminRoleMenuService.updateAdminRoleMenu(adminRoleMenu));
    }

    /**
     * 删除菜单角色
     *
     * @param roleIds 角色ids
     * @return 删除数
     */
    @DeleteMapping("/{roleIds}")
    public Result remove(@PathVariable Long[] roleIds) {
        return Result.success(adminRoleMenuService.deleteAdminRoleMenuByRoleIds(roleIds));
    }
}
