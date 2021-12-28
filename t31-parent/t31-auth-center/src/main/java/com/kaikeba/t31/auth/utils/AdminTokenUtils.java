package com.kaikeba.t31.auth.utils;

import com.kaikeba.t31.auth.constant.AdminTokenConstant;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.core.io.ClassPathResource;
import org.springframework.security.jwt.Jwt;
import org.springframework.security.jwt.JwtHelper;
import org.springframework.security.jwt.crypto.sign.RsaSigner;
import org.springframework.security.oauth2.provider.token.store.KeyStoreKeyFactory;

import java.io.IOException;
import java.security.KeyPair;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;


/**
 * AdminToken工具类
 * @author zhouyu
 */
public class AdminTokenUtils {

    /**
     * 获取adminToken
     *
     * @return adminToken
     * @throws IOException
     */
    public static String adminToken() throws IOException {
        // 访问证书路径
        ClassPathResource resource = new ClassPathResource(AdminTokenConstant.KEY_LOCATION);
        // 密钥工厂
        KeyStoreKeyFactory keyStoreKeyFactory = new KeyStoreKeyFactory(resource, AdminTokenConstant.KEY_PASSWORD.toCharArray());
        // 密钥对（密钥和公钥）
        KeyPair keyPair = keyStoreKeyFactory.getKeyPair(AdminTokenConstant.KEY_PASSWORD, AdminTokenConstant.KEY_PASSWORD.toCharArray());
        // 私钥
        RSAPrivateKey aPrivate = (RSAPrivateKey) keyPair.getPrivate();
        // 定义payload信息
        Map<String, Object> tokenMap = new HashMap<>(16);
        tokenMap.put(AdminTokenConstant.USER_NAME_KEY, AdminTokenConstant.USER_NAME_VALUE);
        tokenMap.put(AdminTokenConstant.CLIENT_ID_KEY, AdminTokenConstant.CLIENT_ID_VALUE);
        tokenMap.put(AdminTokenConstant.AUTHORITIES_KEY, new String[]{AdminTokenConstant.AUTHORITIES_VALUE_ROLE_ADMIN});
        // 生成jwt令牌
        Jwt jwt = JwtHelper.encode(new ObjectMapper().writeValueAsString(tokenMap), new RsaSigner(aPrivate));
        // 取出jwt令牌
        return jwt.getEncoded();
    }

}