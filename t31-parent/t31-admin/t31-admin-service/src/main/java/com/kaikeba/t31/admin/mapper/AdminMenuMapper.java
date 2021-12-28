package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.AdminMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 菜单Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Mapper
public interface AdminMenuMapper extends BaseMapper<AdminMenu> {
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
     * 删除菜单
     *
     * @param id 菜单主键
     * @return 结果
     */
    int deleteAdminMenuById(Long id);

    /**
     * 批量删除菜单
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteAdminMenuByIds(List<Long> ids);

    /**
     * 根据用户id获取菜单
     *
     * @param uid 用户id
     * @return 菜单集合
     */
    List<AdminMenu> selectMenuByUserId(Long uid);

    /**
     * 根据角色查询菜单
     *
     * @param roleId 角色id
     * @return 菜单列表
     */
    List<AdminMenu> selectByRoleId(Long roleId);
}
