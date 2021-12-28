package com.kaikeba.t31.ticket.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class SeatTypeVo {

    /**
     *座位类型
     */
    private String type;
    /**
     *座位价格
     */
    private Double price;

}
