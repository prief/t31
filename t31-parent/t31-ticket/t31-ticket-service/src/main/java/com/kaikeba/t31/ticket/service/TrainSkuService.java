package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainSkuEntity;

/**
 * 车次sku组合
 *
 * @author zhouyu
 */
public interface TrainSkuService extends IService<TrainSkuEntity> {

    /**
     * 根据时刻表生成售票sku数据
     */
    void createSku();

    /**
     * 火车票SKU分页列表
     *
     * @param trainSkuEntity 火车票SKU查询实体
     * @return 火车票SKU分页列表
     */
    Result pageList(TrainSkuEntity trainSkuEntity);
}
