package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.ticket.entity.TrainTimetable;
import com.kaikeba.t31.ticket.mapper.TrainTimetableMapper;
import com.kaikeba.t31.ticket.service.TrainTimetableService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 列车时刻表Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class TrainTimetableServiceImpl extends ServiceImpl<TrainTimetableMapper, TrainTimetable> implements TrainTimetableService {


    /**
     * 查询列车时刻表
     *
     * @param id 列车时刻表主键
     * @return 列车时刻表
     */
    @Override
    public TrainTimetable selectTrainTimetableById(Long id) {
        return baseMapper.selectTrainTimetableById(id);
    }

    /**
     * 查询列车时刻表列表
     *
     * @param trainTimetable 列车时刻表
     * @return 列车时刻表
     */
    @Override
    public List<TrainTimetable> selectTrainTimetableList(TrainTimetable trainTimetable) {
        return baseMapper.selectTrainTimetableList(trainTimetable);
    }

    /**
     * 新增列车时刻表
     *
     * @param trainTimetable 列车时刻表
     * @return 结果
     */
    @Override
    public int insertTrainTimetable(TrainTimetable trainTimetable) {
        trainTimetable.setCreateTime(new Date());
        return baseMapper.insertTrainTimetable(trainTimetable);
    }

    /**
     * 修改列车时刻表
     *
     * @param trainTimetable 列车时刻表
     * @return 结果
     */
    @Override
    public int updateTrainTimetable(TrainTimetable trainTimetable) {
        trainTimetable.setUpdateTime(new Date());
        return baseMapper.updateTrainTimetable(trainTimetable);
    }

    /**
     * 批量删除列车时刻表
     *
     * @param ids 需要删除的列车时刻表主键
     * @return 结果
     */
    @Override
    public int deleteTrainTimetableByIds(List<Long> ids) {
        return baseMapper.deleteTrainTimetableByIds(ids);
    }

    /**
     * 删除列车时刻表信息
     *
     * @param id 列车时刻表主键
     * @return 结果
     */
    @Override
    public int deleteTrainTimetableById(Long id) {
        return baseMapper.deleteTrainTimetableById(id);
    }

    /**
     * 列车时刻表分页列表
     *
     * @param trainTimetable com.kaikeba.t31.ticket.entity.TrainTimetable
     * @return 分页结果集
     */
    @Override
    public Page<TrainTimetable> pageList(TrainTimetable trainTimetable) {
        LambdaQueryWrapper<TrainTimetable> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(trainTimetable.getFromStation())) {
            lambdaQueryWrapper.like(TrainTimetable::getFromStation, trainTimetable.getFromStation());
        }
        if (null != trainTimetable.getNumberId()) {
            lambdaQueryWrapper.eq(TrainTimetable::getNumberId, trainTimetable.getNumberId());
        }
        if (StringUtils.isNotBlank(trainTimetable.getToStation())) {
            lambdaQueryWrapper.like(TrainTimetable::getToStation, trainTimetable.getToStation());
        }
        if (StringUtils.isNotBlank(trainTimetable.getTrainNumber())) {
            lambdaQueryWrapper.eq(TrainTimetable::getTrainNumber, trainTimetable.getTrainNumber());
        }
        return this.page(new Page<>(trainTimetable.getPageNum(), trainTimetable.getPageSize()), lambdaQueryWrapper);
    }
}
