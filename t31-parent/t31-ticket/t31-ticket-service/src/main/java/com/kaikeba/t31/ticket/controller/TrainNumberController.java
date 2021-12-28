package com.kaikeba.t31.ticket.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainNumberEntity;
import com.kaikeba.t31.ticket.service.TrainNumberService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 车次控制器
 *
 * @author zhouyu
 */
@RestController
@RequestMapping("/number")
public class TrainNumberController {

    @Resource
    private TrainNumberService trainNumberService;

    /**
     * 车次分页列表
     *
     * @param trainNumberEntity 车次查询实体
     * @return 车次分页列表
     */
    @PostMapping("/list-page")
    public Result listPage(@RequestBody TrainNumberEntity trainNumberEntity) {
        return Result.success(trainNumberService.listPage(trainNumberEntity));
    }

    /**
     * 车次列表
     *
     * @param trainNumberEntity 车次实体
     * @return 车次列表
     */
    @PostMapping("/list")
    public List<TrainNumberEntity> list(@RequestBody TrainNumberEntity trainNumberEntity) {
        return trainNumberService.list(new LambdaQueryWrapper<TrainNumberEntity>().like(TrainNumberEntity::getNumber, trainNumberEntity.getNumber()).select(TrainNumberEntity::getNumber));
    }

    /**
     * 始发站列表
     *
     * @param startStation 始发站名称
     * @return 始发站列表
     */
    @GetMapping("/start-stations")
    public List<String> getStartStations(String startStation) {
        return trainNumberService.getStartStations(startStation);
    }

    /**
     * 终点站列表
     *
     * @param endStation 终点站名称
     * @return 终点站列表
     */
    @GetMapping("/end-stations")
    public List<String> getEndStations(String endStation) {
        return trainNumberService.getEndStations(endStation);
    }

    /**
     * 根据id加载车次信息
     *
     * @param id 车次id
     * @return {@link TrainNumberEntity}
     */
    @GetMapping("/info/{id}")
    public TrainNumberEntity info(@PathVariable Long id) {
        return trainNumberService.getById(id);
    }

    /**
     * 新增车次
     *
     * @param trainNumberEntity 入参
     * @return 成功数
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainNumberEntity trainNumberEntity) {
        return Result.success(trainNumberService.saveOrUpdate(trainNumberEntity));
    }

    /**
     * 删除车次
     *
     * @param id 入参
     * @return 成功数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(trainNumberService.removeById(id));
    }

    /**
     * 批量删除车次
     *
     * @param ids 入参
     * @return 成功数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(trainNumberService.removeByIds(ids));
    }
}
