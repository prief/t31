package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.OauthRefreshToken;
import com.kaikeba.t31.admin.mapper.OauthRefreshTokenMapper;
import com.kaikeba.t31.admin.service.OauthRefreshTokenService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * oauth_refresh_token业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class OauthRefreshTokenServiceImpl extends ServiceImpl<OauthRefreshTokenMapper, OauthRefreshToken> implements OauthRefreshTokenService {


    /**
     * 查询oauth_refresh_token
     *
     * @param tokenId oauth_refresh_token主键
     * @return oauth_refresh_token
     */
    @Override
    public OauthRefreshToken selectOauthRefreshTokenByTokenId(String tokenId) {
        return baseMapper.selectOauthRefreshTokenByTokenId(tokenId);
    }

    /**
     * 查询oauth_refresh_token列表
     *
     * @param oauthRefreshToken oauth_refresh_token
     * @return oauth_refresh_token
     */
    @Override
    public List<OauthRefreshToken> selectOauthRefreshTokenList(OauthRefreshToken oauthRefreshToken) {
        return baseMapper.selectOauthRefreshTokenList(oauthRefreshToken);
    }

    /**
     * 新增oauth_refresh_token
     *
     * @param oauthRefreshToken oauth_refresh_token
     * @return 结果
     */
    @Override
    public int insertOauthRefreshToken(OauthRefreshToken oauthRefreshToken) {
        return baseMapper.insertOauthRefreshToken(oauthRefreshToken);
    }

    /**
     * 修改oauth_refresh_token
     *
     * @param oauthRefreshToken oauth_refresh_token
     * @return 结果
     */
    @Override
    public int updateOauthRefreshToken(OauthRefreshToken oauthRefreshToken) {
        return baseMapper.updateOauthRefreshToken(oauthRefreshToken);
    }

    /**
     * 批量删除oauth_refresh_token
     *
     * @param tokenIds 需要删除的oauth_refresh_token主键
     * @return 结果
     */
    @Override
    public int deleteOauthRefreshTokenByTokenIds(String[] tokenIds) {
        return baseMapper.deleteOauthRefreshTokenByTokenIds(tokenIds);
    }

    /**
     * 删除oauth_refresh_token信息
     *
     * @param tokenId oauth_refresh_token主键
     * @return 结果
     */
    @Override
    public int deleteOauthRefreshTokenByTokenId(String tokenId) {
        return baseMapper.deleteOauthRefreshTokenByTokenId(tokenId);
    }
}
