package com.kaikeba.t31.order.config;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.kaikeba.t31.order.propertis.AliSmsProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

/**
 * 阿里云发送端点自动配置
 *
 * @author seabed_moon
 */
@Configuration
public class AliYunAutoConfigure {

    @Resource
    private AliSmsProperties aliSmsProperties;

    /**
     * 短信IAcsClient
     *
     * @return com.aliyuncs.IAcsClient
     */
    @Bean
    public IAcsClient acsClient() {
        IClientProfile profile = DefaultProfile.getProfile(AliSmsProperties.REGION_ID, aliSmsProperties.getAccessKeyId(), aliSmsProperties.getAccessKeySecret());
        DefaultProfile.addEndpoint(AliSmsProperties.REGION_ID, AliSmsProperties.PRODUCT, AliSmsProperties.DOMAIN);
        return new DefaultAcsClient(profile);
    }

}
