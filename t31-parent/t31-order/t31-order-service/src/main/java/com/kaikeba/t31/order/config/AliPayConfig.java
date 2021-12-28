package com.kaikeba.t31.order.config;

import com.alipay.easysdk.factory.Factory;
import com.alipay.easysdk.kernel.Config;
import com.kaikeba.t31.order.propertis.AliPayProperties;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

/**
 * 支付宝配置
 *
 * @author zhouyu
 */
@Configuration
@EnableConfigurationProperties({AliPayProperties.class})
public class AliPayConfig implements ApplicationRunner {

    @Resource
    private AliPayProperties aliPayProperties;

    @Override
    public void run(ApplicationArguments args) {
        Config config = new Config();
        config.protocol = aliPayProperties.getProtocol();
        config.gatewayHost = aliPayProperties.getGatewayHost();
        config.signType = aliPayProperties.getSignType();
        config.appId = aliPayProperties.getAppId();
        config.merchantPrivateKey = aliPayProperties.getPrivateKey();
        config.alipayPublicKey = aliPayProperties.getPublicKey();
        config.notifyUrl = aliPayProperties.getNotifyUrl();
        config.encryptKey = aliPayProperties.getEncryptKey();
        Factory.setOptions(config);
    }
}
