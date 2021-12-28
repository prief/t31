package com.kaikeba.t31.ticket.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.ticket.entity.TrainTimetable;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainTimetableMapper extends BaseMapper<TrainTimetable> {
    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    TrainTimetable selectTrainTimetableById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param trainTimetable 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    List<TrainTimetable> selectTrainTimetableList(TrainTimetable trainTimetable);

    /**
     * 新增【请填写功能名称】
     *
     * @param trainTimetable 【请填写功能名称】
     * @return 结果
     */
    int insertTrainTimetable(TrainTimetable trainTimetable);

    /**
     * 修改【请填写功能名称】
     *
     * @param trainTimetable 【请填写功能名称】
     * @return 结果
     */
    int updateTrainTimetable(TrainTimetable trainTimetable);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    int deleteTrainTimetableById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteTrainTimetableByIds(List<Long> ids);
}
