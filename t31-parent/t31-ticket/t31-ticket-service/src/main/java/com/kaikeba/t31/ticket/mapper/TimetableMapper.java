package com.kaikeba.t31.ticket.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.ticket.entity.TrainTimetable;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 列车时刻表Mapper
 *
 * @author zhouyu
 */
public interface TimetableMapper extends BaseMapper<TrainTimetable> {

    /**
     * 获取开始车站
     *
     * @param startStation
     * @return
     */
    @Select("SELECT DISTINCT `from_station` FROM `train_timetable` where `from_station` like '%${fromStation}%'")
    List<String> getFromStations(String startStation);


    /**
     * 获取到达车站
     *
     * @param toStation
     * @return
     */
    @Select("SELECT DISTINCT `to_station` FROM `train_timetable` where `to_station` like '%${toStation}%'")
    List<String> getToStations(String toStation);

}
