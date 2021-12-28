package com.kaikeba.t31.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.kaikeba.t31.admin.entity.OauthClientDetails;

import java.util.List;

/**
 * oauth_client_detailsService接口
 *
 * @author zhouyu
 * @date 2021-12-09
 */
public interface OauthClientDetailsService extends IService<OauthClientDetails> {

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
     * 批量删除oauth_client_details
     *
     * @param clientIds 需要删除的oauth_client_details主键集合
     * @return 结果
     */
    int deleteOauthClientDetailsByClientIds(String[] clientIds);

    /**
     * 删除oauth_client_details信息
     *
     * @param clientId oauth_client_details主键
     * @return 结果
     */
    int deleteOauthClientDetailsByClientId(String clientId);
}
