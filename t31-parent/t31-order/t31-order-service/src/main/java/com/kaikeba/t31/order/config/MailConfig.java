package com.kaikeba.t31.order.config;

import com.kaikeba.t31.order.propertis.MailProperties;
import com.sun.mail.util.MailSSLSocketFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;
import java.util.Properties;

/**
 * 邮件配置类
 *
 * @author zhouyu
 */
@Slf4j
@Configuration
public class MailConfig {

    public static final String MAIL_SESSION_PROPERTY_NAME_MAIL_HOST = "mail.host";

    public static final String MAIL_SESSION_PROPERTY_NAME_MAIL_TRANSPORT_PROTOCOL = "mail.transport.protocol";

    public static final String MAIL_SESSION_PROPERTY_NAME_MAIL_SMTP_AUTH = "mail.smtp.auth";

    public static final String MAIL_SESSION_PROPERTY_NAME_MAIL_SMTP_SSL_ENABLE = "mail.smtp.ssl.enable";

    public static final String MAIL_SESSION_PROPERTY_NAME_MAIL_SMTP_SSL_SOCKETFACTORY = "mail.smtp.ssl.socketFactory";

    @Resource
    private MailProperties mailProperties;

    @Bean
    public MimeMessage mimeMessage() {
        // 创建邮件对象
        MimeMessage mimeMessage = new MimeMessage(session());
        try {
            // 邮件发送人
            mimeMessage.setFrom(new InternetAddress(mailProperties.getUser()));
        } catch (MessagingException e) {
            log.error("设置邮件发送人发生异常，errMsg:{}", e.getMessage());
        }
        return mimeMessage;
    }

    /**
     * Session对象
     *
     * @return javax.mail.Session
     */
    @Bean
    public Session session() {
        Properties properties = new Properties();
        properties.setProperty(MAIL_SESSION_PROPERTY_NAME_MAIL_HOST, mailProperties.getMailHost());
        properties.setProperty(MAIL_SESSION_PROPERTY_NAME_MAIL_TRANSPORT_PROTOCOL, mailProperties.getMailTransportProtocol());
        properties.setProperty(MAIL_SESSION_PROPERTY_NAME_MAIL_SMTP_AUTH, mailProperties.getMailSmtpAuth());
        // QQ存在一个特性设置SSL加密
        MailSSLSocketFactory sf = null;
        try {
            sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
        } catch (GeneralSecurityException e) {
            log.error("设置SSL加密异常，errMsg:{}", e.getMessage());
        }
        properties.put(MAIL_SESSION_PROPERTY_NAME_MAIL_SMTP_SSL_ENABLE, "true");
        properties.put(MAIL_SESSION_PROPERTY_NAME_MAIL_SMTP_SSL_SOCKETFACTORY, sf);
        // 创建一个session对象
        return Session.getDefaultInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(mailProperties.getUser(), mailProperties.getPassword());
            }
        });
    }
}
