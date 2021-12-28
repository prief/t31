package com.kaikeba.t31.admin.entity;

import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * oauth_refresh_token实体类
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class OauthRefreshToken extends BaseEntity {

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
     * authentication
     */
    private String authentication;

}
