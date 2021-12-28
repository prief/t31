package com.kaikeba.t31.auth.interceptor;

import com.kaikeba.t31.auth.constant.AdminTokenConstant;
import com.kaikeba.t31.auth.utils.AdminTokenUtils;
import feign.RequestInterceptor;
import feign.RequestTemplate;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * token拦截器
 *
 * @author 雪松
 */
@Slf4j
@Component
public class TokenRequestInterceptor implements RequestInterceptor {

    @Override
    public void apply(RequestTemplate requestTemplate) {
        String token = null;
        try {
            token = AdminTokenUtils.adminToken();
        } catch (IOException e) {
            log.error("获取token时发生异常，errMsg:{}", e.getMessage());
        }
        requestTemplate.header(StringUtils.join(AdminTokenConstant.AUTHORIZATION_KEY, AdminTokenConstant.BEARER_KEY, token));
    }
}
