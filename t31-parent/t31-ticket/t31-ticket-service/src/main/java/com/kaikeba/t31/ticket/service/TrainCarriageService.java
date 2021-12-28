package com.kaikeba.t31.ticket.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.ticket.entity.TrainCarriage;

import java.util.List;

/**
 * 车厢Service接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainCarriageService extends IService<TrainCarriage> {
    /**
     * 查询车厢
     *
     * @param id 车厢主键
     * @return 车厢
     */
    TrainCarriage selectTrainCarriageById(Long id);

    /**
     * 查询车厢列表
     *
     * @param trainCarriage 车厢
     * @return 车厢集合
     */
    List<TrainCarriage> selectTrainCarriageList(TrainCarriage trainCarriage);

    /**
     * 新增车厢
     *
     * @param trainCarriage 车厢
     * @return 结果
     */
    int insertTrainCarriage(TrainCarriage trainCarriage);

    /**
     * 修改车厢
     *
     * @param trainCarriage 车厢
     * @return 结果
     */
    int updateTrainCarriage(TrainCarriage trainCarriage);

    /**
     * 批量删除车厢
     *
     * @param ids 需要删除的车厢主键集合
     * @return 结果
     */
    int deleteTrainCarriageByIds(List<Long> ids);

    /**
     * 删除车厢信息
     *
     * @param id 车厢主键
     * @return 结果
     */
    int deleteTrainCarriageById(Long id);

    Page<TrainCarriage> listPage(TrainCarriage trainCarriage);
}
