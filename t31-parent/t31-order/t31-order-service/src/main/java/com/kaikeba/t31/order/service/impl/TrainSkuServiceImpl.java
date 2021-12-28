package com.kaikeba.t31.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.order.entity.TrainSkuEntity;
import com.kaikeba.t31.order.enums.SeatTypes;
import com.kaikeba.t31.order.mapper.TrainSkuMapper;
import com.kaikeba.t31.order.service.TrainSkuService;
import org.springframework.stereotype.Service;

/**
 * 车票sku实现类
 *
 * @author zhouyu
 */
@Service
public class TrainSkuServiceImpl extends ServiceImpl<TrainSkuMapper, TrainSkuEntity> implements TrainSkuService {

    /**
     * 扣减库存
     *
     * @param skuId    skuId
     * @param seatType 座位类型
     */
    @Override
    public void saleStock(String skuId, String seatType) {
        // 查询sku信息
        TrainSkuEntity trainSkuEntity = this.getById(skuId);
        if (seatType.equals(SeatTypes.FIRST_CLASS_SEAT.getDesc())) {
            trainSkuEntity.setFirstSeatStock(trainSkuEntity.getFirstSeatStock() - 1);
        }
        if (seatType.equals(SeatTypes.SECOND_CLASS_SEAT.getDesc())) {
            trainSkuEntity.setSecondSeatStock(trainSkuEntity.getSecondSeatStock() - 1);
        }
        if (seatType.equals(SeatTypes.SPECIAL_SEAT.getDesc())) {
            trainSkuEntity.setSpecialSeatStock(trainSkuEntity.getSpecialSeatStock() - 1);
        }
        // 更新库存数量
        this.updateById(trainSkuEntity);
    }
}
