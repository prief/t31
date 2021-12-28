package com.kaikeba.t31.auth.client;


import com.kaikeba.t31.admin.api.UserApi;
import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.entity.AdminUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户客户端
 *
 * @author zhouyu
 */
@FeignClient(name = "admin-service")
public interface UserClient extends UserApi {

    /**
     * 用户客户端降级工程
     */
    @Component
    @RequestMapping("/fallback")
    class UserClientFallback implements UserClient {

        private static final Logger LOGGER = LoggerFactory.getLogger(UserClientFallback.class);

        @Override
        public AdminUser getByUserName(String userName) {
            LOGGER.info("异常发生，进入fallback方法");
            return new AdminUser();
        }

        @Override
        public List<AdminRole> getRolesByUserId(Long id) {
            LOGGER.info("异常发生，进入fallback方法");
            return new ArrayList<>();
        }

        @Override
        public void addPoint(Long point, String username) {
            LOGGER.info("异常发生，进入fallback方法");
        }
    }

}
