package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminMenu;
import com.kaikeba.t31.admin.entity.AdminRoleMenu;
import com.kaikeba.t31.admin.entity.BaseTreeEntity;
import com.kaikeba.t31.admin.mapper.AdminMenuMapper;
import com.kaikeba.t31.admin.service.AdminMenuService;
import com.kaikeba.t31.admin.service.AdminRoleMenuService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 菜单Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class AdminMenuServiceImpl extends ServiceImpl<AdminMenuMapper, AdminMenu> implements AdminMenuService {

    @Resource
    private AdminMenuMapper adminMenuMapper;

    @Resource
    private AdminRoleMenuService adminRoleMenuService;

    /**
     * 查询菜单
     *
     * @param id 菜单主键
     * @return 菜单
     */
    @Override
    public AdminMenu selectAdminMenuById(Long id) {
        return adminMenuMapper.selectAdminMenuById(id);
    }

    /**
     * 查询菜单列表
     *
     * @param adminMenu 菜单
     * @return 菜单
     */
    @Override
    public List<AdminMenu> selectAdminMenuList(AdminMenu adminMenu) {
        return adminMenuMapper.selectAdminMenuList(adminMenu);
    }

    /**
     * 新增菜单
     *
     * @param adminMenu 菜单
     * @return 结果
     */
    @Override
    public int insertAdminMenu(AdminMenu adminMenu) {
        adminMenu.setCreateTime(new Date());
        return adminMenuMapper.insertAdminMenu(adminMenu);
    }

    /**
     * 修改菜单
     *
     * @param adminMenu 菜单
     * @return 结果
     */
    @Override
    public int updateAdminMenu(AdminMenu adminMenu) {
        adminMenu.setUpdateTime(new Date());
        return adminMenuMapper.updateAdminMenu(adminMenu);
    }

    /**
     * 批量删除菜单
     *
     * @param ids 需要删除的菜单主键
     * @return 结果
     */
    @Override
    public int deleteAdminMenuByIds(List<Long> ids) {
        return adminMenuMapper.deleteAdminMenuByIds(ids);
    }

    /**
     * 删除菜单信息
     *
     * @param id 菜单主键
     * @return 结果
     */
    @Override
    public int deleteAdminMenuById(Long id) {
        return adminMenuMapper.deleteAdminMenuById(id);
    }


    /**
     * 根据用户id获取菜单
     *
     * @param uid 用户id
     * @return 菜单集合
     */
    @Override
    public List<AdminMenu> selectMenuByUserId(Long uid) {
        return baseMapper.selectMenuByUserId(uid);
    }

    /**
     * 查询菜单，选中角色已有的菜单
     *
     * @param roleId 角色id
     * @return 角色已有的菜单列表
     */
    @Override
    public List<AdminMenu> listMenuByRole(Long roleId) {
        // 查询所有菜单列表
        List<AdminMenu> adminMenus = this.list();
        // 根据角色查询菜单
        List<AdminMenu> roleMenus = baseMapper.selectByRoleId(roleId);
        for (BaseTreeEntity m1 : adminMenus) {
            for (AdminMenu m2 : roleMenus) {
                if (m1.getId().equals(m2.getId())) {
                    ((AdminMenu) m1).setChecked(true);
                }
            }
        }
        return adminMenus;
    }

    /**
     * 给角色分配菜单
     *
     * @param roleId 角色id
     * @param menuIds    菜单id
     * @return com.kaikeba.t31.common.response.Result
     */
    @Override
    public Result doAssignMenu2Role(Long roleId, Long[] menuIds) {
        // 删除菜单角色信息
        adminRoleMenuService.deleteAdminRoleMenuByRoleId(roleId);
        List<AdminRoleMenu> adminRoleMenus = new ArrayList<>();
        for (Long menuId : menuIds) {
            AdminRoleMenu adminRoleMenu = new AdminRoleMenu();
            adminRoleMenu.setRoleId(roleId);
            adminRoleMenu.setMenuId(menuId);
            adminRoleMenus.add(adminRoleMenu);
        }
        // 批量保存角色菜单
        adminRoleMenuService.saveBatch(adminRoleMenus);
        return Result.success();
    }
}
