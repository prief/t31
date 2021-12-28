package com.kaikeba.t31.admin.entity;

import com.kaikeba.t31.common.entity.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 用户角色对象实体
 *
 * @author zhouyu
 * @date 2021-12-09
 */

public class AdminRoleUser extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 角色ID
     */
    private Long roleId;

    /**
     * 用户ID
     */
    private Long userId;

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getUserId() {
        return userId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("roleId", getRoleId())
                .append("userId", getUserId())
                .toString();
    }
}
