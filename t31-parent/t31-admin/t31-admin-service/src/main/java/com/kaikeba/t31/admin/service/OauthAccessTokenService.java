package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.OauthAccessToken;

import java.util.List;

/**
 * oauth_access_tokenService接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface OauthAccessTokenService extends IService<OauthAccessToken> {

    /**
     * 查询oauth_access_token
     *
     * @param authenticationId oauth_access_token主键
     * @return oauth_access_token
     */
    OauthAccessToken selectOauthAccessTokenByAuthenticationId(String authenticationId);

    /**
     * 查询oauth_access_token列表
     *
     * @param oauthAccessToken oauth_access_token
     * @return oauth_access_token集合
     */
    List<OauthAccessToken> selectOauthAccessTokenList(OauthAccessToken oauthAccessToken);

    /**
     * 新增oauth_access_token
     *
     * @param oauthAccessToken oauth_access_token
     * @return 结果
     */
    int insertOauthAccessToken(OauthAccessToken oauthAccessToken);

    /**
     * 修改oauth_access_token
     *
     * @param oauthAccessToken oauth_access_token
     * @return 结果
     */
    int updateOauthAccessToken(OauthAccessToken oauthAccessToken);

    /**
     * 批量删除oauth_access_token
     *
     * @param authenticationIds 需要删除的oauth_access_token主键集合
     * @return 结果
     */
    int deleteOauthAccessTokenByAuthenticationIds(String[] authenticationIds);

    /**
     * 删除oauth_access_token信息
     *
     * @param authenticationId oauth_access_token主键
     * @return 结果
     */
    int deleteOauthAccessTokenByAuthenticationId(String authenticationId);
}
