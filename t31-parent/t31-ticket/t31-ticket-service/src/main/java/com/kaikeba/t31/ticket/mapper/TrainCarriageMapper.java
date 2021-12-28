package com.kaikeba.t31.ticket.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.ticket.entity.TrainCarriage;

import java.util.List;

/**
 * 车厢Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface TrainCarriageMapper extends BaseMapper<TrainCarriage> {
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
     * 删除车厢
     *
     * @param id 车厢主键
     * @return 结果
     */
    int deleteTrainCarriageById(Long id);

    /**
     * 批量删除车厢
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    int deleteTrainCarriageByIds(List<Long> ids);
}
