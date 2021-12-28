package com.kaikeba.t31.common.exception;

/**
 * 订单服务异常
 *
 * @author zhouyu
 */
public class OrderException extends RuntimeException {

    public OrderException() {
        super();
    }

    public OrderException(String msg) {
        super(msg);
    }
}
