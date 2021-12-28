package com.kaikeba.t31.auth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

/**
 * 授权中心启动类
 *
 * @author zhouyu
 */
@EnableFeignClients
@SpringBootApplication
@EnableResourceServer
public class AuthApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthApplication.class, args);
    }
}
