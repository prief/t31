package com.kaikeba.t31.ticket.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainCarriage;
import com.kaikeba.t31.ticket.service.TrainCarriageService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 车厢控制器
 *
 * @author zhouyu
 */
@RestController
@RequestMapping("/carriage")
public class TrainCarriageController {

    @Resource
    private TrainCarriageService trainCarriageService;

    /**
     * 查询车厢分页列表
     *
     * @param trainCarriage 入参
     * @return 分页列表明细
     */
    @PostMapping("/list-page")
    public Result list(@RequestBody TrainCarriage trainCarriage) {
        return Result.success(trainCarriageService.listPage(trainCarriage));
    }

    /**
     * 获取车厢详细信息
     *
     * @param id 主键
     * @return {@link TrainCarriage}
     */
    @GetMapping(value = "info/{id}")
    public Result info(@PathVariable("id") Long id) {
        return Result.success(trainCarriageService.selectTrainCarriageById(id));
    }

    /**
     * 加载修改的车厢信息
     *
     * @param id 车厢id
     * @return {@link TrainCarriage}
     */
    @GetMapping("/info/{id}/get")
    public TrainCarriage getInfo(@PathVariable Long id) {
        return trainCarriageService.getById(id);
    }

    /**
     * 新增车厢
     *
     * @param {@link TrainCarriage}
     * @return 是否新增成功
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainCarriage trainCarriage) {
        return Result.success(trainCarriageService.saveOrUpdate(trainCarriage));
    }

    /**
     * 删除车厢
     *
     * @param id 入参
     * @return 成功数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(trainCarriageService.deleteTrainCarriageById(id));
    }

    /**
     * 批量删除车厢
     *
     * @param ids 入参
     * @return 成功数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(trainCarriageService.deleteTrainCarriageByIds(ids));
    }
}
