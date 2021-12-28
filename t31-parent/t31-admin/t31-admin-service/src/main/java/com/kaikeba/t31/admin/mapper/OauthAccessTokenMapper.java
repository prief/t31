package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.OauthAccessToken;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface OauthAccessTokenMapper extends BaseMapper<OauthAccessToken> {
    /**
     * 查询【请填写功能名称】
     *
     * @param authenticationId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    OauthAccessToken selectOauthAccessTokenByAuthenticationId(String authenticationId);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param oauthAccessToken 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    List<OauthAccessToken> selectOauthAccessTokenList(OauthAccessToken oauthAccessToken);

    /**
     * 新增【请填写功能名称】
     *
     * @param oauthAccessToken 【请填写功能名称】
     * @return 结果
     */
    int insertOauthAccessToken(OauthAccessToken oauthAccessToken);

    /**
     * 修改【请填写功能名称】
     *
     * @param oauthAccessToken 【请填写功能名称】
     * @return 结果
     */
    int updateOauthAccessToken(OauthAccessToken oauthAccessToken);

    /**
     * 删除【请填写功能名称】
     *
     * @param authenticationId 【请填写功能名称】主键
     * @return 结果
     */
    int deleteOauthAccessTokenByAuthenticationId(String authenticationId);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param authenticationIds 需要删除的数据主键集合
     * @return 结果
     */
    int deleteOauthAccessTokenByAuthenticationIds(String[] authenticationIds);
}
