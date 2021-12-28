package com.kaikeba.t31.order.service;


import com.kaikeba.t31.order.vo.MessageVO;

/**
 * 通知类接口
 *
 * @author zhouyu
 */
public interface NoticeService {

    /**
     * 发送消息
     * @param messageVO 消息体
     */
    void sendMessage(MessageVO messageVO);
}
