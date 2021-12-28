package com.kaikeba.t31.admin.utils;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @author zhouyu
 */
public class BPwdEncoderUtil {

    private static final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public static boolean matches(CharSequence rawPassword, String encodedPassword){
        return passwordEncoder.matches(rawPassword, encodedPassword);
    }
}
