package com.kaikeba.t31.gateway.filter;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebFilter;
import org.springframework.web.server.WebFilterChain;
import reactor.core.publisher.Mono;

/**
 * 请求日志过滤器
 *
 * @author zhouyu
 */
@Slf4j
@Configuration
public class RequestLogFilter implements WebFilter, Ordered {

    /**
     * 打印请求日志
     *
     * @param exchange org.springframework.web.server.ServerWebExchange
     * @param chain    org.springframework.web.server.WebFilterChain
     * @return reactor.core.publisher.Mono
     */
    @Override
    public Mono<Void> filter(ServerWebExchange exchange, WebFilterChain chain) {
        return chain.filter(exchange).then(Mono.fromRunnable(() -> log.info("::: RequestLogFilter URL: {}", exchange.getRequest().getURI())));
    }

    @Override
    public int getOrder() {
        return 0;
    }
}
