package com.kaikeba.t31.order.controller;

import com.kaikeba.t31.common.response.Result;
import com.kaikeba.t31.order.entity.TrainOrder;
import com.kaikeba.t31.order.service.TrainOrderService;
import com.kaikeba.t31.order.vo.SeatTypeVO;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 车票订单Controller
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@RestController
@RequestMapping("/order")
public class TrainOrderController {

    @Resource
    private TrainOrderService trainOrderService;

    /**
     * 订单分页列表
     *
     * @param trainOrderEntity 订单查询模型
     * @return 订单分页列表
     */
    @PostMapping("/list-page")
    public Result listPage(@RequestBody TrainOrder trainOrderEntity) {
        return Result.success(trainOrderService.listPage(trainOrderEntity));
    }

    /**
     * 通过车次获取座位类型
     *
     * @param numberId 车次
     * @return 座位类型列表
     */
    @GetMapping("/list-seat-type/{numberId}")
    public List<SeatTypeVO> getSeatTypeByNumberId(@PathVariable("numberId") Long numberId) {
        return trainOrderService.getSeatTypeByNumberId(numberId);
    }

    /**
     * 获取车票订单详细信息
     */
    @GetMapping(value = "/{id}")
    public Result getInfo(@PathVariable("id") Long id) {
        return Result.success(trainOrderService.selectTrainOrderById(id));
    }

    /**
     * 加载修改的车票订单信息
     *
     * @param id 车票订单id
     * @return
     */
    @GetMapping("/info/{id}")
    public TrainOrder info(@PathVariable Long id) {
        return trainOrderService.getById(id);
    }

    /**
     * 新增车票订单
     */
    @PostMapping("save")
    public Result add(@RequestBody TrainOrder trainOrder) throws Exception {
        trainOrderService.insertTrainOrder(trainOrder);
        return Result.success(trainOrder);
    }

    /**
     * 删除车票订单
     */
    @GetMapping("delete/{id}")
    public Result remove(@PathVariable("id") Long id) {
        return Result.success(trainOrderService.deleteTrainOrderById(id));
    }

    /**
     * 批量删除车票订单
     */
    @RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
    public Result delete(@RequestParam List<Long> ids) {
        return Result.success(trainOrderService.deleteTrainOrderByIds(ids));
    }
}
