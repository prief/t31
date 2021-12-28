package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.ticket.entity.TrainPassenger;

import java.util.List;

/**
 * 乘客管理接口
 *
 * @author zhouyu
 */
public interface PassengerService extends IService<TrainPassenger> {


    /**
     * 获取乘客信息列表
     *
     * @param entity 乘客信息查询实体类
     * @return 乘客信息分页列表
     */
    Page<TrainPassenger> listPage(TrainPassenger entity);

    /**
     * 根据用户id查询乘客列表
     *
     * @return 乘客列表
     */
    List<TrainPassenger> selectPassengerListByUserId();

    /**
     * 添加乘客
     * @param trainPassenger
     */
    void add(TrainPassenger trainPassenger);
}
