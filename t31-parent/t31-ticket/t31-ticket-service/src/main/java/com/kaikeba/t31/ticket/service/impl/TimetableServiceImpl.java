package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.ticket.entity.TrainTimetable;
import com.kaikeba.t31.ticket.mapper.TimetableMapper;
import com.kaikeba.t31.ticket.service.TimetableService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author zhouyu
 */
@Service
public class TimetableServiceImpl extends ServiceImpl<TimetableMapper, TrainTimetable> implements TimetableService {

    /**
     * 列车时刻分页列表
     *
     * @param trainTimetable 列车时刻查询实体
     * @return 列车时刻分页列表
     */
    @Override
    public Page<TrainTimetable> listPage(TrainTimetable trainTimetable) {
        LambdaQueryWrapper<TrainTimetable> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(trainTimetable.getTrainNumber())) {
            lambdaQueryWrapper.eq(TrainTimetable::getTrainNumber, trainTimetable.getTrainNumber());
        }
        if (StringUtils.isNotBlank(trainTimetable.getFromStation())) {
            lambdaQueryWrapper.like(TrainTimetable::getFromStation, trainTimetable.getFromStation());
        }
        if (StringUtils.isNotBlank(trainTimetable.getToStation())) {
            lambdaQueryWrapper.like(TrainTimetable::getToStation, trainTimetable.getToStation());
        }
        return this.page(new Page<>(trainTimetable.getPageNum(), trainTimetable.getPageSize()), lambdaQueryWrapper);
    }

    /**
     * 出发站列表
     *
     * @param fromStation 出发站
     * @return 出发站列表
     */
    @Override
    public List<String> getFromStations(String fromStation) {
        return this.list(new LambdaQueryWrapper<TrainTimetable>()
                .like(TrainTimetable::getFromStation, fromStation)
                .groupBy(TrainTimetable::getFromStation)
                .select(TrainTimetable::getFromStation))
                .stream().map(TrainTimetable::getFromStation)
                .collect(Collectors.toList());
    }

    /**
     * 到达站列表
     *
     * @param toStation 到达站
     * @return 到达站列表
     */
    @Override
    public List<String> getToStations(String toStation) {
        return this.list(new LambdaQueryWrapper<TrainTimetable>()
                .like(TrainTimetable::getToStation, toStation)
                .groupBy(TrainTimetable::getToStation)
                .select(TrainTimetable::getToStation))
                .stream().map(TrainTimetable::getToStation)
                .collect(Collectors.toList());
    }

}
