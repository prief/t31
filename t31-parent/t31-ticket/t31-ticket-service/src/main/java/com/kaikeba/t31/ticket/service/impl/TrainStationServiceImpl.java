package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.ticket.entity.TrainStation;
import com.kaikeba.t31.ticket.mapper.TrainStationMapper;
import com.kaikeba.t31.ticket.service.TrainStationService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 车厢Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class TrainStationServiceImpl extends ServiceImpl<TrainStationMapper, TrainStation> implements TrainStationService {


    /**
     * 查询车厢
     *
     * @param id 车厢主键
     * @return 车厢
     */
    @Override
    public TrainStation selectTrainStationById(Long id) {
        return baseMapper.selectTrainStationById(id);
    }

    /**
     * 查询车厢列表
     *
     * @param trainStation 车厢
     * @return 车厢
     */
    @Override
    public List<TrainStation> selectTrainStationList(TrainStation trainStation) {
        return baseMapper.selectTrainStationList(trainStation);
    }

    /**
     * 新增车厢
     *
     * @param trainStation 车厢
     * @return 结果
     */
    @Override
    public int insertTrainStation(TrainStation trainStation) {
        trainStation.setCreateTime(new Date());
        return baseMapper.insertTrainStation(trainStation);
    }

    /**
     * 修改车厢
     *
     * @param trainStation 车厢
     * @return 结果
     */
    @Override
    public int updateTrainStation(TrainStation trainStation) {
        trainStation.setUpdateTime(new Date());
        return baseMapper.updateTrainStation(trainStation);
    }

    /**
     * 批量删除车厢
     *
     * @param ids 需要删除的车厢主键
     * @return 结果
     */
    @Override
    public int deleteTrainStationByIds(List<Long> ids) {
        return baseMapper.deleteTrainStationByIds(ids);
    }

    /**
     * 删除车厢信息
     *
     * @param id 车厢主键
     * @return 结果
     */
    @Override
    public int deleteTrainStationById(Long id) {
        return baseMapper.deleteTrainStationById(id);
    }

    /**
     * 车厢分页列表
     *
     * @param trainStation com.kaikeba.t31.ticket.entity.TrainStation
     * @return 分页结果集
     */
    @Override
    public Page<TrainStation> pageList(TrainStation trainStation) {
        LambdaQueryWrapper<TrainStation> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(trainStation.getArriveType())) {
            lambdaQueryWrapper.eq(TrainStation::getArriveType, trainStation.getArriveType());
        }
        if (StringUtils.isNotBlank(trainStation.getName())) {
            lambdaQueryWrapper.like(TrainStation::getName, trainStation.getName());
        }
        if (null != trainStation.getNumberId()) {
            lambdaQueryWrapper.eq(TrainStation::getNumberId, trainStation.getNumberId());
        }
        if (StringUtils.isNotBlank(trainStation.getTrainNumber())) {
            lambdaQueryWrapper.eq(TrainStation::getTrainNumber, trainStation.getTrainNumber());
        }
        return this.page(new Page<>(trainStation.getPageNum(), trainStation.getPageSize()), lambdaQueryWrapper);
    }
}
