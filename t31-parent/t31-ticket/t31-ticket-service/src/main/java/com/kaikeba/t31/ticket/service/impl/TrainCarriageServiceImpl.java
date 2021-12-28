package com.kaikeba.t31.ticket.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.ticket.entity.TrainCarriage;
import com.kaikeba.t31.ticket.mapper.TrainCarriageMapper;
import com.kaikeba.t31.ticket.service.TrainCarriageService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 经停站Service业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class TrainCarriageServiceImpl extends ServiceImpl<TrainCarriageMapper, TrainCarriage> implements TrainCarriageService {


    /**
     * 查询经停站
     *
     * @param id 经停站主键
     * @return 经停站
     */
    @Override
    public TrainCarriage selectTrainCarriageById(Long id) {
        return baseMapper.selectTrainCarriageById(id);
    }

    /**
     * 查询经停站列表
     *
     * @param trainCarriage 经停站
     * @return 经停站
     */
    @Override
    public List<TrainCarriage> selectTrainCarriageList(TrainCarriage trainCarriage) {
        return baseMapper.selectTrainCarriageList(trainCarriage);
    }

    /**
     * 新增经停站
     *
     * @param trainCarriage 经停站
     * @return 结果
     */
    @Override
    public int insertTrainCarriage(TrainCarriage trainCarriage) {
        trainCarriage.setCreateTime(new Date());
        return baseMapper.insertTrainCarriage(trainCarriage);
    }

    /**
     * 修改经停站
     *
     * @param trainCarriage 经停站
     * @return 结果
     */
    @Override
    public int updateTrainCarriage(TrainCarriage trainCarriage) {
        trainCarriage.setUpdateTime(new Date());
        return baseMapper.updateTrainCarriage(trainCarriage);
    }

    /**
     * 批量删除经停站
     *
     * @param ids 需要删除的经停站主键
     * @return 结果
     */
    @Override
    public int deleteTrainCarriageByIds(List<Long> ids) {
        return baseMapper.deleteTrainCarriageByIds(ids);
    }

    /**
     * 删除经停站信息
     *
     * @param id 经停站主键
     * @return 结果
     */
    @Override
    public int deleteTrainCarriageById(Long id) {
        return baseMapper.deleteTrainCarriageById(id);
    }

    @Override
    public Page<TrainCarriage> listPage(TrainCarriage trainCarriage) {
        LambdaQueryWrapper<TrainCarriage> queryWrapper = new LambdaQueryWrapper<>();
        if (null != trainCarriage.getNumberId()) {
            queryWrapper.eq(TrainCarriage::getNumberId, trainCarriage.getNumberId());
        }
        if (StringUtils.isNotBlank(trainCarriage.getType())) {
            queryWrapper.eq(TrainCarriage::getType, trainCarriage.getType());
        }
        return this.page(new Page<>(trainCarriage.getPageNum(), trainCarriage.getPageSize()), queryWrapper);
    }
}
