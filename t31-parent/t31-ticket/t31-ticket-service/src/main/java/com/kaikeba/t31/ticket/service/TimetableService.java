package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.ticket.entity.TrainTimetable;

import java.util.List;

/**
 * 时刻表接口
 *
 * @author zhouyu
 */
public interface TimetableService extends IService<TrainTimetable> {

    /**
     * 列车时刻分页列表
     *
     * @param timetableEntity 列车时刻查询实体
     * @return 列车时刻分页列表
     */
    Page<TrainTimetable> listPage(TrainTimetable timetableEntity);

    /**
     * 出发站列表
     *
     * @param fromStation 出发站
     * @return 出发站列表
     */
    List<String> getFromStations(String fromStation);

    /**
     * 到达站列表
     *
     * @param toStation 到达站
     * @return 到达站列表
     */
    List<String> getToStations(String toStation);
}
