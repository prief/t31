package com.kaikeba.t31.ticket.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainStation;
import com.kaikeba.t31.ticket.service.TrainStationService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 经停站Controller
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/station")
public class TrainStationController {

    @Resource
    private TrainStationService trainStationService;

    /**
     * 查询经停站分页列表
     *
     * @param trainStation 入参
     * @return 分页列表
     */
    @PostMapping("/list-page")
    public Result list(@RequestBody TrainStation trainStation) {
        return Result.success(trainStationService.pageList(trainStation));
    }

    /**
     * 加载修改的经停站信息
     *
     * @param id 经停站id
     * @return {@link TrainStation}
     */
    @GetMapping("/info/{id}")
    public TrainStation info(@PathVariable Long id) {
        return trainStationService.getById(id);
    }

    /**
     * 新增经停站
     *
     * @param trainStation 入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainStation trainStation) {
        return Result.success(trainStationService.saveOrUpdate(trainStation));
    }

    /**
     * 删除经停站
     *
     * @param id 入参
     * @return 删除数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(trainStationService.deleteTrainStationById(id));
    }

    /**
     * 批量删除经停站
     *
     * @param ids 入参
     * @return 删除数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(trainStationService.deleteTrainStationByIds(ids));
    }
}
