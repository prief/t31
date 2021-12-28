package com.kaikeba.t31.ticket.timer;

import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class SkuTimer {

    /****
     * 每30秒执行一次
     */
    @Scheduled(cron = "0 0 0 0/3 * ?")
    public void pushTrainSku(){
        log.error("push task sku...");
    }

}
