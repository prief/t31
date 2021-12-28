package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.ticket.entity.TrainStation;

import java.util.List;

/**
 * 经停站Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainStationService extends IService<TrainStation> {
    /**
     * 查询经停站
     *
     * @param id 经停站主键
     * @return 经停站
     */
    TrainStation selectTrainStationById(Long id);

    /**
     * 查询经停站列表
     *
     * @param trainStation 经停站
     * @return 经停站集合
     */
    List<TrainStation> selectTrainStationList(TrainStation trainStation);

    /**
     * 新增经停站
     *
     * @param trainStation 经停站
     * @return 结果
     */
    int insertTrainStation(TrainStation trainStation);

    /**
     * 修改经停站
     *
     * @param trainStation 经停站
     * @return 结果
     */
    int updateTrainStation(TrainStation trainStation);

    /**
     * 批量删除经停站
     *
     * @param ids 需要删除的经停站主键集合
     * @return 结果
     */
    int deleteTrainStationByIds(List<Long> ids);

    /**
     * 删除经停站信息
     *
     * @param id 经停站主键
     * @return 结果
     */
    int deleteTrainStationById(Long id);

    /**
     * 车厢分页列表
     *
     * @param trainStation com.kaikeba.t31.ticket.entity.TrainStation
     * @return 分页结果集
     */
    Page<TrainStation> pageList(TrainStation trainStation);
}
