package com.kaikeba.t31.order.propertis;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * 阿里云短信配置
 *
 * @author zhouyu
 */
@Setter
@Getter
@Configuration
@ConfigurationProperties(prefix = "ali.sms")
public class AliSmsProperties {

    /**
     * Endpoint
     */
    public static final String REGION_ID = "cn-hangzhou";

    /**
     * accessKeyId
     */
    private String accessKeyId;

    /**
     * accessKeySecret
     */
    private String accessKeySecret;

    private String signName;

    private String templateCode;

    public static final String OK = "OK";

    public static final String CODE = "Code";

    public static final String PRODUCT = "Dysmsapi";

    public static final String DOMAIN = "dysmsapi.aliyuncs.com";

    public static final String VOICE_DOMAIN = "dyvmsapi.aliyuncs.com";

}
