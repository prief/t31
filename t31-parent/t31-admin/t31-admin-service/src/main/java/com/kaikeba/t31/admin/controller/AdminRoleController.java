package com.kaikeba.t31.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.service.AdminRoleService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 角色控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/role")
public class AdminRoleController {

    @Resource
    private AdminRoleService adminRoleService;

    /**
     * 查询角色分页列表
     *
     * @param adminRole 角色明细
     * @return 分页结果
     */
    @PostMapping("/list-page")
    public Result pageList(@RequestBody AdminRole adminRole) {
        return Result.success(adminRoleService.pageList(adminRole));
    }

    /**
     * 角色列表
     *
     * @param adminRole 角色明细
     * @return 角色列表
     */
    @PostMapping("/list")
    public List<AdminRole> list(@RequestBody AdminRole adminRole) {
        return adminRoleService.list(new LambdaQueryWrapper<>());
    }

    /**
     * 获取角色详细信息
     *
     * @param id 主键
     * @return {@link AdminRole}
     */
    @GetMapping(value = "/{id}")
    public Result getInfo(@PathVariable("id") Long id) {
        return Result.success(adminRoleService.selectAdminRoleById(id));
    }

    /**
     * 新增角色
     *
     * @param adminRole 入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminRole adminRole) {
        return Result.success(adminRoleService.saveOrUpdate(adminRole));
    }

    /**
     * 加载角色信息
     *
     * @param id 角色id
     * @return {@link AdminRole}
     */
    @GetMapping("/info/{id}")
    public AdminRole info(@PathVariable Long id) {
        return adminRoleService.getById(id);
    }

    /**
     * 删除角色
     *
     * @param id 主键
     * @return 删除数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(adminRoleService.deleteAdminRoleById(id));
    }

    /**
     * 批量删除角色
     *
     * @param ids 主键
     * @return 删除数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(adminRoleService.deleteAdminRoleByIds(ids));
    }

}
