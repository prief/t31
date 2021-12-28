package com.kaikeba.t31.common.exception;

import com.kaikeba.t31.common.response.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理器
 *
 * @author zhouyu
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 订单服务异常处理
     *
     * @param exception org.springframework.validation.BindException
     * @return kkb.message.gateway.common.response.ApiResponseDTO
     */
    @ExceptionHandler(value = OrderException.class)
    public Result errorHandler(OrderException exception) {
        return new Result(10001, exception.getMessage());
    }

}
