package com.kaikeba.t31.order.client;

import com.kaikeba.t31.order.entity.Passenger;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * 车票客户端
 *
 * @author zhouyu
 */
@FeignClient(name = "ticket-service")
public interface PassengerClient {

    /**
     * 根据乘客id获取乘客信息
     *
     * @param id id
     * @return 乘客信息
     */
    @GetMapping(value = "/passenger/info/{id}/get")
    Passenger getById(@PathVariable("id") Long id);
}
