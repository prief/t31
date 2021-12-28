package com.kaikeba.t31.admin.entity;

import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 字典对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */
@Setter
@Getter
@ToString
public class AdminDict extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 描述
     */
    private String description;

    /**
     * 标签名
     */
    private String label;

    /**
     * 类型
     */
    private String type;

    /**
     * 数据值
     */
    private String value;

}
