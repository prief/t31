package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainSkuEntity;
import com.kaikeba.t31.ticket.mapper.TrainSkuMapper;
import com.kaikeba.t31.ticket.service.TrainSkuService;
import com.kaikeba.t31.common.utils.DateUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 车票sku实现类
 *
 * @author zhouyu
 */
@Slf4j
@Service
public class TrainSkuServiceImpl extends ServiceImpl<TrainSkuMapper, TrainSkuEntity> implements TrainSkuService {

    @Value("${sku.day}")
    private Integer day;

    /**
     * 根据时刻表生成售票sku数据
     */
    @Override
    public void createSku() {
        log.info("根据时刻表生成售票sku数据,date:{}", new Date());
        baseMapper.createSku(DateUtils.getRollDate(new Date(), day));
    }

    /**
     * 火车票SKU分页列表
     *
     * @param trainSkuEntity 火车票SKU查询实体
     * @return 火车票SKU分页列表
     */
    @Override
    public Result pageList(TrainSkuEntity trainSkuEntity) {
        LambdaQueryWrapper<TrainSkuEntity> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (StringUtils.isNotBlank(trainSkuEntity.getTrainNumber())) {
            lambdaQueryWrapper.like(TrainSkuEntity::getTrainNumber, trainSkuEntity.getTrainNumber());
        }
        if (null != trainSkuEntity.getTrainDate()) {
            lambdaQueryWrapper.eq(TrainSkuEntity::getTrainDate, trainSkuEntity.getTrainDate());
        }
        if (StringUtils.isNotBlank(trainSkuEntity.getFromStation())) {
            lambdaQueryWrapper.like(TrainSkuEntity::getFromStation, trainSkuEntity.getFromStation());
        }
        if (StringUtils.isNotBlank(trainSkuEntity.getToStation())) {
            lambdaQueryWrapper.like(TrainSkuEntity::getToStation, trainSkuEntity.getToStation());
        }
        lambdaQueryWrapper.ge(TrainSkuEntity::getTrainDate, DateUtils.getDate());
        Page<TrainSkuEntity> page = this.page(new Page<>(trainSkuEntity.getPageNum(), trainSkuEntity.getPageSize()), lambdaQueryWrapper);
        return Result.success(page);
    }


}
