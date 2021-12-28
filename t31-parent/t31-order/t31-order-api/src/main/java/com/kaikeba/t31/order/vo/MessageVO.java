package com.kaikeba.t31.order.vo;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @author zhouyu
 */
@Setter
@Getter
@ToString
@Builder
public class MessageVO {

    /**
     * 用户名
     */
    private String userName;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 短信标题
     */
    private String messageTitle;

    /**
     * 短信内容
     */
    private String messageContent;

}
