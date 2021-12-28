package com.kaikeba.t31.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kaikeba.t31.admin.entity.AdminPost;
import com.kaikeba.t31.admin.service.AdminPostService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 岗位控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/post")
public class AdminPostController {

    @Resource
    private AdminPostService adminPostService;

    /**
     * 查询岗位分页列表
     *
     * @param adminPost 岗位入参
     * @return 分页结果集
     */
    @PostMapping("/list-page")
    public Result pageList(@RequestBody AdminPost adminPost) {
        return Result.success(adminPostService.page(new Page<>(adminPost.getPageNum(), adminPost.getPageSize())));
    }

    /**
     * 查询岗位列表
     *
     * @param adminPost 岗位入参
     * @return 岗位列表
     */
    @PostMapping("/list")
    public List<AdminPost> list(@RequestBody AdminPost adminPost) {
        return adminPostService.list(new LambdaQueryWrapper<>());
    }

    /**
     * 获取岗位详细信息
     *
     * @param id 主键
     * @return {@link AdminPost}
     */
    @GetMapping(value = "/{id}")
    public Result getInfo(@PathVariable("id") Long id) {
        return Result.success(adminPostService.selectAdminPostById(id));
    }

    /**
     * 新增岗位
     *
     * @param adminPost 入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminPost adminPost) {
        return Result.success(adminPostService.saveOrUpdate(adminPost));
    }

    /**
     * 加载岗位信息
     *
     * @param id 岗位id
     * @return {@link AdminPost}
     */
    @GetMapping("/info/{id}")
    public AdminPost info(@PathVariable Long id) {
        return adminPostService.getById(id);
    }

    /**
     * 删除岗位
     *
     * @param id 主键
     * @return 删除成功数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(adminPostService.deleteAdminPostById(id));
    }

    /**
     * 批量删除岗位
     *
     * @param ids 主键
     * @return 删除成功数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(adminPostService.deleteAdminPostByIds(ids));
    }
}
