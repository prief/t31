package com.kaikeba.t31.ticket.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.ticket.entity.TrainOrderEntity;
import com.kaikeba.t31.ticket.vo.SeatTypeVo;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 车次订单Mapper
 *
 * @author zhouyu
 */
public interface TrainOrderMapper extends BaseMapper<TrainOrderEntity> {

    /**
     * 通过车次获取座位类型
     *
     * @param numberId
     * @return
     */
    @Select("SELECT `type` AS type, AVG(`price`) AS price FROM `train_carriage` WHERE `number_id`=#{numberId} GROUP BY `type`")
    List<SeatTypeVo> getSeatTypeByNumberId(Long numberId);

}
