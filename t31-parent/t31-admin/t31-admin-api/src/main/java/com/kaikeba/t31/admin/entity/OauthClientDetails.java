package com.kaikeba.t31.admin.entity;

import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * oauth_client_details对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class OauthClientDetails extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 客户端Id
     */
    private String clientId;

    /**
     * 资源Ids
     */
    private String resourceIds;

    /**
     * 客户端秘钥
     */
    private String clientSecret;

    /**
     * 权限
     */
    private String scope;

    /**
     * 认证类型
     */
    private String authorizedGrantTypes;

    /**
     * webServerRedirectUri
     */
    private String webServerRedirectUri;

    /**
     * authorities
     */
    private String authorities;

    /**
     * accessTokenValidity
     */
    private Long accessTokenValidity;

    /**
     * refreshTokenValidity
     */
    private Long refreshTokenValidity;

    /**
     * additionalInformation
     */
    private String additionalInformation;

    /**
     * autoapprove
     */
    private String autoapprove;


}
