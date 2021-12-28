package com.kaikeba.t31.order.propertis;


import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * 邮箱配置
 *
 * @author zhouyu
 */
@Setter
@Getter
@Configuration
@ConfigurationProperties(prefix = "mail")
public class MailProperties {

    /**
     * 邮箱host
     */
    private String mailHost;

    /**
     * 邮箱协议
     */
    private String mailTransportProtocol;

    /**
     * 是否认证
     */
    private String mailSmtpAuth;

    /**
     * 用户名
     */
    private String user;

    /**
     * 密码
     */
    private String password;

}
