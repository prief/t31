package com.kaikeba.t31.ticket.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.ticket.entity.TrainSkuEntity;
import org.apache.ibatis.annotations.Param;

import java.util.Date;


/**
 * 车次sku Mapper
 *
 * @author zhouyu
 */
public interface TrainSkuMapper extends BaseMapper<TrainSkuEntity> {


    /**
     * 根据时刻表生成售票sku数据
     *
     * @param date 车票日期
     */
    void createSku(@Param("date") Date date);

}
