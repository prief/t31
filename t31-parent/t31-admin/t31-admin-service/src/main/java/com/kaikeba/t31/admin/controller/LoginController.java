package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.dto.LoginRequestDTO;
import com.kaikeba.t31.admin.service.LoginService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 登录控制器
 *
 * @author zhouyu
 */
@RestController
public class LoginController {

    @Resource
    private LoginService loginService;

    /**
     * 用户登录
     *
     * @param loginRequestDTO 登录请求DTO
     * @return org.springframework.http.ResponseEntity
     */
    @RequestMapping("/user/login")
    public ResponseEntity<OAuth2AccessToken> login(@RequestBody LoginRequestDTO loginRequestDTO) {
        return loginService.login(loginRequestDTO);
    }

}
