package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.ticket.entity.TrainNumberEntity;
import com.kaikeba.t31.ticket.mapper.TrainNumberMapper;
import com.kaikeba.t31.ticket.service.TrainNumberService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author zhouyu
 */
@Service
public class TrainNumberServiceImpl extends ServiceImpl<TrainNumberMapper, TrainNumberEntity> implements TrainNumberService {


    /**
     * 车次分页列表
     *
     * @param trainNumberEntity 车次查询实体
     * @return 车次分页列表
     */
    @Override
    public Page<TrainNumberEntity> listPage(TrainNumberEntity trainNumberEntity) {
        LambdaQueryWrapper<TrainNumberEntity> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(trainNumberEntity.getNumber())) {
            lambdaQueryWrapper.eq(TrainNumberEntity::getNumber, trainNumberEntity.getNumber());
        }
        if (StringUtils.isNotBlank(trainNumberEntity.getStartStation())) {
            lambdaQueryWrapper.eq(TrainNumberEntity::getStartStation, trainNumberEntity.getStartStation());
        }
        if (StringUtils.isNotBlank(trainNumberEntity.getEndStation())) {
            lambdaQueryWrapper.eq(TrainNumberEntity::getEndStation, trainNumberEntity.getEndStation());
        }
        return this.page(new Page<>(trainNumberEntity.getPageNum(), trainNumberEntity.getPageSize()), lambdaQueryWrapper);
    }


    /**
     * 始发站列表
     *
     * @param startStation 始发站名称
     * @return 始发站列表
     */
    @Override
    public List<String> getStartStations(String startStation) {
        return this.list(new LambdaQueryWrapper<TrainNumberEntity>()
                        .like(TrainNumberEntity::getStartStation, startStation)
                        .groupBy(TrainNumberEntity::getStartStation)
                        .select(TrainNumberEntity::getStartStation))
                .stream().map(TrainNumberEntity::getStartStation)
                .collect(Collectors.toList());
    }

    /**
     * 终点站列表
     *
     * @param endStation 终点站名称
     * @return 终点站列表
     */
    @Override
    public List<String> getEndStations(String endStation) {
        return this.list(new LambdaQueryWrapper<TrainNumberEntity>()
                        .like(TrainNumberEntity::getEndStation, endStation)
                        .groupBy(TrainNumberEntity::getEndStation)
                        .select(TrainNumberEntity::getEndStation))
                .stream().map(TrainNumberEntity::getEndStation)
                .collect(Collectors.toList());
    }
}
