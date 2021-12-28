package com.kaikeba.t31.order.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.order.entity.TrainOrder;
import com.kaikeba.t31.order.vo.SeatTypeVO;

import java.util.List;

/**
 * 车票订单Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainOrderService extends IService<TrainOrder> {

    /**
     * 查询车票订单
     *
     * @param id 车票订单主键
     * @return 车票订单
     */
    TrainOrder selectTrainOrderById(Long id);

    /**
     * 新增车票订单
     *
     * @param trainOrder 车票订单
     * @return 结果
     * @throws Exception ex
     */
    int insertTrainOrder(TrainOrder trainOrder) throws Exception;

    /**
     * 修改车票订单
     *
     * @param trainOrder 车票订单
     * @return 结果
     */
    int updateTrainOrder(TrainOrder trainOrder);

    /**
     * 批量删除车票订单
     *
     * @param ids 需要删除的车票订单主键集合
     * @return 结果
     */
    int deleteTrainOrderByIds(List<Long> ids);

    /**
     * 删除车票订单信息
     *
     * @param id 车票订单主键
     * @return 结果
     */
    int deleteTrainOrderById(Long id);

    /**
     * 通过车次获取座位类型
     *
     * @param numberId 车次
     * @return 座位类型列表
     */
    List<SeatTypeVO> getSeatTypeByNumberId(Long numberId);

    /**
     * 订单分页列表
     *
     * @param trainOrderEntity 订单查询模型
     * @return 订单分页列表
     */
    Page<TrainOrder> listPage(TrainOrder trainOrderEntity);
}
