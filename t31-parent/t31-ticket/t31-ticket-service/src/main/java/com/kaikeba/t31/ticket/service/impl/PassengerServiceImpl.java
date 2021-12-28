package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.AdminUser;
import com.kaikeba.t31.ticket.client.UserClient;
import com.kaikeba.t31.ticket.entity.TrainPassenger;
import com.kaikeba.t31.ticket.mapper.PassengerMapper;
import com.kaikeba.t31.ticket.service.PassengerService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhouyu
 */
@Service
public class PassengerServiceImpl extends ServiceImpl<PassengerMapper, TrainPassenger> implements PassengerService {


    @Resource
    private UserClient userClient;

    /**
     * 获取乘客信息列表
     *
     * @param entity 乘客信息查询实体类
     * @return 乘客信息分页列表
     */
    @Override
    public Page<TrainPassenger> listPage(TrainPassenger entity) {
        // 根据用户名称获取详细用户信息
        AdminUser adminUser = userClient.getByUserName(SecurityContextHolder.getContext().getAuthentication().getName());
        LambdaQueryWrapper<TrainPassenger> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(TrainPassenger::getUserId, adminUser.getId());
        if (StringUtils.isNotBlank(entity.getName())) {
            lambdaQueryWrapper.like(TrainPassenger::getName, entity.getName());
        }
        if (StringUtils.isNotBlank(entity.getType())) {
            lambdaQueryWrapper.eq(TrainPassenger::getType, entity.getType());
        }
        return this.page(new Page<>(entity.getPageNum(), entity.getPageSize()), lambdaQueryWrapper);
    }

    /**
     * 根据用户id查询乘客列表
     *
     * @return 乘客列表
     */
    @Override
    public List<TrainPassenger> selectPassengerListByUserId() {
        // 根据用户名称获取详细用户信息
        AdminUser adminUser = userClient.getByUserName(SecurityContextHolder.getContext().getAuthentication().getName());
        return this.list(new LambdaQueryWrapper<TrainPassenger>().eq(TrainPassenger::getUserId, adminUser.getId()));
    }

    /**
     * 添加乘客
     *
     * @param trainPassenger
     */
    @Override
    public void add(TrainPassenger trainPassenger) {
        AdminUser adminUser = userClient.getByUserName(SecurityContextHolder.getContext().getAuthentication().getName());
        trainPassenger.setUserId(adminUser.getId());
        this.saveOrUpdate(trainPassenger);
    }
}
