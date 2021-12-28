package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kaikeba.t31.admin.constant.AdminConstants;
import com.kaikeba.t31.admin.dto.LoginRequestDTO;
import com.kaikeba.t31.admin.entity.AdminUser;
import com.kaikeba.t31.admin.service.AdminUserService;
import com.kaikeba.t31.admin.service.LoginService;
import com.kaikeba.t31.admin.utils.BPwdEncoderUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.boot.autoconfigure.security.oauth2.OAuth2ClientProperties;
import org.springframework.http.*;
import org.springframework.security.oauth2.client.resource.OAuth2ProtectedResourceDetails;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.Base64;
import java.util.Collections;

/**
 * 登录实现类
 *
 * @author zhouyu
 */
@Service
public class LoginServiceImpl implements LoginService {

    @Resource
    private RestTemplate restTemplate;

    @Resource
    private AdminUserService adminUserService;

    @Resource
    private OAuth2ClientProperties oAuth2ClientProperties;

    @Resource
    private OAuth2ProtectedResourceDetails oAuth2ProtectedResourceDetails;

    /**
     * 用户登录
     *
     * @param loginRequestDTO 登录请求DTO
     * @return org.springframework.http.ResponseEntity
     */
    @Override
    public ResponseEntity<OAuth2AccessToken> login(LoginRequestDTO loginRequestDTO) {
        // 验证用户信息
        AdminUser user = adminUserService.getOne(new LambdaQueryWrapper<AdminUser>().eq(AdminUser::getUserName, loginRequestDTO.getUsername()));
        if (null == user || !BPwdEncoderUtil.matches(loginRequestDTO.getPassword(), user.getPassword())) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.set(AdminConstants.AUTHORIZATION_KEY, StringUtils.join(AdminConstants.BASIC_KEY, Base64.getEncoder().encodeToString(StringUtils.join(oAuth2ClientProperties.getClientId(), AdminConstants.SPLIT, oAuth2ClientProperties.getClientSecret()).getBytes())));
        // 组装请求参数
        MultiValueMap<String, String> map = new LinkedMultiValueMap<>(4);
        map.put(AdminConstants.USERNAME_KEY, Collections.singletonList(loginRequestDTO.getUsername()));
        map.put(AdminConstants.PASSWORD_KEY, Collections.singletonList(loginRequestDTO.getPassword()));
        map.put(AdminConstants.GRANT_TYPE_KEY, Collections.singletonList(oAuth2ProtectedResourceDetails.getGrantType()));
        map.put(AdminConstants.SCOPE_KEY, oAuth2ProtectedResourceDetails.getScope());
        // 请求到授权服务器，将授权完的用户信息存到授权服务器，并申请令牌
        return restTemplate.exchange(oAuth2ProtectedResourceDetails.getAccessTokenUri(), HttpMethod.POST, new HttpEntity(map, headers), OAuth2AccessToken.class);
    }


}
