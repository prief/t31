package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.AdminMenu;
import com.kaikeba.t31.admin.service.AdminMenuService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 菜单控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/menu")
public class AdminMenuController {

    @Resource
    private AdminMenuService adminMenuService;

    /**
     * 菜单列表
     *
     * @param adminMenu 菜单入参
     * @return 菜单列表
     */
    @PostMapping("/list")
    public Result list(@RequestBody AdminMenu adminMenu) {
        return Result.success(adminMenuService.selectAdminMenuList(adminMenu));
    }

    /**
     * 查询菜单，选中角色已有的菜单
     *
     * @param roleId 角色Id
     * @return 角色下的菜单明细
     */
    @RequestMapping(value = "/list-role/{roleId}", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<AdminMenu> listMenuByRole(@PathVariable Long roleId) {
        return adminMenuService.listMenuByRole(roleId);
    }

    /**
     * 获取菜单详细信息
     *
     * @param id 主键
     * @return {@link AdminMenu}
     */
    @GetMapping(value = "/{id}")
    public Result getInfo(@PathVariable("id") Long id) {
        return Result.success(adminMenuService.selectAdminMenuById(id));
    }

    /**
     * 新增菜单
     *
     * @param adminMenu 菜单入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody AdminMenu adminMenu) {
        return Result.success(adminMenuService.saveOrUpdate(adminMenu));
    }

    /**
     * 加载修改的菜单信息
     *
     * @param id 菜单id
     * @return com.kaikeba.t31.admin.entity.AdminMenu
     */
    @GetMapping("/info/{id}")
    public AdminMenu info(@PathVariable Long id) {
        return adminMenuService.getById(id);
    }

    /**
     * 删除菜单
     *
     * @param id 菜单id
     * @return 删除成功数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(adminMenuService.deleteAdminMenuById(id));
    }

    /**
     * 批量删除字典
     *
     * @param ids 菜单ids
     * @return 删除成功数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(adminMenuService.deleteAdminMenuByIds(ids));
    }

    /**
     * 给角色分配菜单
     *
     * @param roleId 角色id
     * @param ids    菜单id
     * @return com.kaikeba.t31.common.response.Result
     */
    @PostMapping("/assign/{roleId}")
    public Result assignMenu(@PathVariable Long roleId, @RequestParam Long[] ids) {
        return adminMenuService.doAssignMenu2Role(roleId, ids);
    }

}
