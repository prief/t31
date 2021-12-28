package com.kaikeba.t31.ticket.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.ticket.entity.TrainNumberEntity;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author zhouyu
 */
public interface TrainNumberMapper extends BaseMapper<TrainNumberEntity> {

    /**
     * 获取始发站
     * @param startStation
     * @return
     */
    @Select("SELECT DISTINCT `start_station` FROM `train_number` where `start_station` like '%${startStation}%'")
    List<String> getStartStations(String startStation);

    /**
     * 获取终点站
     * @param endStation
     * @return
     */
    @Select("SELECT DISTINCT `end_station` FROM `train_number` where `end_station` like '%${endStation}%'")
    List<String> getEndStations(String endStation);
}
