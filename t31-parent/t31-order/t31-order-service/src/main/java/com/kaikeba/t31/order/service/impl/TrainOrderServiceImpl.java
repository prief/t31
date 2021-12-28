package com.kaikeba.t31.order.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.common.exception.OrderException;
import com.kaikeba.t31.order.entity.TrainOrder;
import com.kaikeba.t31.order.entity.TrainSkuEntity;
import com.kaikeba.t31.order.enums.OrderStatus;
import com.kaikeba.t31.order.enums.SeatTypes;
import com.kaikeba.t31.order.mapper.TrainOrderMapper;
import com.kaikeba.t31.order.service.TrainOrderService;
import com.kaikeba.t31.order.service.TrainSkuService;
import com.kaikeba.t31.order.vo.SeatTypeVO;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 车票订单Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class TrainOrderServiceImpl extends ServiceImpl<TrainOrderMapper, TrainOrder> implements TrainOrderService {

    @Resource
    private TrainSkuService trainSkuService;


    /**
     * 查询车票订单
     *
     * @param id 车票订单主键
     * @return 车票订单
     */
    @Override
    public TrainOrder selectTrainOrderById(Long id) {
        return baseMapper.selectTrainOrderById(id);
    }

    /**
     * 新增车票订单
     *
     * @param trainOrder 车票订单
     * @return 结果
     */
    @Override
    public int insertTrainOrder(TrainOrder trainOrder) {
        // 下单前检查库存数量
        checkSkuCount(trainOrder);
        trainOrder.setCreateTime(new Date());
        // 订单未支付状态
        trainOrder.setStatus(OrderStatus.UNPAID.getStatus());
        return baseMapper.insertTrainOrder(trainOrder);
    }

    /**
     * 检查库存数量
     *
     * @param trainOrder
     */
    private void checkSkuCount(TrainOrder trainOrder) {
        TrainSkuEntity skuEntity = trainSkuService.getById(trainOrder.getSkuId());
        if (trainOrder.getSeatType().equals(SeatTypes.HARD_SEAT.getDesc())) {
            if (skuEntity.getHardSeatStock() <= 0) {
                throw new OrderException("硬余票不足");
            }
        }
        if (trainOrder.getSeatType().equals(SeatTypes.FIRST_CLASS_SEAT.getDesc())) {
            if (skuEntity.getFirstSeatStock() <= 0) {
                throw new OrderException("一等座余票不足");
            }
        }
        if (trainOrder.getSeatType().equals(SeatTypes.SECOND_CLASS_SEAT.getDesc())) {
            if (skuEntity.getSecondSeatStock() <= 0) {
                throw new OrderException("二等座余票不足");
            }
        }
        if (trainOrder.getSeatType().equals(SeatTypes.SPECIAL_SEAT.getDesc())) {
            if (skuEntity.getSpecialSeatStock() <= 0) {
                throw new OrderException("特等座余票不足");
            }
        }
        if (trainOrder.getSeatType().equals(SeatTypes.HARD_SLEEPER.getDesc())) {
            if (skuEntity.getHardSleeperStock() <= 0) {
                throw new OrderException("硬卧余票不足");
            }
        }
        if (trainOrder.getSeatType().equals(SeatTypes.SOFT_SLEEPER.getDesc())) {
            if (skuEntity.getSoftSleeperStock() <= 0) {
                throw new OrderException("软卧余票不足");
            }
        }
    }

    /**
     * 修改车票订单
     *
     * @param trainOrder 车票订单
     * @return 结果
     */
    @Override
    public int updateTrainOrder(TrainOrder trainOrder) {
        trainOrder.setUpdateTime(new Date());
        return baseMapper.updateTrainOrder(trainOrder);
    }

    /**
     * 批量删除车票订单
     *
     * @param ids 需要删除的车票订单主键
     * @return 结果
     */
    @Override
    public int deleteTrainOrderByIds(List<Long> ids) {
        return baseMapper.deleteTrainOrderByIds(ids);
    }

    /**
     * 删除车票订单信息
     *
     * @param id 车票订单主键
     * @return 结果
     */
    @Override
    public int deleteTrainOrderById(Long id) {
        return baseMapper.deleteTrainOrderById(id);
    }

    /**
     * 通过车次获取座位类型
     *
     * @param numberId 车次
     * @return 座位类型列表
     */
    @Override
    public List<SeatTypeVO> getSeatTypeByNumberId(Long numberId) {
        return baseMapper.getSeatTypeByNumberId(numberId);
    }

    /**
     * 订单分页列表
     *
     * @param trainOrder 订单查询模型
     * @return 订单分页列表
     */
    @Override
    public Page<TrainOrder> listPage(TrainOrder trainOrder) {
        trainOrder.setUserName(SecurityContextHolder.getContext().getAuthentication().getName());
        return baseMapper.listPage(new Page<>(trainOrder.getPageNum(), trainOrder.getPageSize()), trainOrder.getUserName());
    }

}
