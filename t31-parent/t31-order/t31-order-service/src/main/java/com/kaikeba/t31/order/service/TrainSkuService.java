package com.kaikeba.t31.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.order.entity.TrainSkuEntity;

/**
 * 车次sku组合
 *
 * @author zhouyu
 */
public interface TrainSkuService extends IService<TrainSkuEntity> {

    /**
     * 扣减库存
     *
     * @param skuId    skuId
     * @param seatType 座位类型
     */
    void saleStock(String skuId, String seatType);
}
