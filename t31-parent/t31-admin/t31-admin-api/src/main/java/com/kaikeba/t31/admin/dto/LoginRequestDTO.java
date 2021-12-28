package com.kaikeba.t31.admin.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 登录请求DTO
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class LoginRequestDTO {

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;
}
