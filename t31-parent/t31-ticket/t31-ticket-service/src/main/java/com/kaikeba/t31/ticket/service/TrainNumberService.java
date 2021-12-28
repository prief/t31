package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.ticket.entity.TrainNumberEntity;

import java.util.List;

/**
 * @author zhouyu
 */
public interface TrainNumberService extends IService<TrainNumberEntity> {


    /**
     * 车次分页列表
     *
     * @param trainNumberEntity 车次查询实体
     * @return 车次分页列表
     */
    Page<TrainNumberEntity> listPage(TrainNumberEntity trainNumberEntity);

    /**
     * 始发站列表
     *
     * @param startStation 始发站名称
     * @return 始发站列表
     */
    List<String> getStartStations(String startStation);

    /**
     * 终点站列表
     *
     * @param endStation 终点站名称
     * @return 终点站列表
     */
    List<String> getEndStations(String endStation);
}
