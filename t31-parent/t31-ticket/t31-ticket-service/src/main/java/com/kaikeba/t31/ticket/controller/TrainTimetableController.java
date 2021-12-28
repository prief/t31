package com.kaikeba.t31.ticket.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainTimetable;
import com.kaikeba.t31.ticket.service.TrainTimetableService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 列车时刻表Controller
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/timetable")
public class TrainTimetableController {

    @Resource
    private TrainTimetableService trainTimetableService;

    /**
     * 查询列车时刻表列表
     *
     * @param trainTimetable 入参
     * @return 分页列表
     */
    @PostMapping("/list-page")
    public Result list(@RequestBody TrainTimetable trainTimetable) {
        return Result.success(trainTimetableService.pageList(trainTimetable));
    }

    /**
     * 加载列车时刻表信息
     *
     * @param id 列车时刻表id
     * @return {@link TrainTimetable}
     */
    @GetMapping("/info/{id}")
    public TrainTimetable info(@PathVariable Long id) {
        return trainTimetableService.getById(id);
    }

    /**
     * 新增列车时刻表
     *
     * @param trainTimetable 入参
     * @return 是否成功
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainTimetable trainTimetable) {
        return Result.success(trainTimetableService.saveOrUpdate(trainTimetable));
    }

    /**
     * 删除列车时刻表
     *
     * @param id 入参
     * @return 删除数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(trainTimetableService.deleteTrainTimetableById(id));
    }

    /**
     * 批量删除列车时刻表
     *
     * @param ids 入参
     * @return 删除数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(trainTimetableService.deleteTrainTimetableByIds(ids));
    }
}
