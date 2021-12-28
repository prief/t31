package com.kaikeba.t31.order;

import com.kaikeba.t31.order.constants.PayConstants;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * 订单服务启动类
 *
 * @author zhouyu
 */
@SpringBootApplication(scanBasePackages = PayConstants.SCAN_BASE_PACKAGES)
@EnableFeignClients
public class OrderApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderApplication.class, args);
    }

}
