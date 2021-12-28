package com.kaikeba.t31.order.service.impl;

import com.kaikeba.t31.order.propertis.MailProperties;
import com.kaikeba.t31.order.service.NoticeService;
import com.kaikeba.t31.order.vo.MessageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * 邮件通知实现类
 *
 * @author zhouyu
 */
@Slf4j
@Service("mailNoticeService")
public class MailNoticeServiceImpl implements NoticeService {

    @Resource
    private Session session;

    @Resource
    private MimeMessage mimeMessage;

    @Resource
    private MailProperties mailProperties;

    /**
     * 发送消息
     *
     * @param messageVO 消息体
     */
    @Override
    public void sendMessage(MessageVO messageVO) {
        // 获取连接对象
        Transport transport = null;
        try {
            transport = session.getTransport();
        } catch (NoSuchProviderException e) {
            log.error("获取连接对象异常", e);
        }
        // 连接服务器
        try {
            assert transport != null;
            transport.connect(mailProperties.getMailHost(), mailProperties.getUser(), mailProperties.getPassword());
        } catch (MessagingException e) {
            log.error("连接服务器异常", e);
        }
        try {
            mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(messageVO.getEmail()));
            // 邮件标题
            mimeMessage.setSubject(messageVO.getMessageTitle());
            // 邮件内容
            mimeMessage.setContent(messageVO.getMessageContent(), "text/html;charset=UTF-8");
            // 发送邮件
            transport.sendMessage(mimeMessage, mimeMessage.getAllRecipients());
            // 关闭连接
            transport.close();
        } catch (MessagingException e) {
            log.error("邮件发送异常", e);
        }
        log.info("邮件发送完毕，邮箱地址:{}", messageVO.getEmail());
    }
}
