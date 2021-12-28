package com.kaikeba.t31.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kaikeba.t31.admin.entity.AdminDict;
import com.kaikeba.t31.admin.service.AdminDictService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 字典控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/dict")
public class AdminDictController {

    @Resource
    private AdminDictService adminDictService;

    /**
     * 查询字典分页列表
     *
     * @param adminDict 字典对象入参
     * @return 分页结果集
     */
    @PostMapping("/list-page")
    public Result pageList(@RequestBody AdminDict adminDict) {
        return Result.success(adminDictService.page(new Page<>(adminDict.getPageNum(), adminDict.getPageSize())));
    }

    /**
     * 查询字典列表
     *
     * @param adminDict 字典入参
     * @return 字典列表
     */
    @PostMapping("/list")
    public List<AdminDict> list(@RequestBody AdminDict adminDict) {
        return adminDictService.list(new LambdaQueryWrapper<>());
    }

    /**
     * 获取字典详细信息
     *
     * @param id 当前选中主键
     * @return {@link AdminDict}AdminDict
     */
    @GetMapping(value = "/{id}")
    public Result getInfo(@PathVariable("id") Long id) {
        return Result.success(adminDictService.selectAdminDictById(id));
    }

    /**
     * 新增字典
     *
     * @param adminDict 字典入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminDict adminDict) {
        return Result.success(adminDictService.saveOrUpdate(adminDict));
    }

    /**
     * 加载修改的字典信息
     *
     * @param id 字典id
     * @return
     */
    @GetMapping("/info/{id}")
    public AdminDict info(@PathVariable Long id) {
        return adminDictService.getById(id);
    }

    /**
     * 删除字典
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(adminDictService.deleteAdminDictById(id));
    }


    /**
     * 批量删除字典
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(adminDictService.deleteAdminDictByIds(ids));
    }

}
