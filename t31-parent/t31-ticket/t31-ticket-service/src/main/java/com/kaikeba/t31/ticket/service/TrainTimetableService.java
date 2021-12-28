package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.ticket.entity.TrainTimetable;

import java.util.List;

/**
 * 列车时刻表Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainTimetableService extends IService<TrainTimetable> {
    /**
     * 查询列车时刻表
     *
     * @param id 列车时刻表主键
     * @return 列车时刻表
     */
    TrainTimetable selectTrainTimetableById(Long id);

    /**
     * 查询列车时刻表列表
     *
     * @param trainTimetable 列车时刻表
     * @return 列车时刻表集合
     */
    List<TrainTimetable> selectTrainTimetableList(TrainTimetable trainTimetable);

    /**
     * 新增列车时刻表
     *
     * @param trainTimetable 列车时刻表
     * @return 结果
     */
    int insertTrainTimetable(TrainTimetable trainTimetable);

    /**
     * 修改列车时刻表
     *
     * @param trainTimetable 列车时刻表
     * @return 结果
     */
    int updateTrainTimetable(TrainTimetable trainTimetable);

    /**
     * 批量删除列车时刻表
     *
     * @param ids 需要删除的列车时刻表主键集合
     * @return 结果
     */
    int deleteTrainTimetableByIds(List<Long> ids);

    /**
     * 删除列车时刻表信息
     *
     * @param id 列车时刻表主键
     * @return 结果
     */
    int deleteTrainTimetableById(Long id);

    /**
     * 列车时刻表分页列表
     *
     * @param trainTimetable com.kaikeba.t31.ticket.entity.TrainTimetable
     * @return 分页结果集
     */
    Page<TrainTimetable> pageList(TrainTimetable trainTimetable);
}
