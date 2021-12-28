package com.kaikeba.t31.ticket.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainSkuEntity;
import com.kaikeba.t31.ticket.service.TrainSkuService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 时刻表控制器
 *
 * @author zhouyu
 */
@RestController
@RequestMapping("/sku")
public class TrainSkuController {

    @Resource
    private TrainSkuService trainSkuService;

    /**
     * 火车票SKU分页列表
     *
     * @param trainSkuEntity 火车票SKU查询实体
     * @return 火车票SKU分页列表
     */
    @PostMapping("/list-page")
    public Result list(@RequestBody TrainSkuEntity trainSkuEntity) {
        return trainSkuService.pageList(trainSkuEntity);
    }

    /**
     * 根据id加载火车票SKU信息
     *
     * @param id 火车票SKUid
     * @return {@link TrainSkuEntity}
     */
    @GetMapping("/info/{id}")
    public TrainSkuEntity info(@PathVariable Long id) {
        return trainSkuService.getById(id);
    }


    /**
     * 新增火车票SKU
     *
     * @param trainSkuEntity 入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainSkuEntity trainSkuEntity) {
        return Result.success(trainSkuService.saveOrUpdate(trainSkuEntity));
    }

    /**
     * 删除火车票SKU
     *
     * @param id 入参
     * @return 是否成功
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(trainSkuService.removeById(id));
    }

    /**
     * 批量删除火车票SKU
     *
     * @param ids 入参
     * @return 是否成功
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(trainSkuService.removeByIds(ids));
    }

}
