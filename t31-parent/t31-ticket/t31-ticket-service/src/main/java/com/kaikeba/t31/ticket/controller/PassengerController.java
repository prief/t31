package com.kaikeba.t31.ticket.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.ticket.entity.TrainPassenger;
import com.kaikeba.t31.ticket.service.PassengerService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


/**
 * 乘客管理控制器
 *
 * @author zhouyu
 */
@RestController
@RequestMapping("/passenger")
public class PassengerController {

    @Resource
    private PassengerService passengerService;

    /**
     * 获取乘客信息列表
     *
     * @param entity 乘客信息查询实体类
     * @return 乘客信息分页列表
     */
    @PostMapping("/list-page")
    public Result listPage(@RequestBody TrainPassenger entity) {
        return Result.success(passengerService.listPage(entity));
    }

    /**
     * 根据用户id查询乘客列表
     *
     * @return 乘客列表
     */
    @PostMapping("/list")
    public List<TrainPassenger> list() {
        return passengerService.selectPassengerListByUserId();
    }

    /**
     * 根据id加载乘客信息
     *
     * @param id 乘客id
     * @return
     */
    @GetMapping("/info/{id}")
    public TrainPassenger info(@PathVariable Long id) {
        return passengerService.getById(id);
    }

    /**
     * 加载修改的车厢信息
     *
     * @param id 车厢id
     * @return
     */
    @GetMapping("/info/{id}/get")
    public TrainPassenger getInfo(@PathVariable Long id) {
        return passengerService.getById(id);
    }


    /**
     * 新增乘客
     *
     * @param TrainPassenger 乘客明细
     * @return 是否新增成功
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainPassenger TrainPassenger) {
        passengerService.add(TrainPassenger);
        return Result.success();
    }

    /**
     * 删除乘客
     *
     * @param id 主键
     * @return 是否删除成功
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(passengerService.removeById(id));
    }

    /**
     * 批量删除乘客
     *
     * @param ids 主键集合
     * @return 是否删除成功
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(passengerService.removeByIds(ids));
    }
}
