package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.OauthRefreshToken;

import java.util.List;

/**
 * oauth_refresh_tokenMapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface OauthRefreshTokenMapper extends BaseMapper<OauthRefreshToken> {
    /**
     * 查询oauth_refresh_token
     *
     * @param tokenId oauth_refresh_token主键
     * @return oauth_refresh_token
     */
    OauthRefreshToken selectOauthRefreshTokenByTokenId(String tokenId);

    /**
     * 查询oauth_refresh_token列表
     *
     * @param oauthRefreshToken oauth_refresh_token
     * @return oauth_refresh_token集合
     */
    List<OauthRefreshToken> selectOauthRefreshTokenList(OauthRefreshToken oauthRefreshToken);

    /**
     * 新增oauth_refresh_token
     *
     * @param oauthRefreshToken oauth_refresh_token
     * @return 结果
     */
    int insertOauthRefreshToken(OauthRefreshToken oauthRefreshToken);

    /**
     * 修改oauth_refresh_token
     *
     * @param oauthRefreshToken oauth_refresh_token
     * @return 结果
     */
    int updateOauthRefreshToken(OauthRefreshToken oauthRefreshToken);

    /**
     * 删除oauth_refresh_token
     *
     * @param tokenId oauth_refresh_token主键
     * @return 结果
     */
    int deleteOauthRefreshTokenByTokenId(String tokenId);

    /**
     * 批量删除oauth_refresh_token
     *
     * @param tokenIds 需要删除的数据主键集合
     * @return 结果
     */
    int deleteOauthRefreshTokenByTokenIds(String[] tokenIds);
}
