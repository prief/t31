package com.kaikeba.t31.ticket.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainTimetable;
import com.kaikeba.t31.ticket.service.TimetableService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 时刻表查询控制器
 *
 * @author zhouyu
 */
@RestController
@RequestMapping("/scheduler")
public class SchedulerController {

    @Resource
    private TimetableService timetableService;

    /**
     * 列车时刻分页列表
     *
     * @param TrainTimetable 列车时刻查询实体
     * @return 列车时刻分页列表
     */
    @PostMapping("/list-page")
    public Result listPage(@RequestBody TrainTimetable TrainTimetable) {
        return Result.success(timetableService.listPage(TrainTimetable));
    }

    /**
     * 出发站列表
     *
     * @param fromStation 出发站
     * @return 出发站列表
     */
    @GetMapping("/from-stations")
    public List<String> getFromStations(String fromStation) {
        return timetableService.getFromStations(fromStation);
    }

    /**
     * 到达站列表
     *
     * @param toStation 到达站
     * @return 到达站列表
     */
    @GetMapping("/to-stations")
    public List<String> getToStations(String toStation) {
        return timetableService.getToStations(toStation);
    }


    /**
     * 新增时刻表
     *
     * @param TrainTimetable 入参
     * @return 成功数
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainTimetable TrainTimetable) {
        return Result.success(timetableService.saveOrUpdate(TrainTimetable));
    }

    /**
     * 删除时刻表
     *
     * @param id 入参
     * @return 成功数
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(timetableService.removeById(id));
    }

    /**
     * 批量删除时刻表
     *
     * @param ids 入参
     * @return 成功数
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(timetableService.removeByIds(ids));
    }

}
