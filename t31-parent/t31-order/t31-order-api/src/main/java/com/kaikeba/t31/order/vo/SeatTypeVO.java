package com.kaikeba.t31.order.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 座位类型VO
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class SeatTypeVO {

    /**
     * 座位类型
     */
    private String type;

    /**
     * 座位价格
     */
    private Double price;

}
