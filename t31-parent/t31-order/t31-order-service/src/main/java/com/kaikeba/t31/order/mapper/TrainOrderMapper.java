package com.kaikeba.t31.order.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kaikeba.t31.order.entity.TrainOrder;
import com.kaikeba.t31.order.vo.SeatTypeVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 车票订单Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainOrderMapper extends BaseMapper<TrainOrder> {

    /**
     * 查询车票订单
     *
     * @param id 车票订单主键
     * @return 车票订单
     */
    TrainOrder selectTrainOrderById(Long id);

    /**
     * 查询车票订单列表
     *
     * @param trainOrder 车票订单
     * @return 车票订单集合
     */
    List<TrainOrder> selectTrainOrderList(TrainOrder trainOrder);

    /**
     * 新增车票订单
     *
     * @param trainOrder 车票订单
     * @return 结果
     */
    int insertTrainOrder(TrainOrder trainOrder);

    /**
     * 修改车票订单
     *
     * @param trainOrder 车票订单
     * @return 结果
     */
    int updateTrainOrder(TrainOrder trainOrder);

    /**
     * 删除车票订单
     *
     * @param id 车票订单主键
     * @return 结果
     */
    int deleteTrainOrderById(Long id);

    /**
     * 批量删除车票订单
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteTrainOrderByIds(List<Long> ids);

    /**
     * 通过车次获取座位类型
     *
     * @param numberId 车次号
     * @return
     */
    List<SeatTypeVO> getSeatTypeByNumberId(Long numberId);

    /**
     * 订单分页列表
     *
     * @param page     分页参数
     * @param userName 用户名
     * @return 订单分页列表
     */
    Page<TrainOrder> listPage(Page<TrainOrder> page, @Param("userName") String userName);
}
