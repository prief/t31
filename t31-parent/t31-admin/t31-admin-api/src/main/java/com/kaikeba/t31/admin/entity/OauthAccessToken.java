package com.kaikeba.t31.admin.entity;

import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * oauth_access_token对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class OauthAccessToken extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * tokenId
     */
    private String tokenId;

    /**
     * token
     */
    private String token;

    /**
     * 用户名
     */
    private String authenticationId;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 客户端ID
     */
    private String clientId;

    /**
     * authentication
     */
    private String authentication;

    /**
     * refreshToken
     */
    private String refreshToken;


}
