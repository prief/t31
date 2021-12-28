package com.kaikeba.t31.ticket.task;

import com.kaikeba.t31.ticket.service.TrainSkuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 车票sku定时任务
 *
 * @author zhouyu
 */
@Slf4j
@Component
public class SkuTask {

    @Resource
    private TrainSkuService trainSkuService;

    /**
     * 根据时刻表生成售票sku数据
     */
    @Scheduled(cron = "${sku.cron}")
    public void execute() {
        trainSkuService.createSku();
    }


}
