package com.kaikeba.t31.auth.impl;

import com.kaikeba.t31.admin.entity.AdminRole;
import com.kaikeba.t31.admin.entity.AdminUser;
import com.kaikeba.t31.auth.client.UserClient;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 用户详情实现类
 *
 * @author zhouyu
 */
@Slf4j
@Service
public class UserDetailServiceImpl implements UserDetailsService {

    @Resource
    private UserClient userClient;

    /**
     * 根据用户名加载用户信息
     *
     * @param username 用户名
     * @return 用户详情
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 根据用户名称获取详细用户信息
        AdminUser user = userClient.getByUserName(username);
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
        if (user != null) {
            log.info("current user :{} ", user);
            // 获取用户的授权
            List<AdminRole> roles = userClient.getRolesByUserId(user.getId());
            // 声明授权文件
            for (AdminRole role : roles) {
                if (role != null && role.getName() != null) {
                    // Spring Security 中权限名称必须满足ROLE_XXX
                    GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(StringUtils.join("ROLE_", role.getName()));
                    grantedAuthorities.add(grantedAuthority);
                }
            }
        }
        log.info("granted authorities :{} ", grantedAuthorities);
        return new User(user.getUserName(), user.getPassword(), grantedAuthorities);
    }
}

