package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.AdminDept;
import com.kaikeba.t31.admin.service.AdminDeptService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 部门控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/dept")
public class AdminDeptController {

    @Resource
    private AdminDeptService adminDeptService;

    /**
     * 查询部门列表
     *
     * @param adminDept 部门
     * @return 部门列表
     */
    @PostMapping("/list")
    public Result list(@RequestBody AdminDept adminDept) {
        return Result.success(adminDeptService.selectAdminDeptList(adminDept));
    }


    /**
     * 查询部门明细
     *
     * @param id 部门主键
     * @return 部门明细
     */
    @PostMapping(value = "/{id}")
    public Result getInfo(@PathVariable("id") Long id) {
        return Result.success(adminDeptService.selectAdminDeptById(id));
    }

    /**
     * 加载部门信息
     *
     * @param id 部门id
     * @return 部门明细
     */
    @GetMapping("/info/{id}")
    public AdminDept info(@PathVariable Long id) {
        return adminDeptService.getById(id);
    }

    /**
     * 新增部门
     *
     * @param adminDept 部门入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminDept adminDept) {
        return Result.success(adminDeptService.saveOrUpdate(adminDept));
    }

    /**
     * 删除部门
     *
     * @param id 当前主键
     * @return 删除成功数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(adminDeptService.deleteAdminDeptById(id));
    }


    /**
     * 批量删除部门
     *
     * @param ids 部门Ids
     * @return 删除成功数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(adminDeptService.deleteAdminDeptByIds(ids));
    }
}
