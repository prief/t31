package com.kaikeba.t31.admin.service;

import com.kaikeba.t31.admin.dto.LoginRequestDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.common.OAuth2AccessToken;

/**
 * 登录接口
 *
 * @author zhouyu
 */
public interface LoginService {


    /**
     * 用户登录
     *
     * @param loginRequestDTO 登录请求DTO
     * @return org.springframework.http.ResponseEntity
     */
    ResponseEntity<OAuth2AccessToken> login(LoginRequestDTO loginRequestDTO);
}
