package com.kaikeba.t31.order.service.impl;

import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.kaikeba.t31.order.propertis.AliSmsProperties;
import com.kaikeba.t31.order.service.NoticeService;
import com.kaikeba.t31.order.vo.MessageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 短信通知实现类
 *
 * @author zhouyu
 */
@Slf4j
@Service("smsNoticeService")
public class SmsNoticeServiceImpl implements NoticeService {

    @Resource
    private IAcsClient acsClient;

    @Resource
    private AliSmsProperties aliSmsProperties;

    /**
     * 发送消息
     *
     * @param messageVO 消息体
     */
    @Override
    public void sendMessage(MessageVO messageVO) {
        SendSmsRequest sendSmsRequest = new SendSmsRequest();
        sendSmsRequest.setSignName(aliSmsProperties.getSignName());
        sendSmsRequest.setTemplateCode(aliSmsProperties.getTemplateCode());
        sendSmsRequest.setPhoneNumbers(messageVO.getMobile());
        try {
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(sendSmsRequest);
            if (AliSmsProperties.OK.equals(sendSmsResponse.getCode())) {
                log.info("send success[code={}, message={}]", sendSmsResponse.getCode(), sendSmsResponse.getMessage());
            } else {
                log.error("send fail[code={}, message={}]", sendSmsResponse.getCode(), sendSmsResponse.getMessage());
            }
        } catch (ClientException e) {
            log.error("短信通知时发生异常，errMsg:{}", e.getMessage());
        }
    }
}
