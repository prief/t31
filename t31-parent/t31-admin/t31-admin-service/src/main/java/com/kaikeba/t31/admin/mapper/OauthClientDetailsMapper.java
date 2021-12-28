package com.kaikeba.t31.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kaikeba.t31.admin.entity.OauthClientDetails;

import java.util.List;

/**
 * oauth_client_detailsMapper接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface OauthClientDetailsMapper extends BaseMapper<OauthClientDetails> {
    /**
     * 查询oauth_client_details
     *
     * @param clientId oauth_client_details主键
     * @return oauth_client_details
     */
    OauthClientDetails selectOauthClientDetailsByClientId(String clientId);

    /**
     * 查询oauth_client_details列表
     *
     * @param oauthClientDetails oauth_client_details
     * @return oauth_client_details集合
     */
    List<OauthClientDetails> selectOauthClientDetailsList(OauthClientDetails oauthClientDetails);

    /**
     * 新增oauth_client_details
     *
     * @param oauthClientDetails oauth_client_details
     * @return 结果
     */
    int insertOauthClientDetails(OauthClientDetails oauthClientDetails);

    /**
     * 修改oauth_client_details
     *
     * @param oauthClientDetails oauth_client_details
     * @return 结果
     */
    int updateOauthClientDetails(OauthClientDetails oauthClientDetails);

    /**
     * 删除oauth_client_details
     *
     * @param clientId oauth_client_details主键
     * @return 结果
     */
    int deleteOauthClientDetailsByClientId(String clientId);

    /**
     * 批量删除oauth_client_details
     *
     * @param clientIds 需要删除的数据主键集合
     * @return 结果
     */
    int deleteOauthClientDetailsByClientIds(String[] clientIds);
}
