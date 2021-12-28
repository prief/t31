package com.kaikeba.t31.admin.controller;

import com.kaikeba.t31.admin.entity.OauthClientDetails;
import com.kaikeba.t31.admin.service.OauthClientDetailsService;
import com.kaikeba.t31.common.response.Result;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 客户端详情Controller
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/details")
public class OauthClientDetailsController {

    @Resource
    private OauthClientDetailsService oauthClientDetailsService;

    /**
     * 查询客户端详情列表
     *
     * @param oauthClientDetails 入参
     * @return 查询客户端详情列表
     */
    @GetMapping("/list")
    public Result list(OauthClientDetails oauthClientDetails) {
        List<OauthClientDetails> list = oauthClientDetailsService.selectOauthClientDetailsList(oauthClientDetails);
        return Result.success(list);
    }


    /**
     * 获取客户端详情详细信息
     *
     * @param clientId 客户端Id
     * @return 获取客户端详情详细信息
     */
    @GetMapping(value = "/{clientId}")
    public Result getInfo(@PathVariable("clientId") String clientId) {
        return Result.success(oauthClientDetailsService.selectOauthClientDetailsByClientId(clientId));
    }

    /**
     * 新增客户端
     *
     * @param oauthClientDetails 入参
     * @return 新增数
     */
    @PostMapping
    public Result add(@RequestBody OauthClientDetails oauthClientDetails) {
        return Result.success(oauthClientDetailsService.insertOauthClientDetails(oauthClientDetails));
    }

    /**
     * 修改客户端详情
     *
     * @param oauthClientDetails 入参
     * @return 修改数
     */
    @PutMapping
    public Result info(@RequestBody OauthClientDetails oauthClientDetails) {
        return Result.success(oauthClientDetailsService.updateOauthClientDetails(oauthClientDetails));
    }

    /**
     * 删除客户端详情
     *
     * @param clientIds 客户端Ids
     * @return 删除数
     */
    @DeleteMapping("/{clientIds}")
    public Result remove(@PathVariable String[] clientIds) {
        return Result.success(oauthClientDetailsService.deleteOauthClientDetailsByClientIds(clientIds));
    }
}
