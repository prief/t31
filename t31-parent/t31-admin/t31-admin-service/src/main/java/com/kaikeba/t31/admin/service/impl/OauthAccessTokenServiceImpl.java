package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.OauthAccessToken;
import com.kaikeba.t31.admin.mapper.OauthAccessTokenMapper;
import com.kaikeba.t31.admin.service.OauthAccessTokenService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * oauth_access_tokenService业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class OauthAccessTokenServiceImpl extends ServiceImpl<OauthAccessTokenMapper, OauthAccessToken> implements OauthAccessTokenService {


    /**
     * 查询oauth_access_token
     *
     * @param authenticationId oauth_access_token主键
     * @return oauth_access_token
     */
    @Override
    public OauthAccessToken selectOauthAccessTokenByAuthenticationId(String authenticationId) {
        return baseMapper.selectOauthAccessTokenByAuthenticationId(authenticationId);
    }

    /**
     * 查询oauth_access_token列表
     *
     * @param oauthAccessToken oauth_access_token
     * @return oauth_access_token
     */
    @Override
    public List<OauthAccessToken> selectOauthAccessTokenList(OauthAccessToken oauthAccessToken) {
        return baseMapper.selectOauthAccessTokenList(oauthAccessToken);
    }

    /**
     * 新增oauth_access_token
     *
     * @param oauthAccessToken oauth_access_token
     * @return 结果
     */
    @Override
    public int insertOauthAccessToken(OauthAccessToken oauthAccessToken) {
        return baseMapper.insertOauthAccessToken(oauthAccessToken);
    }

    /**
     * 修改oauth_access_token
     *
     * @param oauthAccessToken oauth_access_token
     * @return 结果
     */
    @Override
    public int updateOauthAccessToken(OauthAccessToken oauthAccessToken) {
        return baseMapper.updateOauthAccessToken(oauthAccessToken);
    }

    /**
     * 批量删除oauth_access_token
     *
     * @param authenticationIds 需要删除的oauth_access_token主键
     * @return 结果
     */
    @Override
    public int deleteOauthAccessTokenByAuthenticationIds(String[] authenticationIds) {
        return baseMapper.deleteOauthAccessTokenByAuthenticationIds(authenticationIds);
    }

    /**
     * 删除oauth_access_token信息
     *
     * @param authenticationId oauth_access_token主键
     * @return 结果
     */
    @Override
    public int deleteOauthAccessTokenByAuthenticationId(String authenticationId) {
        return baseMapper.deleteOauthAccessTokenByAuthenticationId(authenticationId);
    }
}
