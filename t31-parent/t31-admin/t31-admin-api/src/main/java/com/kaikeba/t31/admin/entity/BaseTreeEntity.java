package com.kaikeba.t31.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.kaikeba.t31.common.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 树状结构实体类父类，包括父节点id等
 *
 * @author zhouyu
 */
@Setter
@Getter
@ToString
public class BaseTreeEntity extends BaseEntity {

    /**
     * 父节点id
     */
    private Long parentId;

    /**
     * 节点名称
     */
    private String title;

    /**
     * 是否展开节点
     */
    @TableField("`is_expand`")
    private Boolean expand = false;

}
