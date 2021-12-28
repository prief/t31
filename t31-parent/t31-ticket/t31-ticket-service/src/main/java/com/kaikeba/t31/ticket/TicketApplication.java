package com.kaikeba.t31.ticket;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * 车票服务启动类
 *
 * @author zhouyu
 */
@EnableScheduling
@SpringBootApplication
@EnableFeignClients
public class TicketApplication {

    public static void main(String[] args) {
        SpringApplication.run(TicketApplication.class, args);
    }

}
