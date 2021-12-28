package com.kaikeba.t31.common.exception;

/**
 * 自定义异常
 *
 * @author zhouyu
 */
public class CustomException extends RuntimeException {

    public CustomException() {
        super();
    }

    public CustomException(String msg) {
        super(msg);
    }
}
