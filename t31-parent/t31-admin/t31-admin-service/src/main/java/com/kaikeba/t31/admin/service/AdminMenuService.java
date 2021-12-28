package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.AdminMenu;
import com.kaikeba.t31.common.response.Result;

import java.util.List;

/**
 * 菜单Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface AdminMenuService extends IService<AdminMenu> {
    /**
     * 查询菜单
     *
     * @param id 菜单主键
     * @return 菜单
     */
    AdminMenu selectAdminMenuById(Long id);

    /**
     * 查询菜单列表
     *
     * @param adminMenu 菜单
     * @return 菜单集合
     */
    List<AdminMenu> selectAdminMenuList(AdminMenu adminMenu);

    /**
     * 新增菜单
     *
     * @param adminMenu 菜单
     * @return 结果
     */
    int insertAdminMenu(AdminMenu adminMenu);

    /**
     * 修改菜单
     *
     * @param adminMenu 菜单
     * @return 结果
     */
    int updateAdminMenu(AdminMenu adminMenu);

    /**
     * 批量删除菜单
     *
     * @param ids 需要删除的菜单主键集合
     * @return 结果
     */
    int deleteAdminMenuByIds(List<Long> ids);

    /**
     * 删除菜单信息
     *
     * @param id 菜单主键
     * @return 结果
     */
    int deleteAdminMenuById(Long id);

    /**
     * 根据用户id获取菜单
     *
     * @param uid 用户id
     * @return 菜单集合
     */
    List<AdminMenu> selectMenuByUserId(Long uid);

    /**
     * 查询菜单，选中角色已有的菜单
     * @param roleId 角色id
     * @return 角色已有的菜单列表
     */
    List<AdminMenu> listMenuByRole(Long roleId);

    /**
     * 给角色分配菜单
     *
     * @param roleId 角色id
     * @param menuIds 菜单id
     * @return com.kaikeba.t31.common.response.Result
     */
    Result doAssignMenu2Role(Long roleId, Long[] menuIds);
}
