package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.OauthAccessToken;
import com.kaikeba.t31.admin.service.OauthAccessTokenService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * OauthAccessToken控制器
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/token")
public class OauthAccessTokenController {

    @Resource
    private OauthAccessTokenService oauthAccessTokenService;

    /**
     * 查询OauthAccessToken列表
     *
     * @param oauthAccessToken 入参
     * @return OauthAccessToken列表
     */
    @GetMapping("/list")
    public Result list(OauthAccessToken oauthAccessToken) {
        List<OauthAccessToken> list = oauthAccessTokenService.selectOauthAccessTokenList(oauthAccessToken);
        return Result.success(list);
    }

    /**
     * 获取OauthAccessToken详细信息
     *
     * @param authenticationId authenticationId
     * @return {@link OauthAccessToken}
     */
    @GetMapping(value = "/{authenticationId}")
    public Result getInfo(@PathVariable("authenticationId") String authenticationId) {
        return Result.success(oauthAccessTokenService.selectOauthAccessTokenByAuthenticationId(authenticationId));
    }

    /**
     * 新增OauthAccessToken
     *
     * @param oauthAccessToken 入参
     * @return 新增数
     */
    @PostMapping
    public Result add(@RequestBody OauthAccessToken oauthAccessToken) {
        return Result.success(oauthAccessTokenService.insertOauthAccessToken(oauthAccessToken));
    }

    /**
     * 修改OauthAccessToken
     *
     * @param oauthAccessToken 入参
     * @return 更新数
     */
    @PutMapping
    public Result update(@RequestBody OauthAccessToken oauthAccessToken) {
        return Result.success(oauthAccessTokenService.updateOauthAccessToken(oauthAccessToken));
    }

    /**
     * 删除OauthAccessToken
     *
     * @param authenticationIds 入参
     * @return 删除数
     */
    @DeleteMapping("/{authenticationIds}")
    public Result remove(@PathVariable String[] authenticationIds) {
        return Result.success(oauthAccessTokenService.deleteOauthAccessTokenByAuthenticationIds(authenticationIds));
    }
}
