package com.kaikeba.t31.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.kaikeba.t31.admin.entity.OauthClientDetails;
import com.kaikeba.t31.admin.mapper.OauthClientDetailsMapper;
import com.kaikeba.t31.admin.service.OauthClientDetailsService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * oauth_client_details业务层处理
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Service
public class OauthClientDetailsServiceImpl extends ServiceImpl<OauthClientDetailsMapper, OauthClientDetails> implements OauthClientDetailsService {


    /**
     * 查询oauth_client_details
     *
     * @param clientId oauth_client_details主键
     * @return oauth_client_details
     */
    @Override
    public OauthClientDetails selectOauthClientDetailsByClientId(String clientId) {
        return baseMapper.selectOauthClientDetailsByClientId(clientId);
    }

    /**
     * 查询oauth_client_details列表
     *
     * @param oauthClientDetails oauth_client_details
     * @return oauth_client_details
     */
    @Override
    public List<OauthClientDetails> selectOauthClientDetailsList(OauthClientDetails oauthClientDetails) {
        return baseMapper.selectOauthClientDetailsList(oauthClientDetails);
    }

    /**
     * 新增oauth_client_details
     *
     * @param oauthClientDetails oauth_client_details
     * @return 结果
     */
    @Override
    public int insertOauthClientDetails(OauthClientDetails oauthClientDetails) {
        return baseMapper.insertOauthClientDetails(oauthClientDetails);
    }

    /**
     * 修改oauth_client_details
     *
     * @param oauthClientDetails oauth_client_details
     * @return 结果
     */
    @Override
    public int updateOauthClientDetails(OauthClientDetails oauthClientDetails) {
        return baseMapper.updateOauthClientDetails(oauthClientDetails);
    }

    /**
     * 批量删除oauth_client_details
     *
     * @param clientIds 需要删除的oauth_client_details主键
     * @return 结果
     */
    @Override
    public int deleteOauthClientDetailsByClientIds(String[] clientIds) {
        return baseMapper.deleteOauthClientDetailsByClientIds(clientIds);
    }

    /**
     * 删除oauth_client_details信息
     *
     * @param clientId oauth_client_details主键
     * @return 结果
     */
    @Override
    public int deleteOauthClientDetailsByClientId(String clientId) {
        return baseMapper.deleteOauthClientDetailsByClientId(clientId);
    }
}
