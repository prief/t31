/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.100.54
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 192.168.100.54:3306
 Source Schema         : t31

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 20/12/2021 19:06:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_dept
-- ----------------------------
DROP TABLE IF EXISTS `admin_dept`;
CREATE TABLE `admin_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(500) DEFAULT NULL COMMENT '节点名称',
  `sequence` int(11) DEFAULT NULL COMMENT '排序字段',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父节点id',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `comment` varchar(2000) DEFAULT NULL COMMENT '描述',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `is_expand` tinyint(1) DEFAULT '0' COMMENT '是否括展',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_dept` (`parent_id`) USING BTREE,
  CONSTRAINT `fk_dept` FOREIGN KEY (`parent_id`) REFERENCES `admin_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_dept
-- ----------------------------
BEGIN;
INSERT INTO `admin_dept` VALUES (34, '信息科', 1, NULL, '北京大兴', '', '010-1234567', 1, '2021-10-28 15:09:08', '2021-10-28 15:09:08');
INSERT INTO `admin_dept` VALUES (35, '客户服务中心', 2, NULL, '北京大兴', '', '010-7654321', 1, '2021-10-28 15:09:08', '2021-10-28 15:09:08');
INSERT INTO `admin_dept` VALUES (36, '信息中心', 1, 34, '大兴', '', '010-1111111', 0, '2021-10-28 15:09:08', '2021-10-28 15:09:08');
INSERT INTO `admin_dept` VALUES (37, '信息化管理科', 2, 34, '大兴', '', '010-9999999', 0, '2021-10-28 15:09:08', '2021-10-28 15:09:08');
INSERT INTO `admin_dept` VALUES (38, '办公室', 1, 35, '大兴', '', '010-1122343', 0, '2021-10-28 15:09:08', '2021-10-28 15:09:08');
INSERT INTO `admin_dept` VALUES (39, '稽查科', 2, 35, '大兴', '', '020-23232323', 0, '2021-10-28 15:09:08', '2021-10-28 15:09:08');
COMMIT;

-- ----------------------------
-- Table structure for admin_dict
-- ----------------------------
DROP TABLE IF EXISTS `admin_dict`;
CREATE TABLE `admin_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `description` longtext COMMENT '描述',
  `label` varchar(200) DEFAULT NULL COMMENT '标签名',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `value` varchar(200) DEFAULT NULL COMMENT '数据值',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_dict
-- ----------------------------
BEGIN;
INSERT INTO `admin_dict` VALUES (16, '', '动车', 'number_type', '1', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (17, '', '普客', 'number_type', '2', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (18, '', '市郊', 'number_type', '3', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (22, '', '快慢', 'number_type', '4', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (23, '', '快速', 'number_type', '5', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (24, '', '普快', 'number_type', '6', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (25, '', '特快', 'number_type', '7', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (26, '', '直特', 'number_type', '8', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (27, '', '高速', 'number_type', '9', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (28, '', '硬坐', 'seat_type', '1', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (29, '', '一等座', 'seat_type', '2', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (30, '', '二等座', 'seat_type', '3', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (31, '', '特等座', 'seat_type', '4', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (32, '', '硬卧', 'seat_type', '5', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (33, '', '软卧', 'seat_type', '6', '2021-10-28 15:15:47', '2021-10-28 15:15:47');
INSERT INTO `admin_dict` VALUES (34, '', 'V', 'C', 'K', '2021-12-13 15:00:31', '2021-12-13 15:00:31');
COMMIT;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(500) DEFAULT NULL COMMENT '节点名称',
  `sequence` int(11) DEFAULT NULL COMMENT '排序字段',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `hide_in_menu` tinyint(1) DEFAULT '0' COMMENT '设为true后在左侧菜单不会显示该页面选项',
  `not_cache` tinyint(1) DEFAULT '0' COMMENT '设为true后页面不会缓存',
  `icon` varchar(255) DEFAULT NULL COMMENT '该页面在左侧菜单、面包屑和标签导航处显示的图标，如果是自定义图标，需要在图标名称前加下划线''_''',
  `is_expand` tinyint(1) DEFAULT '0' COMMENT '是否展开节点',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_parent_menu` (`parent_id`) USING BTREE,
  CONSTRAINT `fk_parent_menu` FOREIGN KEY (`parent_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (36, '系统管理', 1, NULL, '/admin', 'admin', 'Main', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (38, '岗位管理', 4, 36, 'post', 'list_admin_post', '@/view/admin/post/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (39, '部门管理', 5, 36, 'dept', 'list_admin_dept', '@/view/admin/dept/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (40, '字典管理', 6, 36, 'dict', 'list_admin_dict', '@/view/admin/dict/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (42, '菜单管理', 1, 36, 'menu', 'list_admin_menu', '@/view/admin/menu/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (43, '角色管理', 2, 36, 'role', 'list_admin_role', '@/view/admin/role/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (44, '用户管理', 3, 36, 'user', 'list_admin_user', '@/view/admin/user/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (45, '个人信息', 3, NULL, '/self', 'self', 'Main', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (46, '修改个人信息', 1, 45, 'user', 'edit_self_user', '@view/self/user/edit', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (47, '乘客信息', 2, 45, 'passenger', 'list_self_passenger', '@view/self/passenger/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (48, '列车管理', 4, NULL, '/train', 'train', 'Main', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (50, '车次管理', 1, 48, 'number', 'list_train_number', '@view/train/number/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (51, '列车时刻表查询', 2, 48, 'scheduler', 'list_train_scheduler', '@/view/train/scheduler/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (52, '车票购买', 5, NULL, 'purchase', 'purchase', 'Main', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (53, '车票购买', NULL, 52, 'sku', 'list_purchase_sku', '@view/purchase/sku/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
INSERT INTO `admin_menu` VALUES (54, '我的订单', 2, 52, 'order', 'list_purchase_order', '@view/purchase/order/list', 0, 0, 'md-trash', 0, '2021-10-28 15:16:30', '2021-10-28 15:16:30');
COMMIT;

-- ----------------------------
-- Table structure for admin_post
-- ----------------------------
DROP TABLE IF EXISTS `admin_post`;
CREATE TABLE `admin_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `comment` longtext COMMENT '描述',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_6x4rnc0hfjh1it19fb568bwxm` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_post
-- ----------------------------
BEGIN;
INSERT INTO `admin_post` VALUES (49, '', '普通员工', '普通员工', '2021-10-28 15:19:30', '2021-10-28 15:19:30');
INSERT INTO `admin_post` VALUES (50, '', '主管', '主管', '2021-10-28 15:19:30', '2021-10-28 15:19:30');
INSERT INTO `admin_post` VALUES (51, '', '人事经理', '人事经理', '2021-10-28 15:19:30', '2021-10-28 15:19:30');
INSERT INTO `admin_post` VALUES (52, '', '财务经理', '财务经理', '2021-10-28 15:19:30', '2021-10-28 15:19:30');
INSERT INTO `admin_post` VALUES (53, '', '总经理', '总经理', '2021-10-28 15:19:30', '2021-10-28 15:19:30');
INSERT INTO `admin_post` VALUES (54, '', '董事长', '董事长', '2021-10-28 15:19:30', '2021-10-28 15:19:30');
COMMIT;

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `comment` longtext COMMENT '描述',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_cs9wmaq243ihdk8bjd0s40lf9` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
BEGIN;
INSERT INTO `admin_role` VALUES (1, '', 'ADMIN', '管理员', '2021-10-28 15:21:44', '2021-10-28 15:21:44');
INSERT INTO `admin_role` VALUES (3, '', 'USER', '普通乘客', '2021-10-28 15:21:44', '2021-10-28 15:21:44');
COMMIT;

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  KEY `fk_role_menu_2` (`menu_id`) USING BTREE,
  KEY `fk_role_menu_1` (`role_id`) USING BTREE,
  CONSTRAINT `fk_role_menu_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_role_menu_2` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_menu` VALUES (1, 36);
INSERT INTO `admin_role_menu` VALUES (1, 38);
INSERT INTO `admin_role_menu` VALUES (1, 39);
INSERT INTO `admin_role_menu` VALUES (1, 40);
INSERT INTO `admin_role_menu` VALUES (1, 42);
INSERT INTO `admin_role_menu` VALUES (1, 43);
INSERT INTO `admin_role_menu` VALUES (1, 44);
INSERT INTO `admin_role_menu` VALUES (1, 45);
INSERT INTO `admin_role_menu` VALUES (1, 46);
INSERT INTO `admin_role_menu` VALUES (1, 47);
INSERT INTO `admin_role_menu` VALUES (1, 48);
INSERT INTO `admin_role_menu` VALUES (1, 50);
INSERT INTO `admin_role_menu` VALUES (1, 51);
INSERT INTO `admin_role_menu` VALUES (1, 52);
INSERT INTO `admin_role_menu` VALUES (1, 53);
INSERT INTO `admin_role_menu` VALUES (1, 54);
INSERT INTO `admin_role_menu` VALUES (3, 45);
INSERT INTO `admin_role_menu` VALUES (3, 46);
INSERT INTO `admin_role_menu` VALUES (3, 47);
INSERT INTO `admin_role_menu` VALUES (3, 52);
INSERT INTO `admin_role_menu` VALUES (3, 53);
INSERT INTO `admin_role_menu` VALUES (3, 54);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE `admin_role_user` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  KEY `fk_role_user_1` (`role_id`) USING BTREE,
  KEY `fk_role_user_2` (`user_id`) USING BTREE,
  CONSTRAINT `fk_role_user_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_role_user_2` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_user
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_user` VALUES (3, 17);
INSERT INTO `admin_role_user` VALUES (3, 18);
INSERT INTO `admin_role_user` VALUES (3, 23);
INSERT INTO `admin_role_user` VALUES (3, 22);
INSERT INTO `admin_role_user` VALUES (3, 21);
INSERT INTO `admin_role_user` VALUES (3, 30);
INSERT INTO `admin_role_user` VALUES (3, 31);
INSERT INTO `admin_role_user` VALUES (3, 29);
INSERT INTO `admin_role_user` VALUES (3, 34);
INSERT INTO `admin_role_user` VALUES (1, 15);
INSERT INTO `admin_role_user` VALUES (3, 15);
COMMIT;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `comment` varchar(255) DEFAULT NULL COMMENT '描述',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮件',
  `lock` tinyint(1) DEFAULT '0' COMMENT '是否锁定',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `principal` tinyint(1) DEFAULT '0' COMMENT '是否为部门负责人，用于"常用语:直接上级"',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实名称',
  `salt` varchar(255) DEFAULT NULL COMMENT '加密密码的盐',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `post_id` bigint(20) DEFAULT NULL COMMENT '岗位',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_k83xq25qm4hja22yxenkt8i4h` (`user_name`) USING BTREE,
  KEY `fk_dept_user` (`dept_id`) USING BTREE,
  KEY `fk_user_post` (`post_id`) USING BTREE,
  CONSTRAINT `fk_dept_user` FOREIGN KEY (`dept_id`) REFERENCES `admin_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_post` FOREIGN KEY (`post_id`) REFERENCES `admin_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
BEGIN;
INSERT INTO `admin_user` VALUES (15, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$SgeQtOB4OHTFXuvw/Aj7nOVCHB7npXNkNL5M.PDSsQguP.9YEMTGG', 1, '管理员', '93738972084547b71fe3e73bedc6a977', '男', '010-1234567', 'admin', 38, 50, '2021-12-20 16:56:49', '2021-11-30 16:09:15');
INSERT INTO `admin_user` VALUES (16, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 1, '刘国梁', 'ba6fe874705ce2157f31c72a2723be84', '男', '010-1234567', 'liuguoliang', 36, 50, '2021-11-30 16:09:16', '2021-11-30 16:09:16');
INSERT INTO `admin_user` VALUES (17, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 0, '马龙', 'b289ded31a85d7742fa53017e23c1294', '男', '010-1234567', 'malong', 36, 49, '2021-11-30 16:22:08', '2021-11-30 16:22:08');
INSERT INTO `admin_user` VALUES (18, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 0, '张继科', 'acccbf770e9d34698fa196390f4a46f3', '男', '010-1234567', 'zhangjike', 36, 49, '2021-11-29 16:23:44', '2021-11-29 16:23:44');
INSERT INTO `admin_user` VALUES (19, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 0, '樊振东', '55fb3fd9d90f26f898ece0ff47913f30', '', '010-1234567', 'fanzhengdong', 36, 49, '2021-11-29 16:23:44', '2021-11-29 16:23:44');
INSERT INTO `admin_user` VALUES (20, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 1, '刘慈欣', 'ff3046b4d6b59733fdb5e2c3087ec92c', '男', '010-1234566', 'liucixin', 38, 50, '2021-11-29 16:23:45', '2021-11-29 16:23:45');
INSERT INTO `admin_user` VALUES (21, '2018-07-20', '', 'lxsong@163.com', 1, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 0, '叶文杰', '718050932d3a58de8b470cb388c17675', '男', '', 'yewenjie', 38, 49, '2021-11-29 16:23:45', '2021-11-29 16:23:45');
INSERT INTO `admin_user` VALUES (22, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 0, '罗辑', '1b5e12c6551e54e5c341baf740885e1c', '男', '', 'luoji', 36, 49, '2021-11-29 16:23:46', '2021-11-29 16:23:46');
INSERT INTO `admin_user` VALUES (23, '2018-07-20', '', 'lxsong@163.com', 0, '$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m', 0, '章北海', 'e7e07bd06c30a590cd0c8e42a382c4ef', '男', '', 'zhangbeihai', 38, 49, '2021-11-29 16:23:46', '2021-11-29 16:23:46');
INSERT INTO `admin_user` VALUES (29, '2021-10-08', '', 'lxsong@163.com', 0, '$2a$10$svV3IhjmzxKunjjM9QCi6.pidMFi7Cmv./HcDI8sV/TW6zz00LH7q', 0, '米奇', '', '男', '', 'mickey', 39, NULL, '2021-11-29 16:23:47', '2021-11-29 16:23:47');
INSERT INTO `admin_user` VALUES (30, '2021-09-21', 'lxs@163.com', 'lxsong@163.com', 0, '$2a$10$KAURy2G3wLLfI5zkUKGA2OMZkPq7gTWYMGrAdLGfMOAQAABsTRIoO', 0, '子路', NULL, '男', '010-66666666', 'zilu', NULL, NULL, '2021-11-29 16:23:48', '2021-11-29 16:23:48');
INSERT INTO `admin_user` VALUES (31, '2021-09-24', '', 'lxsong@163.com', 0, '$2a$10$5JuSeXBhsckYcoa2W.A9VOc0tXAEUSgUhdm15bE4auZ8X0x5Z1dua', 0, '颜回', NULL, '男', '010-12345658', 'yanhui', NULL, NULL, '2021-11-29 16:23:48', '2021-11-29 16:23:48');
INSERT INTO `admin_user` VALUES (34, NULL, '', '', 0, '$2a$10$q5FiowxVw9Ewt.jo/1LYmu33CHNpIMqWaHmx67Y0UCUrGAUBbMYpG', 0, 'zhouzhou', NULL, '', '', 'zhouzhou', NULL, NULL, '2021-12-16 20:56:45', '2021-12-16 20:56:44');
COMMIT;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(250) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL COMMENT '用户名',
  `client_id` varchar(256) DEFAULT NULL COMMENT '客户端ID',
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(250) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `oauth_client_details` VALUES ('client', '', '$2a$10$fg3GizKZ5K3s4sngyWOdleFxm3/7xnSUr/T7zzxkT9HFTGPDLrrWy', 'read,write', 'password,refresh_token', '', 'ROLE_ADMIN,ROLE_USER', 7200, 7200, '{}', '');
INSERT INTO `oauth_client_details` VALUES ('client_1', '', '$2a$10$cqDiBXGunn/GcEeKvZX62eABaQyjyf3eJEW7AIL98uiq8UM.VZZfi', 'read,write', 'client_credentials', '', 'ROLE_ADMIN,ROLE_USER', 7200, NULL, '{}', '');
INSERT INTO `oauth_client_details` VALUES ('client_2', NULL, '$2a$10$cqDiBXGunn/GcEeKvZX62eABaQyjyf3eJEW7AIL98uiq8UM.VZZfi', 'read', 'client_credentials', NULL, 'ROLE_USER', 7200, NULL, '{}', NULL);
COMMIT;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ids` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
INSERT INTO `test` VALUES (1, 23232);
COMMIT;

-- ----------------------------
-- Table structure for train_carriage
-- ----------------------------
DROP TABLE IF EXISTS `train_carriage`;
CREATE TABLE `train_carriage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number_id` bigint(20) DEFAULT NULL COMMENT '车次外键',
  `carriage_no` int(11) DEFAULT NULL COMMENT '车厢编号',
  `type` varchar(50) DEFAULT NULL COMMENT '车厢类型',
  `count` int(11) DEFAULT NULL COMMENT '座位数',
  `price` double(10,2) DEFAULT NULL COMMENT '单价',
  `comment` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_number_carriage` (`number_id`) USING BTREE,
  KEY `index_carriage_type` (`type`) USING BTREE,
  CONSTRAINT `fk_number_carriage` FOREIGN KEY (`number_id`) REFERENCES `train_number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9313 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_carriage
-- ----------------------------
BEGIN;
INSERT INTO `train_carriage` VALUES (7833, 977, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7834, 977, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7835, 977, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7836, 977, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7837, 977, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7838, 977, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7839, 977, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7840, 977, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7841, 978, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7842, 978, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7843, 978, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7844, 978, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7845, 978, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7846, 978, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7847, 978, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7848, 978, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7849, 979, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7850, 979, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7851, 979, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7852, 979, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7853, 979, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7854, 979, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7855, 979, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7856, 979, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7857, 980, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7858, 980, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7859, 980, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7860, 980, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7861, 980, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7862, 980, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7863, 980, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7864, 980, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7945, 991, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7946, 991, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7947, 991, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7948, 991, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7949, 991, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7950, 991, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7951, 991, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7952, 991, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7953, 992, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7954, 992, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7955, 992, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7956, 992, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7957, 992, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7958, 992, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7959, 992, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7960, 992, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7961, 993, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7962, 993, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7963, 993, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7964, 993, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7965, 993, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7966, 993, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7967, 993, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (7968, 993, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8057, 1005, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8058, 1005, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8059, 1005, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8060, 1005, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8061, 1005, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8062, 1005, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8063, 1005, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8064, 1005, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8105, 1011, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8106, 1011, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8107, 1011, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8108, 1011, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8109, 1011, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8110, 1011, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8111, 1011, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8112, 1011, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8169, 1019, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8170, 1019, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8171, 1019, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8172, 1019, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8173, 1019, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8174, 1019, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8175, 1019, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8176, 1019, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8177, 1020, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8178, 1020, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8179, 1020, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8180, 1020, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8181, 1020, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8182, 1020, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8183, 1020, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8184, 1020, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8185, 1021, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8186, 1021, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8187, 1021, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8188, 1021, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8189, 1021, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8190, 1021, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8191, 1021, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8192, 1021, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8193, 1022, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8194, 1022, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8195, 1022, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8196, 1022, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8197, 1022, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8198, 1022, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8199, 1022, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8200, 1022, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8201, 1023, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8202, 1023, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8203, 1023, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8204, 1023, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8205, 1023, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8206, 1023, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8207, 1023, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8208, 1023, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8353, 1041, 1, '软卧', 36, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8354, 1041, 2, '软卧', 36, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8355, 1041, 3, '硬卧', 66, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8356, 1041, 4, '硬卧', 66, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8357, 1041, 5, '硬卧', 66, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8358, 1041, 6, '硬卧', 66, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8359, 1041, 7, '硬坐', 120, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8360, 1041, 8, '硬坐', 120, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8801, 1097, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8802, 1097, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8803, 1097, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8804, 1097, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8805, 1097, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8806, 1097, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8807, 1097, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8808, 1097, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8809, 1098, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8810, 1098, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8811, 1098, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8812, 1098, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8813, 1098, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8814, 1098, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8815, 1098, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (8816, 1098, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9289, 1158, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9290, 1158, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9291, 1158, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9292, 1158, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9293, 1158, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9294, 1158, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9295, 1158, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9296, 1158, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9297, 1159, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9298, 1159, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9299, 1159, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9300, 1159, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9301, 1159, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9302, 1159, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9303, 1159, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9304, 1159, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9305, 1160, 1, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9306, 1160, 2, '特等座', 18, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9307, 1160, 3, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9308, 1160, 4, '一等座', 52, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9309, 1160, 5, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9310, 1160, 6, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9311, 1160, 7, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
INSERT INTO `train_carriage` VALUES (9312, 1160, 8, '二等座', 85, 500.00, NULL, '2021-10-28 15:35:06', '2021-10-28 15:35:06');
COMMIT;

-- ----------------------------
-- Table structure for train_number
-- ----------------------------
DROP TABLE IF EXISTS `train_number`;
CREATE TABLE `train_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `number` varchar(20) DEFAULT NULL COMMENT '车次',
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `carriage_count` int(11) DEFAULT NULL COMMENT '车厢数',
  `start_station` varchar(20) DEFAULT NULL COMMENT '始发站',
  `end_station` varchar(20) DEFAULT NULL COMMENT '终点站',
  `start_time` varchar(20) DEFAULT NULL COMMENT '始发时间',
  `end_time` varchar(20) DEFAULT NULL COMMENT '终到时间',
  `arrive_type` varchar(20) DEFAULT NULL COMMENT '到达类型',
  `duration` varchar(20) DEFAULT NULL COMMENT '运行时长',
  `run_type` varchar(20) DEFAULT NULL COMMENT '运行类型',
  `comment` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1161 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_number
-- ----------------------------
BEGIN;
INSERT INTO `train_number` VALUES (977, 'D1', '动车', 8, '北京', '沈阳南', '18:07', '23:23', '当日到达', '05:16', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (978, 'D3', '动车', 8, '北京', '沈阳南', '18:16', '23:35', '当日到达', '05:19', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (979, 'D7', '动车', 8, '北京', '沈阳北', '17:43', '21:55', '当日到达', '04:12', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (980, 'D9', '动车', 8, '北京', '沈阳南', '13:19', '18:21', '当日到达', '05:02', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (991, 'D11', '动车', 8, '北京', '沈阳南', '12:43', '17:38', '当日到达', '04:55', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (992, 'D13', '动车', 8, '北京', '沈阳北', '18:53', '22:27', '当日到达', '03:34', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (993, 'D17', '动车', 8, '北京', '沈阳南', '09:15', '14:17', '当日到达', '05:02', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1005, 'D51', '动车', 8, '北京', '沈阳北', '17:13', '22:46', '当日到达', '05:33', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1011, 'G19', '高速', 8, '北京南', '杭州东', '08:00', '12:13', '当日到达', '04:13', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1019, 'G35', '高速', 8, '北京南', '杭州东', '15:10', '20:31', '当日到达', '05:21', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1020, 'G37', '高速', 8, '北京南', '杭州东', '16:05', '21:44', '当日到达', '05:39', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1021, 'G39', '高速', 8, '北京南', '杭州东', '19:04', '22:17', '当日到达', '03:13', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1022, 'G41', '高速', 8, '北京南', '杭州东', '09:15', '15:18', '当日到达', '06:03', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1023, 'G43', '高速', 8, '北京南', '杭州东', '14:05', '20:28', '当日到达', '06:23', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1041, 'K53', '快速', 8, '北京', '沈阳北', '22:33', '', '', '', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1097, 'T31', '动车', 8, '北京', '杭州', '21:15', '09:59', '次日到达', '12:44', '正在运行', NULL, '2021-10-28 15:37:20', '2021-11-01 16:29:27');
INSERT INTO `train_number` VALUES (1098, 'D717', '动车', 8, '北京', '杭州', '19:16', '08:02', '次日到达', '12:46', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1158, 'G217', '高速', 8, '北京南', '沈阳北', '13:30', '', '', '', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1159, 'G219', '高速', 8, '北京南', '沈阳南', '08:00', '12:01', '当日到达', '04:01', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
INSERT INTO `train_number` VALUES (1160, 'G237', '高速', 8, '北京南', '沈阳南', '14:30', '18:32', '当日到达', '04:02', '正在运行', NULL, '2021-10-28 15:37:20', '2021-10-28 15:37:20');
COMMIT;

-- ----------------------------
-- Table structure for train_order
-- ----------------------------
DROP TABLE IF EXISTS `train_order`;
CREATE TABLE `train_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `train_date` date DEFAULT NULL COMMENT '购票日期',
  `passenger_id` bigint(20) DEFAULT NULL COMMENT '乘车人',
  `train_number` varchar(50) DEFAULT NULL COMMENT '车次',
  `start_station_no` int(11) DEFAULT NULL COMMENT '出发站编号',
  `start_station_name` varchar(50) DEFAULT NULL COMMENT '出发站名称',
  `end_station_no` int(11) DEFAULT NULL COMMENT '终点站编号',
  `end_station_name` varchar(50) DEFAULT NULL COMMENT '终点站名称',
  `carriage_no` int(11) DEFAULT NULL COMMENT '车厢编号',
  `seat_no` int(11) DEFAULT NULL COMMENT '座位编号',
  `seat_name` varchar(50) DEFAULT NULL COMMENT '座位名称',
  `seat_type` varchar(50) DEFAULT NULL COMMENT '座位类型',
  `money` double(10,2) DEFAULT NULL COMMENT '订单金额',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `start_time` varchar(11) DEFAULT NULL COMMENT '出发时间',
  `comment` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_order
-- ----------------------------
BEGIN;
INSERT INTO `train_order` VALUES (108, '2021-11-26', 1, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 1, NULL, NULL, '2021-12-15 18:00:02', '2021-12-15 18:00:20', NULL);
INSERT INTO `train_order` VALUES (112, '2021-11-26', 1, 'G237', NULL, '北京南', NULL, '沈阳', NULL, NULL, NULL, '特等座', 130.00, 0, '14:30', NULL, '2021-12-15 19:12:52', '2021-12-15 19:13:01', NULL);
INSERT INTO `train_order` VALUES (113, '2021-11-26', 2, 'G237', NULL, '北京南', NULL, '沈阳', NULL, NULL, NULL, '一等座', 222.00, 0, '14:30', NULL, '2021-12-15 19:14:38', '2021-12-15 19:14:37', NULL);
INSERT INTO `train_order` VALUES (114, '2021-11-26', 1, 'G237', NULL, '北京南', NULL, '沈阳', NULL, NULL, NULL, '一等座', 500.00, 1, '14:30', NULL, '2021-12-15 19:37:34', '2021-12-15 19:43:28', NULL);
INSERT INTO `train_order` VALUES (115, '2021-11-26', 1, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 1, NULL, NULL, '2021-12-15 19:39:47', '2021-12-15 19:40:23', NULL);
INSERT INTO `train_order` VALUES (116, '2021-12-10', 1, 'D9', NULL, '锦州南', NULL, '台安', NULL, NULL, NULL, '一等座', 500.00, 1, '16:53', NULL, '2021-12-15 19:42:15', '2021-12-15 19:42:52', NULL);
INSERT INTO `train_order` VALUES (118, '2021-10-30', 2, 'D51', NULL, '锦州南', NULL, '辽阳', NULL, NULL, NULL, '一等座', 67.00, 0, '21:12', NULL, '2021-12-16 15:27:28', '2021-12-16 15:27:29', NULL);
INSERT INTO `train_order` VALUES (119, '2021-10-30', 2, 'D3', NULL, '锦州南', NULL, '沈阳南', NULL, NULL, NULL, '二等座', 222.00, 0, '21:58', NULL, '2021-12-16 15:32:17', '2021-12-16 15:32:17', NULL);
INSERT INTO `train_order` VALUES (120, '2021-10-30', 1, 'D9', NULL, '锦州南', NULL, '台安', NULL, NULL, NULL, '特等座', 500.00, 0, '16:53', NULL, '2021-12-16 15:33:28', '2021-12-16 15:33:27', NULL);
INSERT INTO `train_order` VALUES (121, '2021-10-28', 2, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '二等座', 500.00, 0, '09:15', NULL, '2021-12-16 15:51:45', '2021-12-16 15:51:45', NULL);
INSERT INTO `train_order` VALUES (122, '2021-10-28', 2, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 0, '09:15', NULL, '2021-12-16 17:15:35', '2021-12-16 17:15:35', 3656970);
INSERT INTO `train_order` VALUES (123, '2021-10-28', 2, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 0, '09:15', NULL, '2021-12-16 17:20:23', '2021-12-16 17:20:23', 3656970);
INSERT INTO `train_order` VALUES (124, '2021-10-28', 1, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 1, '09:15', NULL, '2021-12-16 17:24:13', '2021-12-16 17:25:14', 3656970);
INSERT INTO `train_order` VALUES (125, '2021-10-28', 2, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '二等座', 500.00, 1, '09:15', NULL, '2021-12-16 17:43:59', '2021-12-16 17:44:30', 3656970);
INSERT INTO `train_order` VALUES (126, '2021-10-28', 1, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '二等座', 333.00, 1, '09:15', NULL, '2021-12-16 17:52:19', '2021-12-16 17:52:37', 3656970);
INSERT INTO `train_order` VALUES (127, '2021-10-28', 2, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '二等座', 500.00, 1, '09:15', NULL, '2021-12-16 17:55:13', '2021-12-16 17:55:30', 3656970);
INSERT INTO `train_order` VALUES (133, '2021-12-16', 6, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 0, '09:15', NULL, '2021-12-16 23:06:46', '2021-12-16 23:06:45', 3658278);
INSERT INTO `train_order` VALUES (134, '2021-12-17', 1, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '一等座', 500.00, 0, '09:15', NULL, '2021-12-17 18:38:45', '2021-12-17 18:38:45', 3659300);
INSERT INTO `train_order` VALUES (135, '2021-12-17', 2, 'D51', NULL, '锦州南', NULL, '辽阳', NULL, NULL, NULL, '一等座', 500.00, 1, '21:12', NULL, '2021-12-17 18:39:02', '2021-12-17 18:41:30', 3659584);
INSERT INTO `train_order` VALUES (136, '2021-12-17', 2, 'D3', NULL, '锦州南', NULL, '沈阳南', NULL, NULL, NULL, '一等座', 500.00, 1, '21:58', NULL, '2021-12-17 18:43:47', '2021-12-17 18:44:09', 3659580);
INSERT INTO `train_order` VALUES (137, '2021-12-20', 2, 'G41', NULL, '北京南', NULL, '上海虹桥', NULL, NULL, NULL, '二等座', 500.00, 0, '09:15', NULL, '2021-12-20 16:15:52', '2021-12-20 16:15:50', 3659586);
INSERT INTO `train_order` VALUES (138, '2021-12-20', 2, 'D51', NULL, '锦州南', NULL, '盘锦', NULL, NULL, NULL, '二等座', 500.00, 0, '21:12', NULL, '2021-12-20 16:16:30', '2021-12-20 16:16:28', 3659868);
INSERT INTO `train_order` VALUES (139, '2021-12-20', 2, 'D51', NULL, '锦州南', NULL, '海城西', NULL, NULL, NULL, '二等座', 500.00, 0, '21:12', NULL, '2021-12-20 16:21:42', '2021-12-20 16:21:40', 3659869);
INSERT INTO `train_order` VALUES (140, '2021-12-20', 1, 'D9', NULL, '锦州南', NULL, '台安', NULL, NULL, NULL, '一等座', 500.00, 0, '16:53', NULL, '2021-12-20 16:27:03', '2021-12-20 16:27:03', 3659871);
COMMIT;

-- ----------------------------
-- Table structure for train_passenger
-- ----------------------------
DROP TABLE IF EXISTS `train_passenger`;
CREATE TABLE `train_passenger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '外键-用户',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `id_number` varchar(100) DEFAULT NULL COMMENT '身份证号',
  `type` varchar(20) DEFAULT NULL COMMENT '乘客类型',
  `address` varchar(200) DEFAULT NULL COMMENT '住址',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_user_passenger` (`user_id`) USING BTREE,
  CONSTRAINT `fk_user_passenger` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_passenger
-- ----------------------------
BEGIN;
INSERT INTO `train_passenger` VALUES (1, 15, '13888888888', 'lxsong77@163.com', '001', '成人', '山东曲阜', '孔子', '2021-10-28 15:41:59', '2021-11-26 16:41:23');
INSERT INTO `train_passenger` VALUES (2, 15, '13999999999', 'lxsong77@163.com', '002', '学生', '山东曲阜', '子路', '2021-10-28 15:41:59', '2021-11-26 16:41:24');
INSERT INTO `train_passenger` VALUES (3, 30, '13666666666', 'lxsong77@163.com', '003', '成人', '山东曲阜', '曾参', '2021-10-28 15:41:59', '2021-11-26 16:41:25');
INSERT INTO `train_passenger` VALUES (4, 30, '13777777777', 'lxsong77@163.com', '005', '学生', '山东曲阜', '子夏', '2021-10-28 15:41:59', '2021-11-26 16:41:25');
INSERT INTO `train_passenger` VALUES (6, 34, '17600991234', NULL, '140621199800123456', '学生', '', 'zhouzhou', '2021-12-16 22:26:44', '2021-12-16 22:34:34');
COMMIT;

-- ----------------------------
-- Table structure for train_sku
-- ----------------------------
DROP TABLE IF EXISTS `train_sku`;
CREATE TABLE `train_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `train_date` date DEFAULT NULL COMMENT '发车日期',
  `number_id` bigint(20) DEFAULT NULL COMMENT '车次外键',
  `train_number` varchar(50) DEFAULT NULL COMMENT '车次',
  `start_station` varchar(50) DEFAULT NULL COMMENT '始发站',
  `end_station` varchar(50) DEFAULT NULL COMMENT '终点站',
  `from_station` varchar(50) DEFAULT NULL COMMENT '出发站',
  `to_station` varchar(50) DEFAULT NULL COMMENT '到达站',
  `start_time` varchar(50) DEFAULT NULL COMMENT '发车时间',
  `arrival_time` varchar(50) DEFAULT NULL COMMENT '到达时间',
  `duration` varchar(50) DEFAULT NULL COMMENT '运行时长',
  `from_no` int(11) DEFAULT NULL COMMENT '出发站编号',
  `to_no` int(11) DEFAULT NULL COMMENT '到达站编号',
  `hard_seat_stock` int(11) DEFAULT '0' COMMENT '硬坐余票数',
  `first_seat_stock` int(11) DEFAULT '0' COMMENT '一等座余票数',
  `second_seat_stock` int(11) DEFAULT '0' COMMENT '二等座余票数',
  `special_seat_stock` int(11) DEFAULT '0' COMMENT '特等座余票数',
  `hard_sleeper_stock` int(11) DEFAULT '0' COMMENT '硬卧余票数',
  `soft_sleeper_stock` int(11) DEFAULT '0' COMMENT '软卧余票数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3660097 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_sku
-- ----------------------------
BEGIN;
INSERT INTO `train_sku` VALUES (3656970, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 0, 339, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-16 17:55:01');
INSERT INTO `train_sku` VALUES (3656971, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656972, '2021-10-28', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656973, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656974, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656975, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656976, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656977, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656978, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656979, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656980, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656981, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656982, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656983, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656984, '2021-10-28', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656985, '2021-10-28', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656986, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656987, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656988, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656989, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656990, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656991, '2021-10-28', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656992, '2021-10-28', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656993, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656994, '2021-10-28', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656995, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656996, '2021-10-28', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656997, '2021-10-28', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656998, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3656999, '2021-10-28', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657000, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657001, '2021-10-28', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657002, '2021-10-28', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657003, '2021-10-28', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657004, '2021-10-28', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657005, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657006, '2021-10-28', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657007, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657008, '2021-10-28', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657009, '2021-10-28', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657010, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657011, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657012, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657013, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657014, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657015, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657016, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657017, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657018, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657019, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657020, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657021, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657022, '2021-10-28', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657023, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657024, '2021-10-28', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657025, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657026, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657027, '2021-10-28', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657028, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657029, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657030, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657031, '2021-10-28', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657032, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657033, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657034, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657035, '2021-10-28', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657036, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657037, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657038, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657039, '2021-10-28', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657040, '2021-10-28', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657041, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657042, '2021-10-28', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657043, '2021-10-28', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657044, '2021-10-28', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657045, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657046, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657047, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657048, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657049, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657050, '2021-10-28', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657051, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657052, '2021-10-28', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657053, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657054, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657055, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657056, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657057, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657058, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657059, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657060, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657061, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657062, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657063, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657064, '2021-10-28', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657065, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657066, '2021-10-28', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657067, '2021-10-28', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657068, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657069, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657070, '2021-10-28', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657071, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657072, '2021-10-28', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657073, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657074, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657075, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657076, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657077, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657078, '2021-10-28', 1097, 'D711', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657079, '2021-10-28', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657080, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657081, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657082, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657083, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657084, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657085, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657086, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657087, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657088, '2021-10-28', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657089, '2021-10-28', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657090, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657091, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657092, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657093, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657094, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657095, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657096, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657097, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657098, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657099, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657100, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657101, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657102, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657103, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657104, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657105, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657106, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657107, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657108, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657109, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657110, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657111, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657112, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657113, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657114, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657115, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657116, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657117, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657118, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657119, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657120, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657121, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657122, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657123, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657124, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657125, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657126, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657127, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657128, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657129, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657130, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657131, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657132, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657133, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657134, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657135, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657136, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657137, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657138, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657139, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657140, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657141, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657142, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657143, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657144, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657145, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657146, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657147, '2021-10-28', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657148, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657149, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657150, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657151, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657152, '2021-10-28', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657153, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657154, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657155, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657156, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657157, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657158, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657159, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657160, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657161, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657162, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657163, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657164, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657165, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657166, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657167, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657168, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657169, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657170, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657171, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657172, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657173, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657174, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657175, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657176, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657177, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657178, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657179, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657180, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657181, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657182, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657183, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657184, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657185, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657186, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657187, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657188, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657189, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657190, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657191, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657192, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657193, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657194, '2021-10-28', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657195, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657196, '2021-10-28', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657197, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657198, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657199, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657200, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657201, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657202, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657203, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657204, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657205, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657206, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657207, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657208, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657209, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657210, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657211, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657212, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657213, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657214, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657215, '2021-10-28', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657216, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657217, '2021-10-28', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657218, '2021-10-28', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657219, '2021-10-28', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657220, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657221, '2021-10-28', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657222, '2021-10-28', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657223, '2021-10-28', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657224, '2021-10-28', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657225, '2021-10-28', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657226, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657227, '2021-10-28', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657228, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657229, '2021-10-28', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657230, '2021-10-28', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657231, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657232, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657233, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657234, '2021-10-28', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657235, '2021-10-28', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657236, '2021-10-28', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657237, '2021-10-28', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657238, '2021-10-28', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657239, '2021-10-28', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657240, '2021-10-28', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657241, '2021-10-28', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657242, '2021-10-28', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657243, '2021-10-28', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657244, '2021-10-28', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657245, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657246, '2021-10-28', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657247, '2021-10-28', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657248, '2021-10-28', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657249, '2021-10-28', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657250, '2021-10-28', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657251, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657252, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657253, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657254, '2021-10-28', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657255, '2021-10-28', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657481, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657482, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657483, '2021-10-29', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657484, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657485, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657486, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657487, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657488, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657489, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657490, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657491, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657492, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657493, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657494, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657495, '2021-10-29', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657496, '2021-10-29', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657497, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657498, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657499, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657500, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657501, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657502, '2021-10-29', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657503, '2021-10-29', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657504, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657505, '2021-10-29', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657506, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657507, '2021-10-29', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657508, '2021-10-29', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657509, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657510, '2021-10-29', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657511, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657512, '2021-10-29', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657513, '2021-10-29', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657514, '2021-10-29', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657515, '2021-10-29', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657516, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657517, '2021-10-29', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657518, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657519, '2021-10-29', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657520, '2021-10-29', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657521, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657522, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657523, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657524, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657525, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657526, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657527, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657528, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657529, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657530, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657531, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657532, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657533, '2021-10-29', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657534, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657535, '2021-10-29', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657536, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657537, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657538, '2021-10-29', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657539, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657540, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657541, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657542, '2021-10-29', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657543, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657544, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657545, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657546, '2021-10-29', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657547, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657548, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657549, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657550, '2021-10-29', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657551, '2021-10-29', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657552, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657553, '2021-10-29', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657554, '2021-10-29', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657555, '2021-10-29', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657556, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657557, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657558, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657559, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657560, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657561, '2021-10-29', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657562, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657563, '2021-10-29', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657564, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657565, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657566, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657567, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657568, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657569, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657570, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657571, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657572, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657573, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657574, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657575, '2021-10-29', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657576, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657577, '2021-10-29', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657578, '2021-10-29', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657579, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657580, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657581, '2021-10-29', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657582, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657583, '2021-10-29', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657584, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657585, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657586, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657587, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657588, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657589, '2021-10-29', 1097, 'D711', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657590, '2021-10-29', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657591, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657592, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657593, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657594, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657595, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657596, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657597, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657598, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657599, '2021-10-29', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657600, '2021-10-29', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657601, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657602, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657603, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657604, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657605, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657606, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657607, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657608, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657609, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657610, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657611, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657612, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657613, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657614, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657615, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657616, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657617, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657618, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657619, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657620, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657621, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657622, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657623, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657624, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657625, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657626, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657627, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657628, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657629, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657630, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657631, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657632, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657633, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657634, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657635, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657636, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657637, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657638, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657639, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657640, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657641, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657642, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657643, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657644, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657645, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657646, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657647, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657648, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657649, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657650, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657651, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657652, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657653, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657654, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657655, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657656, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657657, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657658, '2021-10-29', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657659, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657660, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657661, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657662, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657663, '2021-10-29', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657664, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657665, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657666, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657667, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657668, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657669, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657670, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657671, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657672, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657673, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657674, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657675, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657676, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657677, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657678, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657679, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657680, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657681, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657682, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657683, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657684, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657685, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657686, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657687, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657688, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657689, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657690, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657691, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657692, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657693, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657694, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657695, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657696, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657697, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657698, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657699, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657700, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657701, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657702, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657703, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657704, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657705, '2021-10-29', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657706, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657707, '2021-10-29', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657708, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657709, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657710, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657711, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657712, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657713, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657714, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657715, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657716, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657717, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657718, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657719, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657720, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657721, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657722, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657723, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657724, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657725, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657726, '2021-10-29', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657727, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657728, '2021-10-29', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657729, '2021-10-29', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657730, '2021-10-29', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657731, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657732, '2021-10-29', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657733, '2021-10-29', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657734, '2021-10-29', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657735, '2021-10-29', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657736, '2021-10-29', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657737, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657738, '2021-10-29', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657739, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657740, '2021-10-29', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657741, '2021-10-29', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657742, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657743, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657744, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657745, '2021-10-29', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657746, '2021-10-29', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657747, '2021-10-29', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657748, '2021-10-29', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657749, '2021-10-29', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657750, '2021-10-29', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657751, '2021-10-29', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657752, '2021-10-29', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657753, '2021-10-29', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657754, '2021-10-29', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657755, '2021-10-29', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657756, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657757, '2021-10-29', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657758, '2021-10-29', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657759, '2021-10-29', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657760, '2021-10-29', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657761, '2021-10-29', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657762, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657763, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657764, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657765, '2021-10-29', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657766, '2021-10-29', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657992, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657993, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657994, '2021-10-30', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657995, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657996, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657997, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657998, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3657999, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658000, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658001, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658002, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658003, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658004, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658005, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658006, '2021-10-30', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658007, '2021-10-30', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658008, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658009, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658010, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658011, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658012, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658013, '2021-10-30', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658014, '2021-10-30', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658015, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658016, '2021-10-30', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658017, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658018, '2021-10-30', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658019, '2021-10-30', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658020, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658021, '2021-10-30', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658022, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658023, '2021-10-30', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658024, '2021-10-30', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658025, '2021-10-30', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658026, '2021-10-30', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658027, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658028, '2021-10-30', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658029, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658030, '2021-10-30', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658031, '2021-10-30', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658032, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658033, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658034, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658035, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658036, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658037, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658038, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658039, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658040, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658041, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658042, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658043, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658044, '2021-10-30', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658045, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658046, '2021-10-30', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658047, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658048, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658049, '2021-10-30', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658050, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658051, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658052, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658053, '2021-10-30', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658054, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658055, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658056, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658057, '2021-10-30', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658058, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658059, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658060, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658061, '2021-10-30', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658062, '2021-10-30', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658063, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658064, '2021-10-30', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658065, '2021-10-30', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658066, '2021-10-30', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658067, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658068, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658069, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658070, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658071, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658072, '2021-10-30', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658073, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658074, '2021-10-30', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658075, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658076, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658077, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658078, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658079, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658080, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658081, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658082, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658083, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658084, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658085, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658086, '2021-10-30', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658087, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658088, '2021-10-30', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658089, '2021-10-30', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658090, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658091, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658092, '2021-10-30', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658093, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658094, '2021-10-30', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658095, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658096, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658097, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658098, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658099, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658100, '2021-10-30', 1097, 'D711', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658101, '2021-10-30', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658102, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658103, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658104, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658105, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658106, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658107, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658108, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658109, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658110, '2021-10-30', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658111, '2021-10-30', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658112, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658113, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658114, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658115, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658116, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658117, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658118, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658119, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658120, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658121, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658122, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658123, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658124, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658125, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658126, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658127, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658128, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658129, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658130, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658131, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658132, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658133, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658134, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658135, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658136, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658137, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658138, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658139, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658140, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658141, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658142, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658143, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658144, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658145, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658146, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658147, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658148, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658149, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658150, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658151, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658152, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658153, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658154, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658155, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658156, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658157, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658158, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658159, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658160, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658161, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658162, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658163, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658164, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658165, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658166, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658167, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658168, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658169, '2021-10-30', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658170, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658171, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658172, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658173, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658174, '2021-10-30', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658175, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658176, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658177, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658178, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658179, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658180, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658181, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658182, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658183, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658184, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658185, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658186, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658187, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658188, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658189, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658190, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658191, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658192, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658193, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658194, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658195, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658196, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658197, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658198, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658199, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658200, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658201, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658202, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658203, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658204, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658205, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658206, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658207, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658208, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658209, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658210, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658211, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658212, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658213, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658214, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658215, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658216, '2021-10-30', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658217, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658218, '2021-10-30', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658219, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658220, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658221, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658222, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658223, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658224, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658225, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658226, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658227, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658228, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658229, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658230, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658231, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658232, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658233, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658234, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658235, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658236, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658237, '2021-10-30', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658238, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658239, '2021-10-30', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658240, '2021-10-30', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658241, '2021-10-30', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658242, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658243, '2021-10-30', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658244, '2021-10-30', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658245, '2021-10-30', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658246, '2021-10-30', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658247, '2021-10-30', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658248, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658249, '2021-10-30', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658250, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658251, '2021-10-30', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658252, '2021-10-30', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658253, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658254, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658255, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658256, '2021-10-30', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658257, '2021-10-30', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658258, '2021-10-30', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658259, '2021-10-30', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658260, '2021-10-30', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658261, '2021-10-30', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658262, '2021-10-30', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658263, '2021-10-30', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658264, '2021-10-30', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658265, '2021-10-30', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658266, '2021-10-30', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658267, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658268, '2021-10-30', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658269, '2021-10-30', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658270, '2021-10-30', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658271, '2021-10-30', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658272, '2021-10-30', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658273, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658274, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658275, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658276, '2021-10-30', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658277, '2021-10-30', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-15 19:51:11', '2021-12-15 19:51:11');
INSERT INTO `train_sku` VALUES (3658278, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658279, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658280, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658281, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658282, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658283, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658284, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658285, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658286, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658287, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658288, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658289, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658290, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658291, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658292, '2021-12-16', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658293, '2021-12-16', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658294, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658295, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658296, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658297, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658298, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658299, '2021-12-16', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658300, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658301, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658302, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658303, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658304, '2021-12-16', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658305, '2021-12-16', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658306, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658307, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658308, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658309, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658310, '2021-12-16', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658311, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658312, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658313, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658314, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658315, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658316, '2021-12-16', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658317, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658318, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658319, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658320, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658321, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658322, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658323, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658324, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658325, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658326, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658327, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658328, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658329, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658330, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658331, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658332, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658333, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658334, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658335, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658336, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658337, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658338, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658339, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658340, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658341, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658342, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658343, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658344, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658345, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658346, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658347, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658348, '2021-12-16', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658349, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658350, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658351, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658352, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658353, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658354, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658355, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658356, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658357, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658358, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658359, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658360, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658361, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658362, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658363, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658364, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658365, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658366, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658367, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658368, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658369, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658370, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658371, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658372, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658373, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658374, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658375, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658376, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658377, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658378, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658379, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658380, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658381, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658382, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658383, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658384, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658385, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658386, '2021-12-16', 1097, 'T31', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658387, '2021-12-16', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658388, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658389, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658390, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658391, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658392, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658393, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658394, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658395, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658396, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658397, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658398, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658399, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658400, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658401, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658402, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658403, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658404, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658405, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658406, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658407, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658408, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658409, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658410, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658411, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658412, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658413, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658414, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658415, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658416, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658417, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658418, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658419, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658420, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658421, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658422, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658423, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658424, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658425, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658426, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658427, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658428, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658429, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658430, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658431, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658432, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658433, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658434, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658435, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658436, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658437, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658438, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658439, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658440, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658441, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658442, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658443, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658444, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658445, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658446, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658447, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658448, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658449, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658450, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658451, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658452, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658453, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658454, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658455, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658456, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658457, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658458, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658459, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658460, '2021-12-16', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658461, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658462, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658463, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658464, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658465, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658466, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658467, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658468, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658469, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658470, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658471, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658472, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658473, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658474, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658475, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658476, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658477, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658478, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658479, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658480, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658481, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658482, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658483, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658484, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658485, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658486, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658487, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658488, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658489, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658490, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658491, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658492, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658493, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658494, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658495, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658496, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658497, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658498, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658499, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658500, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658501, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658502, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658503, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658504, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658505, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658506, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658507, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658508, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658509, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658510, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658511, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658512, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658513, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658514, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658515, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658516, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658517, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658518, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658519, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658520, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658521, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658522, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658523, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658524, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658525, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658526, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658527, '2021-12-16', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658528, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658529, '2021-12-16', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658530, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658531, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658532, '2021-12-16', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658533, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658534, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658535, '2021-12-16', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658536, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658537, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658538, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658539, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658540, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658541, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658542, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658543, '2021-12-16', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658544, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658545, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658546, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658547, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658548, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658549, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658550, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658551, '2021-12-16', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658552, '2021-12-16', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658553, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658554, '2021-12-16', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658555, '2021-12-16', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658556, '2021-12-16', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658557, '2021-12-16', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658558, '2021-12-16', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658559, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658560, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658561, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658562, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658563, '2021-12-16', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 18:40:09', '2021-12-16 18:40:09');
INSERT INTO `train_sku` VALUES (3658789, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658790, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658791, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658792, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658793, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658794, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658795, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658796, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658797, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658798, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658799, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658800, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658801, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658802, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658803, '2021-12-16', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658804, '2021-12-16', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658805, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658806, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658807, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658808, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658809, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658810, '2021-12-16', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658811, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658812, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658813, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658814, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658815, '2021-12-16', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658816, '2021-12-16', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658817, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658818, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658819, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658820, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658821, '2021-12-16', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658822, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658823, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658824, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658825, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658826, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658827, '2021-12-16', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658828, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658829, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658830, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658831, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658832, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658833, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658834, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658835, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658836, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658837, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658838, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658839, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658840, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658841, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658842, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658843, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658844, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658845, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658846, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658847, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658848, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658849, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658850, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658851, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658852, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658853, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658854, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658855, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658856, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658857, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658858, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658859, '2021-12-16', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658860, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658861, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658862, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658863, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658864, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658865, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658866, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658867, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658868, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658869, '2021-12-16', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658870, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658871, '2021-12-16', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658872, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658873, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658874, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658875, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658876, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658877, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658878, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658879, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658880, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658881, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658882, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658883, '2021-12-16', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658884, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658885, '2021-12-16', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658886, '2021-12-16', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658887, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658888, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658889, '2021-12-16', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658890, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658891, '2021-12-16', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658892, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658893, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658894, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658895, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658896, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658897, '2021-12-16', 1097, 'T31', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658898, '2021-12-16', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658899, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658900, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658901, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658902, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658903, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658904, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658905, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658906, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658907, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658908, '2021-12-16', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658909, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658910, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658911, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658912, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658913, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658914, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658915, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658916, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658917, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658918, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658919, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658920, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658921, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658922, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658923, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658924, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658925, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658926, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658927, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658928, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658929, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658930, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658931, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658932, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658933, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658934, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658935, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658936, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658937, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658938, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658939, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658940, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658941, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658942, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658943, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658944, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658945, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658946, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658947, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658948, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658949, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658950, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658951, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658952, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658953, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658954, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658955, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658956, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658957, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658958, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658959, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658960, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658961, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658962, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658963, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658964, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658965, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658966, '2021-12-16', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658967, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658968, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658969, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658970, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658971, '2021-12-16', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658972, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658973, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658974, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658975, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658976, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658977, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658978, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658979, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658980, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658981, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658982, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658983, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658984, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658985, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658986, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658987, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658988, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658989, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658990, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658991, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658992, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658993, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658994, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658995, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658996, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658997, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658998, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3658999, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659000, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659001, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659002, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659003, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659004, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659005, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659006, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659007, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659008, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659009, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659010, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659011, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659012, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659013, '2021-12-16', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659014, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659015, '2021-12-16', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659016, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659017, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659018, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659019, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659020, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659021, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659022, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659023, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659024, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659025, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659026, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659027, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659028, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659029, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659030, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659031, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659032, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659033, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659034, '2021-12-16', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659035, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659036, '2021-12-16', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659037, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659038, '2021-12-16', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659039, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659040, '2021-12-16', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659041, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659042, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659043, '2021-12-16', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659044, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659045, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659046, '2021-12-16', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659047, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659048, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659049, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659050, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659051, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659052, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659053, '2021-12-16', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659054, '2021-12-16', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659055, '2021-12-16', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659056, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659057, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659058, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659059, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659060, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659061, '2021-12-16', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659062, '2021-12-16', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659063, '2021-12-16', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659064, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659065, '2021-12-16', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659066, '2021-12-16', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659067, '2021-12-16', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659068, '2021-12-16', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659069, '2021-12-16', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659070, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659071, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659072, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659073, '2021-12-16', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659074, '2021-12-16', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:41:55', '2021-12-16 22:41:55');
INSERT INTO `train_sku` VALUES (3659300, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659301, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659302, '2021-12-17', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659303, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659304, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659305, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659306, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659307, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659308, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659309, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659310, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659311, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659312, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659313, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659314, '2021-12-17', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659315, '2021-12-17', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659316, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659317, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659318, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659319, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659320, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659321, '2021-12-17', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659322, '2021-12-17', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659323, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659324, '2021-12-17', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659325, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659326, '2021-12-17', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659327, '2021-12-17', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659328, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659329, '2021-12-17', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659330, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659331, '2021-12-17', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659332, '2021-12-17', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659333, '2021-12-17', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659334, '2021-12-17', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659335, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659336, '2021-12-17', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659337, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659338, '2021-12-17', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659339, '2021-12-17', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659340, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659341, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659342, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659343, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659344, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659345, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659346, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659347, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659348, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659349, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659350, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659351, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659352, '2021-12-17', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659353, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659354, '2021-12-17', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659355, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659356, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659357, '2021-12-17', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659358, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659359, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659360, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659361, '2021-12-17', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659362, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659363, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659364, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659365, '2021-12-17', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659366, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659367, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659368, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659369, '2021-12-17', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659370, '2021-12-17', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659371, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659372, '2021-12-17', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659373, '2021-12-17', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659374, '2021-12-17', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659375, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659376, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659377, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659378, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659379, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659380, '2021-12-17', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659381, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659382, '2021-12-17', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659383, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659384, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659385, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659386, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659387, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659388, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659389, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659390, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659391, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659392, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659393, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659394, '2021-12-17', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659395, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659396, '2021-12-17', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659397, '2021-12-17', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659398, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659399, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659400, '2021-12-17', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659401, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659402, '2021-12-17', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659403, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659404, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659405, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659406, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659407, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659408, '2021-12-17', 1097, 'T31', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659409, '2021-12-17', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659410, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659411, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659412, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659413, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659414, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659415, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659416, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659417, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659418, '2021-12-17', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659419, '2021-12-17', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659420, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659421, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659422, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659423, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659424, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659425, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659426, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659427, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659428, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659429, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659430, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659431, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659432, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659433, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659434, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659435, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659436, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659437, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659438, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659439, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659440, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659441, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659442, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659443, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659444, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659445, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659446, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659447, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659448, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659449, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659450, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659451, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659452, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659453, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659454, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659455, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659456, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659457, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659458, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659459, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659460, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659461, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659462, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659463, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659464, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659465, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659466, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659467, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659468, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659469, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659470, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659471, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659472, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659473, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659474, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659475, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659476, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659477, '2021-12-17', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659478, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659479, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659480, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659481, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659482, '2021-12-17', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659483, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659484, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659485, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659486, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659487, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659488, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659489, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659490, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659491, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659492, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659493, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659494, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659495, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659496, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659497, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659498, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659499, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659500, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659501, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659502, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659503, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659504, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659505, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659506, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659507, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659508, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659509, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659510, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659511, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659512, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659513, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659514, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659515, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659516, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659517, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659518, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659519, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659520, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659521, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659522, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659523, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659524, '2021-12-17', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659525, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659526, '2021-12-17', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659527, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659528, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659529, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659530, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659531, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659532, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659533, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659534, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659535, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659536, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659537, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659538, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659539, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659540, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659541, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659542, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659543, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659544, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659545, '2021-12-17', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659546, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659547, '2021-12-17', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659548, '2021-12-17', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659549, '2021-12-17', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659550, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659551, '2021-12-17', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659552, '2021-12-17', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659553, '2021-12-17', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659554, '2021-12-17', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659555, '2021-12-17', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659556, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659557, '2021-12-17', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659558, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659559, '2021-12-17', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659560, '2021-12-17', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659561, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659562, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659563, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659564, '2021-12-17', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659565, '2021-12-17', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659566, '2021-12-17', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659567, '2021-12-17', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659568, '2021-12-17', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659569, '2021-12-17', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659570, '2021-12-17', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659571, '2021-12-17', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659572, '2021-12-17', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659573, '2021-12-17', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659574, '2021-12-17', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659575, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659576, '2021-12-17', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659577, '2021-12-17', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659578, '2021-12-17', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659579, '2021-12-17', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659580, '2021-12-17', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 103, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659581, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659582, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659583, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659584, '2021-12-17', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 103, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659585, '2021-12-17', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-16 22:57:48', '2021-12-16 22:57:48');
INSERT INTO `train_sku` VALUES (3659586, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659587, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659588, '2021-12-20', 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659589, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659590, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659591, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659592, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659593, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659594, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659595, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659596, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659597, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659598, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659599, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659600, '2021-12-20', 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659601, '2021-12-20', 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659602, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659603, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659604, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659605, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659606, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659607, '2021-12-20', 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659608, '2021-12-20', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659609, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659610, '2021-12-20', 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659611, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659612, '2021-12-20', 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659613, '2021-12-20', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659614, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659615, '2021-12-20', 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659616, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659617, '2021-12-20', 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659618, '2021-12-20', 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, NULL, 240, NULL, NULL, NULL, 264, 72, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659619, '2021-12-20', 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659620, '2021-12-20', 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659621, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659622, '2021-12-20', 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659623, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659624, '2021-12-20', 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659625, '2021-12-20', 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659626, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659627, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659628, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659629, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659630, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659631, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659632, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659633, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659634, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659635, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659636, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659637, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659638, '2021-12-20', 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659639, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659640, '2021-12-20', 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659641, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659642, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659643, '2021-12-20', 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659644, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659645, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659646, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659647, '2021-12-20', 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659648, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659649, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659650, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659651, '2021-12-20', 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659652, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659653, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659654, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659655, '2021-12-20', 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659656, '2021-12-20', 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659657, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659658, '2021-12-20', 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659659, '2021-12-20', 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659660, '2021-12-20', 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659661, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659662, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659663, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659664, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659665, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659666, '2021-12-20', 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659667, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659668, '2021-12-20', 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659669, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659670, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659671, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659672, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659673, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659674, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659675, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659676, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659677, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659678, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659679, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659680, '2021-12-20', 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659681, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659682, '2021-12-20', 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659683, '2021-12-20', 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659684, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659685, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659686, '2021-12-20', 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659687, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659688, '2021-12-20', 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659689, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659690, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659691, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659692, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659693, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659694, '2021-12-20', 1097, 'T31', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659695, '2021-12-20', 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659696, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659697, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659698, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659699, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659700, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659701, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659702, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659703, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659704, '2021-12-20', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659705, '2021-12-20', 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659706, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659707, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659708, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659709, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659710, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659711, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659712, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659713, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659714, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659715, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659716, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659717, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659718, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659719, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659720, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659721, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659722, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659723, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659724, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659725, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659726, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659727, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659728, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659729, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659730, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659731, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659732, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659733, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659734, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659735, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659736, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659737, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659738, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659739, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659740, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659741, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659742, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659743, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659744, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659745, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659746, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659747, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659748, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659749, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659750, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659751, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659752, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659753, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659754, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659755, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659756, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659757, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659758, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659759, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659760, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659761, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659762, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659763, '2021-12-20', 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659764, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659765, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659766, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659767, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659768, '2021-12-20', 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659769, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659770, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659771, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659772, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659773, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659774, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659775, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659776, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659777, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659778, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659779, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659780, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659781, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659782, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659783, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659784, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659785, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659786, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659787, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659788, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659789, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659790, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659791, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659792, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659793, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659794, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659795, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659796, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659797, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659798, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659799, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659800, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659801, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659802, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659803, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659804, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659805, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659806, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659807, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659808, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659809, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659810, '2021-12-20', 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659811, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659812, '2021-12-20', 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659813, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659814, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659815, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659816, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659817, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659818, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659819, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659820, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659821, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659822, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659823, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659824, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659825, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659826, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659827, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659828, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659829, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659830, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659831, '2021-12-20', 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659832, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659833, '2021-12-20', 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659834, '2021-12-20', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659835, '2021-12-20', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659836, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659837, '2021-12-20', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659838, '2021-12-20', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659839, '2021-12-20', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659840, '2021-12-20', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659841, '2021-12-20', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659842, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659843, '2021-12-20', 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659844, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659845, '2021-12-20', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659846, '2021-12-20', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659847, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659848, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659849, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659850, '2021-12-20', 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659851, '2021-12-20', 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659852, '2021-12-20', 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659853, '2021-12-20', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659854, '2021-12-20', 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659855, '2021-12-20', 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659856, '2021-12-20', 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659857, '2021-12-20', 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659858, '2021-12-20', 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659859, '2021-12-20', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659860, '2021-12-20', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659861, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659862, '2021-12-20', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659863, '2021-12-20', 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659864, '2021-12-20', 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659865, '2021-12-20', 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659866, '2021-12-20', 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659867, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659868, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659869, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659870, '2021-12-20', 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
INSERT INTO `train_sku` VALUES (3659871, '2021-12-20', 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, NULL, NULL, 104, 340, 36, NULL, NULL, '2021-12-20 16:15:12', '2021-12-20 16:15:12');
COMMIT;

-- ----------------------------
-- Table structure for train_station
-- ----------------------------
DROP TABLE IF EXISTS `train_station`;
CREATE TABLE `train_station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `number_id` bigint(20) DEFAULT NULL COMMENT '车次ID',
  `train_number` varchar(50) DEFAULT NULL COMMENT '车次号',
  `arrive_type` varchar(50) DEFAULT NULL COMMENT '到达类型',
  `arrive_time` varchar(50) DEFAULT NULL COMMENT '到达时间',
  `start_time` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `duration` varchar(50) DEFAULT NULL COMMENT '运行时间',
  `num` int(11) DEFAULT NULL COMMENT '车站编号',
  `name` varchar(50) DEFAULT NULL COMMENT '车站名称',
  `comment` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_number_station` (`number_id`) USING BTREE,
  CONSTRAINT `fk_number_station` FOREIGN KEY (`number_id`) REFERENCES `train_number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13406 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_station
-- ----------------------------
BEGIN;
INSERT INTO `train_station` VALUES (11604, 977, 'D1', '当日到达', '----', '18:07', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11605, 977, 'D1', '当日到达', '19:18', '19:20', '01:11', 2, '唐山北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11606, 977, 'D1', '当日到达', '20:16', '20:18', '02:09', 3, '北戴河', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11607, 977, 'D1', '当日到达', '23:23', '23:28', '05:16', 4, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11608, 977, 'D1', '当日到达', '23:40', '23:40', '05:33', 5, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11609, 978, 'D3', '当日到达', '----', '18:16', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11610, 978, 'D3', '当日到达', '18:58', '19:00', '00:42', 2, '蓟州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11611, 978, 'D3', '当日到达', '20:22', '20:24', '02:06', 3, '北戴河', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11612, 978, 'D3', '当日到达', '21:36', '21:37', '03:20', 4, '葫芦岛北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11613, 978, 'D3', '当日到达', '21:57', '21:58', '03:41', 5, '锦州南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11614, 978, 'D3', '当日到达', '22:27', '22:28', '04:11', 6, '盘锦北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11615, 978, 'D3', '当日到达', '23:35', '23:40', '05:19', 7, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11616, 978, 'D3', '当日到达', '23:51', '23:51', '05:35', 8, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11617, 979, 'D7', '当日到达', '----', '17:43', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11618, 979, 'D7', '当日到达', '18:52', '18:54', '01:09', 2, '唐山北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11619, 979, 'D7', '当日到达', '20:21', '20:24', '02:38', 3, '山海关', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11620, 979, 'D7', '当日到达', '21:07', '21:09', '03:24', 4, '葫芦岛北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11621, 979, 'D7', '当日到达', '21:55', '21:56', '04:12', 5, '盘锦北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11622, 979, 'D7', '当日到达', '23:00', '23:00', '05:17', 6, '沈阳北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11623, 980, 'D9', '当日到达', '----', '13:19', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11624, 980, 'D9', '当日到达', '15:22', '15:24', '02:03', 2, '北戴河', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11625, 980, 'D9', '当日到达', '16:16', '16:17', '02:57', 3, '绥中北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11626, 980, 'D9', '当日到达', '16:52', '16:53', '03:33', 4, '锦州南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11627, 980, 'D9', '当日到达', '17:18', '17:19', '03:59', 5, '盘锦北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11628, 980, 'D9', '当日到达', '17:39', '17:40', '04:20', 6, '台安', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11629, 980, 'D9', '当日到达', '18:21', '18:26', '05:02', 7, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11630, 980, 'D9', '当日到达', '18:38', '18:38', '05:19', 8, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11706, 991, 'D11', '当日到达', '----', '12:43', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11707, 991, 'D11', '当日到达', '13:52', '13:54', '01:09', 2, '唐山北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11708, 991, 'D11', '当日到达', '14:49', '14:51', '02:06', 3, '北戴河', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11709, 991, 'D11', '当日到达', '16:01', '16:02', '03:18', 4, '葫芦岛北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11710, 991, 'D11', '当日到达', '16:19', '16:20', '03:36', 5, '锦州南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11711, 991, 'D11', '当日到达', '17:38', '17:42', '04:55', 6, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11712, 991, 'D11', '当日到达', '17:54', '17:54', '05:11', 7, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11713, 992, 'D13', '当日到达', '----', '18:53', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11714, 992, 'D13', '当日到达', '20:02', '20:03', '01:09', 2, '唐山北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11715, 992, 'D13', '当日到达', '21:12', '21:15', '02:19', 3, '秦皇岛', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11716, 992, 'D13', '当日到达', '22:27', '22:29', '03:34', 4, '锦州南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11717, 992, 'D13', '当日到达', '23:58', '23:58', '05:05', 5, '沈阳北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11718, 993, 'D17', '当日到达', '----', '09:15', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11719, 993, 'D17', '当日到达', '10:24', '10:25', '01:09', 2, '唐山北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11720, 993, 'D17', '当日到达', '11:20', '11:21', '02:05', 3, '北戴河', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11721, 993, 'D17', '当日到达', '12:32', '12:33', '03:17', 4, '葫芦岛北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11722, 993, 'D17', '当日到达', '13:11', '13:12', '03:56', 5, '盘锦北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11723, 993, 'D17', '当日到达', '13:42', '13:43', '04:27', 6, '辽中', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11724, 993, 'D17', '当日到达', '14:17', '14:22', '05:02', 7, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11725, 993, 'D17', '当日到达', '14:33', '14:33', '05:18', 8, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11850, 1005, 'D51', '当日到达', '----', '17:13', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11851, 1005, 'D51', '当日到达', '18:24', '18:25', '01:11', 2, '唐山北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11852, 1005, 'D51', '当日到达', '18:52', '18:53', '01:39', 3, '滦县', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11853, 1005, 'D51', '当日到达', '19:40', '19:42', '02:27', 4, '秦皇岛', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11854, 1005, 'D51', '当日到达', '20:04', '20:08', '02:51', 5, '山海关', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11855, 1005, 'D51', '当日到达', '20:50', '20:51', '03:37', 6, '葫芦岛北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11856, 1005, 'D51', '当日到达', '21:11', '21:12', '03:58', 7, '锦州南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11857, 1005, 'D51', '当日到达', '21:52', '21:54', '04:39', 8, '盘锦', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11858, 1005, 'D51', '当日到达', '22:18', '22:20', '05:05', 9, '海城西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11859, 1005, 'D51', '当日到达', '22:32', '22:34', '05:19', 10, '鞍山西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11860, 1005, 'D51', '当日到达', '22:46', '22:48', '05:33', 11, '辽阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11861, 1005, 'D51', '当日到达', '23:17', '23:17', '06:04', 12, '沈阳北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11887, 1011, 'G19', '当日到达', '----', '08:00', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11888, 1011, 'G19', '当日到达', '09:22', '09:24', '01:22', 2, '济南西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11889, 1011, 'G19', '当日到达', '11:24', '11:26', '03:24', 3, '南京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11890, 1011, 'G19', '当日到达', '12:13', '12:15', '04:13', 4, '湖州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11891, 1011, 'G19', '当日到达', '12:38', '12:38', '04:38', 5, '杭州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11943, 1019, 'G35', '当日到达', '----', '15:10', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11944, 1019, 'G35', '当日到达', '16:01', '16:03', '00:51', 2, '沧州西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11945, 1019, 'G35', '当日到达', '16:49', '16:51', '01:39', 3, '济南西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11946, 1019, 'G35', '当日到达', '17:34', '17:38', '02:24', 4, '滕州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11947, 1019, 'G35', '当日到达', '18:03', '18:05', '02:53', 5, '徐州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11948, 1019, 'G35', '当日到达', '18:42', '18:49', '03:32', 6, '蚌埠南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11949, 1019, 'G35', '当日到达', '19:30', '19:32', '04:20', 7, '南京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11950, 1019, 'G35', '当日到达', '19:49', '19:51', '04:39', 8, '溧水', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11951, 1019, 'G35', '当日到达', '20:20', '20:22', '05:10', 9, '长兴', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11952, 1019, 'G35', '当日到达', '20:31', '20:33', '05:21', 10, '湖州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11953, 1019, 'G35', '当日到达', '20:55', '20:55', '05:45', 11, '杭州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11954, 1020, 'G37', '当日到达', '----', '16:05', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11955, 1020, 'G37', '当日到达', '16:39', '16:41', '00:34', 2, '天津南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11956, 1020, 'G37', '当日到达', '17:03', '17:08', '00:58', 3, '沧州西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11957, 1020, 'G37', '当日到达', '17:35', '17:37', '01:30', 4, '德州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11958, 1020, 'G37', '当日到达', '18:01', '18:03', '01:56', 5, '济南西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11959, 1020, 'G37', '当日到达', '19:06', '19:08', '03:01', 6, '徐州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11960, 1020, 'G37', '当日到达', '19:27', '19:32', '03:22', 7, '宿州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11961, 1020, 'G37', '当日到达', '19:55', '19:57', '03:50', 8, '蚌埠南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11962, 1020, 'G37', '当日到达', '20:40', '20:44', '04:35', 9, '南京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11963, 1020, 'G37', '当日到达', '21:12', '21:14', '05:07', 10, '溧阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11964, 1020, 'G37', '当日到达', '21:25', '21:27', '05:20', 11, '宜兴', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11965, 1020, 'G37', '当日到达', '21:44', '21:46', '05:39', 12, '湖州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11966, 1020, 'G37', '当日到达', '22:07', '22:07', '06:02', 13, '杭州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11967, 1021, 'G39', '当日到达', '----', '19:04', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11968, 1021, 'G39', '当日到达', '22:17', '22:19', '03:13', 2, '南京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11969, 1021, 'G39', '当日到达', '23:22', '23:22', '04:18', 3, '杭州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11970, 1022, 'G41', '当日到达', '----', '09:15', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11971, 1022, 'G41', '当日到达', '10:07', '10:09', '00:52', 2, '沧州西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11972, 1022, 'G41', '当日到达', '10:55', '10:58', '01:40', 3, '济南西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11973, 1022, 'G41', '当日到达', '11:15', '11:17', '02:00', 4, '泰安', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11974, 1022, 'G41', '当日到达', '12:42', '12:47', '03:27', 5, '蚌埠南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11975, 1022, 'G41', '当日到达', '13:29', '13:31', '04:14', 6, '南京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11976, 1022, 'G41', '当日到达', '14:03', '14:08', '04:48', 7, '常州北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11977, 1022, 'G41', '当日到达', '14:49', '14:51', '05:34', 8, '上海虹桥', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11978, 1022, 'G41', '当日到达', '15:18', '15:24', '06:03', 9, '嘉兴南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11979, 1022, 'G41', '当日到达', '15:48', '15:48', '06:33', 10, '杭州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11980, 1023, 'G43', '当日到达', '----', '14:05', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11981, 1023, 'G43', '当日到达', '15:18', '15:20', '01:13', 2, '德州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11982, 1023, 'G43', '当日到达', '15:44', '15:46', '01:39', 3, '济南西', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11983, 1023, 'G43', '当日到达', '16:18', '16:20', '02:13', 4, '曲阜东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11984, 1023, 'G43', '当日到达', '16:56', '16:58', '02:51', 5, '徐州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11985, 1023, 'G43', '当日到达', '18:00', '18:09', '03:55', 6, '滁州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11986, 1023, 'G43', '当日到达', '18:26', '18:28', '04:21', 7, '南京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11987, 1023, 'G43', '当日到达', '19:18', '19:20', '05:13', 8, '苏州北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11988, 1023, 'G43', '当日到达', '19:43', '19:47', '05:38', 9, '上海虹桥', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11989, 1023, 'G43', '当日到达', '20:15', '20:17', '06:10', 10, '嘉兴南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11990, 1023, 'G43', '当日到达', '20:28', '20:30', '06:23', 11, '桐乡', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (11991, 1023, 'G43', '当日到达', '20:47', '20:47', '06:42', 12, '杭州东', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12213, 1041, 'K53', '当日到达', '----', '22:33', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12214, 1041, 'K53', '次日到达', '07:25', '07:25', '08:52', 2, '沈阳北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12808, 1097, 'T31', '当日到达', '----', '21:15', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-11-01 16:30:33');
INSERT INTO `train_station` VALUES (12809, 1097, 'T31', '当日到达', '22:30', '22:39', '01:15', 2, '天津西', NULL, '2021-10-28 15:45:13', '2021-11-01 16:30:33');
INSERT INTO `train_station` VALUES (12810, 1097, 'T31', '次日到达', '06:51', '06:57', '09:36', 3, '南京', NULL, '2021-10-28 15:45:13', '2021-11-01 16:30:33');
INSERT INTO `train_station` VALUES (12811, 1097, 'T31', '次日到达', '09:59', '10:01', '12:44', 4, '嘉兴', NULL, '2021-10-28 15:45:13', '2021-11-01 16:30:33');
INSERT INTO `train_station` VALUES (12812, 1097, 'T31', '次日到达', '10:56', '10:56', '13:41', 5, '杭州', NULL, '2021-10-28 15:45:13', '2021-11-01 16:30:33');
INSERT INTO `train_station` VALUES (12813, 1098, 'D717', '当日到达', '----', '19:16', '00:00', 1, '北京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12814, 1098, 'D717', '当日到达', '22:19', '22:21', '03:03', 2, '德州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12815, 1098, 'D717', '次日到达', '04:45', '04:51', '09:29', 3, '南京', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12816, 1098, 'D717', '次日到达', '08:02', '08:04', '12:46', 4, '海宁', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (12817, 1098, 'D717', '次日到达', '08:47', '08:47', '13:31', 5, '杭州', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13396, 1158, 'G217', '当日到达', '----', '13:30', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13397, 1158, 'G217', '当日到达', '17:15', '17:15', '03:45', 2, '沈阳北', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13398, 1159, 'G219', '当日到达', '----', '08:00', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13399, 1159, 'G219', '当日到达', '08:35', '08:37', '00:35', 2, '天津', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13400, 1159, 'G219', '当日到达', '12:01', '12:09', '04:01', 3, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13401, 1159, 'G219', '当日到达', '12:20', '12:20', '04:20', 4, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13402, 1160, 'G237', '当日到达', '----', '14:30', '00:00', 1, '北京南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13403, 1160, 'G237', '当日到达', '15:34', '15:36', '01:04', 2, '唐山', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13404, 1160, 'G237', '当日到达', '18:32', '18:40', '04:02', 3, '沈阳', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
INSERT INTO `train_station` VALUES (13405, 1160, 'G237', '当日到达', '18:52', '18:52', '04:22', 4, '沈阳南', NULL, '2021-10-28 15:45:13', '2021-10-28 15:45:13');
COMMIT;

-- ----------------------------
-- Table structure for train_timetable
-- ----------------------------
DROP TABLE IF EXISTS `train_timetable`;
CREATE TABLE `train_timetable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `number_id` bigint(20) DEFAULT NULL COMMENT '车次ID',
  `train_number` varchar(50) DEFAULT NULL COMMENT '车次号',
  `start_station` varchar(50) DEFAULT NULL COMMENT '始发站',
  `end_station` varchar(50) DEFAULT NULL COMMENT '终点站',
  `from_station` varchar(50) DEFAULT NULL COMMENT '开始站点',
  `to_station` varchar(50) DEFAULT NULL COMMENT '到达站点',
  `start_time` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `arrival_time` varchar(50) DEFAULT NULL COMMENT '到达时间',
  `duration` varchar(50) DEFAULT NULL COMMENT '历时时长',
  `comment` varchar(500) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_number_timetable` (`number_id`) USING BTREE,
  CONSTRAINT `fk_number_timetable` FOREIGN KEY (`number_id`) REFERENCES `train_number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=808313 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_timetable
-- ----------------------------
BEGIN;
INSERT INTO `train_timetable` VALUES (76, 1022, 'G41', '北京南', '杭州东', '北京南', '上海虹桥', '09:15', '14:49', '05:34', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (95, 1023, 'G43', '北京南', '杭州东', '北京南', '上海虹桥', '14:05', '19:43', '05:38', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (293, 1159, 'G219', '北京南', '沈阳南', '北京南', '天津', '08:00', '08:35', '00:35', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (392, 1020, 'G37', '北京南', '杭州东', '北京南', '天津南', '16:05', '16:39', '00:34', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1239, 1011, 'G19', '北京南', '杭州东', '北京南', '济南西', '08:00', '09:22', '01:22', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1250, 1022, 'G41', '北京南', '杭州东', '北京南', '济南西', '09:15', '10:55', '01:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1288, 1023, 'G43', '北京南', '杭州东', '北京南', '济南西', '14:05', '15:44', '01:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1295, 1019, 'G35', '北京南', '杭州东', '北京南', '济南西', '15:10', '16:49', '01:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1303, 1020, 'G37', '北京南', '杭州东', '北京南', '济南西', '16:05', '18:01', '01:56', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1521, 1011, 'G19', '北京南', '杭州东', '北京南', '杭州东', '08:00', '12:38', '04:38', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1524, 1022, 'G41', '北京南', '杭州东', '北京南', '杭州东', '09:15', '15:48', '06:33', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1530, 1023, 'G43', '北京南', '杭州东', '北京南', '杭州东', '14:05', '20:47', '06:42', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1531, 1019, 'G35', '北京南', '杭州东', '北京南', '杭州东', '15:10', '20:55', '05:45', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1533, 1020, 'G37', '北京南', '杭州东', '北京南', '杭州东', '16:05', '22:07', '06:02', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1534, 1021, 'G39', '北京南', '杭州东', '北京南', '杭州东', '19:04', '23:22', '04:18', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1536, 1098, 'D717', '北京', '杭州', '北京', '杭州', '19:16', '08:47', '13:31', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1846, 1011, 'G19', '北京南', '杭州东', '北京南', '南京南', '08:00', '11:24', '03:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1854, 1022, 'G41', '北京南', '杭州东', '北京南', '南京南', '09:15', '13:29', '04:14', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1879, 1023, 'G43', '北京南', '杭州东', '北京南', '南京南', '14:05', '18:26', '04:21', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1883, 1019, 'G35', '北京南', '杭州东', '北京南', '南京南', '15:10', '19:30', '04:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1887, 1020, 'G37', '北京南', '杭州东', '北京南', '南京南', '16:05', '20:40', '04:35', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (1898, 1021, 'G39', '北京南', '杭州东', '北京南', '南京南', '19:04', '22:17', '03:13', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2320, 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳', '08:00', '12:01', '04:01', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2322, 993, 'D17', '北京', '沈阳南', '北京', '沈阳', '09:15', '14:17', '05:02', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2330, 991, 'D11', '北京', '沈阳南', '北京', '沈阳', '12:43', '17:38', '04:55', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2333, 980, 'D9', '北京', '沈阳南', '北京', '沈阳', '13:19', '18:21', '05:02', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2334, 1158, 'G217', '北京南', '沈阳北', '北京南', '沈阳北', '13:30', '17:15', '03:45', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2342, 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳', '14:30', '18:32', '04:02', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2350, 1005, 'D51', '北京', '沈阳北', '北京', '沈阳北', '17:13', '23:17', '06:04', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2352, 979, 'D7', '北京', '沈阳北', '北京', '沈阳北', '17:43', '23:00', '05:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2353, 978, 'D3', '北京', '沈阳南', '北京', '沈阳', '18:16', '23:35', '05:19', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2354, 992, 'D13', '北京', '沈阳北', '北京', '沈阳北', '18:53', '23:58', '05:05', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2358, 1041, 'K53', '北京', '沈阳北', '北京', '沈阳北', '22:33', '07:25', '08:52', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2447, 977, 'D1', '北京', '沈阳南', '北京', '沈阳', '18:07', '23:23', '05:16', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2462, 1159, 'G219', '北京南', '沈阳南', '北京南', '沈阳南', '08:00', '12:20', '04:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2464, 993, 'D17', '北京', '沈阳南', '北京', '沈阳南', '09:15', '14:33', '05:18', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2472, 991, 'D11', '北京', '沈阳南', '北京', '沈阳南', '12:43', '17:54', '05:11', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2475, 980, 'D9', '北京', '沈阳南', '北京', '沈阳南', '13:19', '18:38', '05:19', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2484, 1160, 'G237', '北京南', '沈阳南', '北京南', '沈阳南', '14:30', '18:52', '04:22', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2495, 977, 'D1', '北京', '沈阳南', '北京', '沈阳南', '18:07', '23:40', '05:33', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2496, 978, 'D3', '北京', '沈阳南', '北京', '沈阳南', '18:16', '23:51', '05:35', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2842, 1005, 'D51', '北京', '沈阳北', '北京', '鞍山西', '17:13', '22:32', '05:19', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2896, 1022, 'G41', '北京南', '杭州东', '北京南', '蚌埠南', '09:15', '12:42', '03:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2912, 1019, 'G35', '北京南', '杭州东', '北京南', '蚌埠南', '15:10', '18:42', '03:32', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (2915, 1020, 'G37', '北京南', '杭州东', '北京南', '蚌埠南', '16:05', '19:55', '03:50', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3021, 1022, 'G41', '北京南', '杭州东', '北京南', '常州北', '09:15', '14:03', '04:48', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3052, 1022, 'G41', '北京南', '杭州东', '北京南', '沧州西', '09:15', '10:07', '00:52', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3068, 1019, 'G35', '北京南', '杭州东', '北京南', '沧州西', '15:10', '16:01', '00:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3074, 1020, 'G37', '北京南', '杭州东', '北京南', '沧州西', '16:05', '17:03', '00:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3219, 1023, 'G43', '北京南', '杭州东', '北京南', '德州东', '14:05', '15:18', '01:13', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3229, 1020, 'G37', '北京南', '杭州东', '北京南', '德州东', '16:05', '17:35', '01:30', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3485, 993, 'D17', '北京', '沈阳南', '北京', '葫芦岛北', '09:15', '12:32', '03:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3492, 991, 'D11', '北京', '沈阳南', '北京', '葫芦岛北', '12:43', '16:01', '03:18', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3501, 1005, 'D51', '北京', '沈阳北', '北京', '葫芦岛北', '17:13', '20:50', '03:37', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3502, 979, 'D7', '北京', '沈阳北', '北京', '葫芦岛北', '17:43', '21:07', '03:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3503, 978, 'D3', '北京', '沈阳南', '北京', '葫芦岛北', '18:16', '21:36', '03:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3677, 978, 'D3', '北京', '沈阳南', '北京', '蓟州', '18:16', '18:58', '00:42', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3696, 991, 'D11', '北京', '沈阳南', '北京', '锦州南', '12:43', '16:19', '03:36', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3697, 980, 'D9', '北京', '沈阳南', '北京', '锦州南', '13:19', '16:52', '03:33', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3706, 1005, 'D51', '北京', '沈阳北', '北京', '锦州南', '17:13', '21:11', '03:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3707, 978, 'D3', '北京', '沈阳南', '北京', '锦州南', '18:16', '21:57', '03:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3708, 992, 'D13', '北京', '沈阳北', '北京', '锦州南', '18:53', '22:27', '03:34', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3873, 993, 'D17', '北京', '沈阳南', '北京', '辽中', '09:15', '13:42', '04:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (3937, 1005, 'D51', '北京', '沈阳北', '北京', '盘锦', '17:13', '21:52', '04:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4036, 1005, 'D51', '北京', '沈阳北', '北京', '山海关', '17:13', '20:04', '02:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4038, 979, 'D7', '北京', '沈阳北', '北京', '山海关', '17:43', '20:21', '02:38', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4111, 1023, 'G43', '北京南', '杭州东', '北京南', '苏州北', '14:05', '19:18', '05:13', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4145, 1020, 'G37', '北京南', '杭州东', '北京南', '宿州东', '16:05', '19:27', '03:22', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4384, 993, 'D17', '北京', '沈阳南', '北京', '唐山北', '09:15', '10:24', '01:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4393, 991, 'D11', '北京', '沈阳南', '北京', '唐山北', '12:43', '13:52', '01:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4402, 1160, 'G237', '北京南', '沈阳南', '北京南', '唐山', '14:30', '15:34', '01:04', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4410, 1005, 'D51', '北京', '沈阳北', '北京', '唐山北', '17:13', '18:24', '01:11', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4412, 979, 'D7', '北京', '沈阳北', '北京', '唐山北', '17:43', '18:52', '01:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4413, 977, 'D1', '北京', '沈阳南', '北京', '唐山北', '18:07', '19:18', '01:11', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4415, 992, 'D13', '北京', '沈阳北', '北京', '唐山北', '18:53', '20:02', '01:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4426, 1022, 'G41', '北京南', '杭州东', '北京南', '泰安', '09:15', '11:15', '02:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4781, 1023, 'G43', '北京南', '杭州东', '北京南', '徐州东', '14:05', '16:56', '02:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4784, 1019, 'G35', '北京南', '杭州东', '北京南', '徐州东', '15:10', '18:03', '02:53', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (4789, 1020, 'G37', '北京南', '杭州东', '北京南', '徐州东', '16:05', '19:06', '03:01', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5154, 993, 'D17', '北京', '沈阳南', '北京', '北戴河', '09:15', '11:20', '02:05', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5161, 991, 'D11', '北京', '沈阳南', '北京', '北戴河', '12:43', '14:49', '02:06', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5164, 980, 'D9', '北京', '沈阳南', '北京', '北戴河', '13:19', '15:22', '02:03', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5174, 977, 'D1', '北京', '沈阳南', '北京', '北戴河', '18:07', '20:16', '02:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5175, 978, 'D3', '北京', '沈阳南', '北京', '北戴河', '18:16', '20:22', '02:06', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5381, 1019, 'G35', '北京南', '杭州东', '北京南', '长兴', '15:10', '20:20', '05:10', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (5395, 1023, 'G43', '北京南', '杭州东', '北京南', '滁州', '14:05', '18:00', '03:55', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6220, 1005, 'D51', '北京', '沈阳北', '北京', '海城西', '17:13', '22:18', '05:05', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6339, 1011, 'G19', '北京南', '杭州东', '北京南', '湖州', '08:00', '12:13', '04:13', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6344, 1019, 'G35', '北京南', '杭州东', '北京南', '湖州', '15:10', '20:31', '05:21', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6346, 1020, 'G37', '北京南', '杭州东', '北京南', '湖州', '16:05', '21:44', '05:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6382, 1022, 'G41', '北京南', '杭州东', '北京南', '嘉兴南', '09:15', '15:18', '06:03', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6383, 1023, 'G43', '北京南', '杭州东', '北京南', '嘉兴南', '14:05', '20:15', '06:10', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6627, 1005, 'D51', '北京', '沈阳北', '北京', '滦县', '17:13', '18:52', '01:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6635, 1005, 'D51', '北京', '沈阳北', '北京', '辽阳', '17:13', '22:46', '05:33', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6718, 993, 'D17', '北京', '沈阳南', '北京', '盘锦北', '09:15', '13:11', '03:56', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6720, 980, 'D9', '北京', '沈阳南', '北京', '盘锦北', '13:19', '17:18', '03:59', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6723, 979, 'D7', '北京', '沈阳北', '北京', '盘锦北', '17:43', '21:55', '04:12', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6724, 978, 'D3', '北京', '沈阳南', '北京', '盘锦北', '18:16', '22:27', '04:11', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6767, 1023, 'G43', '北京南', '杭州东', '北京南', '曲阜东', '14:05', '16:18', '02:13', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6827, 1005, 'D51', '北京', '沈阳北', '北京', '秦皇岛', '17:13', '19:40', '02:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (6828, 992, 'D13', '北京', '沈阳北', '北京', '秦皇岛', '18:53', '21:12', '02:19', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (7042, 980, 'D9', '北京', '沈阳南', '北京', '绥中北', '13:19', '16:16', '02:57', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (7187, 980, 'D9', '北京', '沈阳南', '北京', '台安', '13:19', '17:39', '04:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (7222, 1023, 'G43', '北京南', '杭州东', '北京南', '桐乡', '14:05', '20:28', '06:23', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (7240, 1019, 'G35', '北京南', '杭州东', '北京南', '滕州东', '15:10', '17:34', '02:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (10177, 1019, 'G35', '北京南', '杭州东', '北京南', '溧水', '15:10', '19:49', '04:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (10181, 1020, 'G37', '北京南', '杭州东', '北京南', '溧阳', '16:05', '21:12', '05:07', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (11452, 1020, 'G37', '北京南', '杭州东', '北京南', '宜兴', '16:05', '21:25', '05:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (49509, 1097, 'T31', '北京', '杭州', '北京', '杭州', '21:15', '10:56', '13:41', NULL, '2021-10-28 15:47:23', '2021-11-01 16:30:50');
INSERT INTO `train_timetable` VALUES (49941, 1098, 'D717', '北京', '杭州', '北京', '南京', '19:16', '04:45', '09:29', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (111156, 1022, 'G41', '北京南', '杭州东', '上海虹桥', '杭州东', '14:51', '15:48', '00:57', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (111223, 1023, 'G43', '北京南', '杭州东', '上海虹桥', '杭州东', '19:47', '20:47', '01:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (116906, 1022, 'G41', '北京南', '杭州东', '上海虹桥', '嘉兴南', '14:51', '15:18', '00:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (116960, 1023, 'G43', '北京南', '杭州东', '上海虹桥', '嘉兴南', '19:47', '20:15', '00:28', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (119052, 1023, 'G43', '北京南', '杭州东', '上海虹桥', '桐乡', '19:47', '20:28', '00:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (166330, 1020, 'G37', '北京南', '杭州东', '天津南', '济南西', '16:41', '18:01', '01:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (166533, 1020, 'G37', '北京南', '杭州东', '天津南', '杭州东', '16:41', '22:07', '05:26', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (166787, 1020, 'G37', '北京南', '杭州东', '天津南', '南京南', '16:41', '20:40', '03:59', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (166985, 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳', '08:37', '12:01', '03:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (167237, 1159, 'G219', '北京南', '沈阳南', '天津', '沈阳南', '08:37', '12:20', '03:43', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (167462, 1020, 'G37', '北京南', '杭州东', '天津南', '蚌埠南', '16:41', '19:55', '03:14', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (167621, 1020, 'G37', '北京南', '杭州东', '天津南', '沧州西', '16:41', '17:03', '00:22', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (167784, 1020, 'G37', '北京南', '杭州东', '天津南', '德州东', '16:41', '17:35', '00:54', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (168599, 1020, 'G37', '北京南', '杭州东', '天津南', '宿州东', '16:41', '19:27', '02:46', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (169041, 1020, 'G37', '北京南', '杭州东', '天津南', '徐州东', '16:41', '19:06', '02:25', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (170199, 1020, 'G37', '北京南', '杭州东', '天津南', '湖州', '16:41', '21:44', '05:03', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (172857, 1020, 'G37', '北京南', '杭州东', '天津南', '溧阳', '16:41', '21:12', '04:31', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (173733, 1020, 'G37', '北京南', '杭州东', '天津南', '宜兴', '16:41', '21:25', '04:44', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (259947, 1022, 'G41', '北京南', '杭州东', '济南西', '上海虹桥', '10:58', '14:49', '03:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (259970, 1023, 'G43', '北京南', '杭州东', '济南西', '上海虹桥', '15:46', '19:43', '03:57', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260736, 1011, 'G19', '北京南', '杭州东', '济南西', '杭州东', '09:24', '12:38', '03:14', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260739, 1022, 'G41', '北京南', '杭州东', '济南西', '杭州东', '10:58', '15:48', '04:50', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260748, 1023, 'G43', '北京南', '杭州东', '济南西', '杭州东', '15:46', '20:47', '05:01', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260749, 1019, 'G35', '北京南', '杭州东', '济南西', '杭州东', '16:51', '20:55', '04:04', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260757, 1020, 'G37', '北京南', '杭州东', '济南西', '杭州东', '18:03', '22:07', '04:04', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260876, 1011, 'G19', '北京南', '杭州东', '济南西', '南京南', '09:24', '11:24', '02:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260886, 1022, 'G41', '北京南', '杭州东', '济南西', '南京南', '10:58', '13:29', '02:31', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260916, 1023, 'G43', '北京南', '杭州东', '济南西', '南京南', '15:46', '18:26', '02:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260924, 1019, 'G35', '北京南', '杭州东', '济南西', '南京南', '16:51', '19:30', '02:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (260937, 1020, 'G37', '北京南', '杭州东', '济南西', '南京南', '18:03', '20:40', '02:37', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (261345, 1022, 'G41', '北京南', '杭州东', '济南西', '蚌埠南', '10:58', '12:42', '01:44', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (261367, 1019, 'G35', '北京南', '杭州东', '济南西', '蚌埠南', '16:51', '18:42', '01:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (261376, 1020, 'G37', '北京南', '杭州东', '济南西', '蚌埠南', '18:03', '19:55', '01:52', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (261435, 1022, 'G41', '北京南', '杭州东', '济南西', '常州北', '10:58', '14:03', '03:05', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (262363, 1023, 'G43', '北京南', '杭州东', '济南西', '苏州北', '15:46', '19:18', '03:32', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (262416, 1020, 'G37', '北京南', '杭州东', '济南西', '宿州东', '18:03', '19:27', '01:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (262578, 1022, 'G41', '北京南', '杭州东', '济南西', '泰安', '10:58', '11:15', '00:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (262908, 1023, 'G43', '北京南', '杭州东', '济南西', '徐州东', '15:46', '16:56', '01:10', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (262918, 1019, 'G35', '北京南', '杭州东', '济南西', '徐州东', '16:51', '18:03', '01:12', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (262934, 1020, 'G37', '北京南', '杭州东', '济南西', '徐州东', '18:03', '19:06', '01:03', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (263534, 1019, 'G35', '北京南', '杭州东', '济南西', '长兴', '16:51', '20:20', '03:29', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (263557, 1023, 'G43', '北京南', '杭州东', '济南西', '滁州', '15:46', '18:00', '02:14', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (264155, 1011, 'G19', '北京南', '杭州东', '济南西', '湖州', '09:24', '12:13', '02:49', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (264161, 1019, 'G35', '北京南', '杭州东', '济南西', '湖州', '16:51', '20:31', '03:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (264164, 1020, 'G37', '北京南', '杭州东', '济南西', '湖州', '18:03', '21:44', '03:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (264191, 1022, 'G41', '北京南', '杭州东', '济南西', '嘉兴南', '10:58', '15:18', '04:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (264193, 1023, 'G43', '北京南', '杭州东', '济南西', '嘉兴南', '15:46', '20:15', '04:29', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (264573, 1023, 'G43', '北京南', '杭州东', '济南西', '曲阜东', '15:46', '16:18', '00:32', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (265177, 1023, 'G43', '北京南', '杭州东', '济南西', '桐乡', '15:46', '20:28', '04:42', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (265212, 1019, 'G35', '北京南', '杭州东', '济南西', '滕州东', '16:51', '17:34', '00:43', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (266820, 1019, 'G35', '北京南', '杭州东', '济南西', '溧水', '16:51', '19:49', '02:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (266834, 1020, 'G37', '北京南', '杭州东', '济南西', '溧阳', '18:03', '21:12', '03:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (268001, 1020, 'G37', '北京南', '杭州东', '济南西', '宜兴', '18:03', '21:25', '03:22', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (422559, 1022, 'G41', '北京南', '杭州东', '南京南', '上海虹桥', '13:31', '14:49', '01:18', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (422648, 1023, 'G43', '北京南', '杭州东', '南京南', '上海虹桥', '18:28', '19:43', '01:15', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (425579, 1022, 'G41', '北京南', '杭州东', '南京南', '常州北', '13:31', '14:03', '00:32', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (426979, 1023, 'G43', '北京南', '杭州东', '南京南', '苏州北', '18:28', '19:18', '00:50', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (428623, 1019, 'G35', '北京南', '杭州东', '南京南', '长兴', '19:32', '20:20', '00:48', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (429839, 1011, 'G19', '北京南', '杭州东', '南京南', '湖州', '11:26', '12:13', '00:47', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (429882, 1019, 'G35', '北京南', '杭州东', '南京南', '湖州', '19:32', '20:31', '00:59', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (429886, 1020, 'G37', '北京南', '杭州东', '南京南', '湖州', '20:44', '21:44', '01:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (429984, 1022, 'G41', '北京南', '杭州东', '南京南', '嘉兴南', '13:31', '15:18', '01:47', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (429992, 1023, 'G43', '北京南', '杭州东', '南京南', '嘉兴南', '18:28', '20:15', '01:47', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (432022, 1023, 'G43', '北京南', '杭州东', '南京南', '桐乡', '18:28', '20:28', '02:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (434690, 1019, 'G35', '北京南', '杭州东', '南京南', '溧水', '19:32', '19:49', '00:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (434731, 1020, 'G37', '北京南', '杭州东', '南京南', '溧阳', '20:44', '21:12', '00:28', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (435653, 1020, 'G37', '北京南', '杭州东', '南京南', '宜兴', '20:44', '21:25', '00:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (438287, 1011, 'G19', '北京南', '杭州东', '南京南', '杭州东', '11:26', '12:38', '01:12', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (438306, 1022, 'G41', '北京南', '杭州东', '南京南', '杭州东', '13:31', '15:48', '02:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (438345, 1023, 'G43', '北京南', '杭州东', '南京南', '杭州东', '18:28', '20:47', '02:19', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (438351, 1019, 'G35', '北京南', '杭州东', '南京南', '杭州东', '19:32', '20:55', '01:23', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (438358, 1020, 'G37', '北京南', '杭州东', '南京南', '杭州东', '20:44', '22:07', '01:23', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (438361, 1021, 'G39', '北京南', '杭州东', '南京南', '杭州东', '22:19', '23:22', '01:03', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (578634, 1005, 'D51', '北京', '沈阳北', '鞍山西', '沈阳北', '22:34', '23:17', '00:43', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (579900, 1005, 'D51', '北京', '沈阳北', '鞍山西', '辽阳', '22:34', '22:46', '00:12', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (584547, 1022, 'G41', '北京南', '杭州东', '蚌埠南', '上海虹桥', '12:47', '14:49', '02:02', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585021, 1022, 'G41', '北京南', '杭州东', '蚌埠南', '杭州东', '12:47', '15:48', '03:01', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585027, 1019, 'G35', '北京南', '杭州东', '蚌埠南', '杭州东', '18:49', '20:55', '02:06', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585029, 1020, 'G37', '北京南', '杭州东', '蚌埠南', '杭州东', '19:57', '22:07', '02:10', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585331, 1022, 'G41', '北京南', '杭州东', '蚌埠南', '南京南', '12:47', '13:29', '00:42', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585359, 1019, 'G35', '北京南', '杭州东', '蚌埠南', '南京南', '18:49', '19:30', '00:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585362, 1020, 'G37', '北京南', '杭州东', '蚌埠南', '南京南', '19:57', '20:40', '00:43', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (585742, 1022, 'G41', '北京南', '杭州东', '蚌埠南', '常州北', '12:47', '14:03', '01:16', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (587011, 1019, 'G35', '北京南', '杭州东', '蚌埠南', '长兴', '18:49', '20:20', '01:31', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (587520, 1019, 'G35', '北京南', '杭州东', '蚌埠南', '湖州', '18:49', '20:31', '01:42', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (587521, 1020, 'G37', '北京南', '杭州东', '蚌埠南', '湖州', '19:57', '21:44', '01:47', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (587558, 1022, 'G41', '北京南', '杭州东', '蚌埠南', '嘉兴南', '12:47', '15:18', '02:31', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (589745, 1019, 'G35', '北京南', '杭州东', '蚌埠南', '溧水', '18:49', '19:49', '01:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (590236, 1020, 'G37', '北京南', '杭州东', '蚌埠南', '宜兴', '19:57', '21:25', '01:28', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (615649, 1022, 'G41', '北京南', '杭州东', '常州北', '上海虹桥', '14:08', '14:49', '00:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (616746, 1022, 'G41', '北京南', '杭州东', '常州北', '杭州东', '14:08', '15:48', '01:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (620021, 1022, 'G41', '北京南', '杭州东', '常州北', '嘉兴南', '14:08', '15:18', '01:10', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629223, 1022, 'G41', '北京南', '杭州东', '沧州西', '上海虹桥', '10:09', '14:49', '04:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629654, 1022, 'G41', '北京南', '杭州东', '沧州西', '济南西', '10:09', '10:55', '00:46', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629676, 1019, 'G35', '北京南', '杭州东', '沧州西', '济南西', '16:03', '16:49', '00:46', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629683, 1020, 'G37', '北京南', '杭州东', '沧州西', '济南西', '17:08', '18:01', '00:53', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629746, 1022, 'G41', '北京南', '杭州东', '沧州西', '杭州东', '10:09', '15:48', '05:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629751, 1019, 'G35', '北京南', '杭州东', '沧州西', '杭州东', '16:03', '20:55', '04:52', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629753, 1020, 'G37', '北京南', '杭州东', '沧州西', '杭州东', '17:08', '22:07', '04:59', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629929, 1022, 'G41', '北京南', '杭州东', '沧州西', '南京南', '10:09', '13:29', '03:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629943, 1019, 'G35', '北京南', '杭州东', '沧州西', '南京南', '16:03', '19:30', '03:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (629947, 1020, 'G37', '北京南', '杭州东', '沧州西', '南京南', '17:08', '20:40', '03:32', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630127, 1022, 'G41', '北京南', '杭州东', '沧州西', '蚌埠南', '10:09', '12:42', '02:33', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630138, 1019, 'G35', '北京南', '杭州东', '沧州西', '蚌埠南', '16:03', '18:42', '02:39', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630140, 1020, 'G37', '北京南', '杭州东', '沧州西', '蚌埠南', '17:08', '19:55', '02:47', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630168, 1022, 'G41', '北京南', '杭州东', '沧州西', '常州北', '10:09', '14:03', '03:54', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630253, 1020, 'G37', '北京南', '杭州东', '沧州西', '德州东', '17:08', '17:35', '00:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630504, 1020, 'G37', '北京南', '杭州东', '沧州西', '宿州东', '17:08', '19:27', '02:19', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630618, 1022, 'G41', '北京南', '杭州东', '沧州西', '泰安', '10:09', '11:15', '01:06', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630739, 1019, 'G35', '北京南', '杭州东', '沧州西', '徐州东', '16:03', '18:03', '02:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (630743, 1020, 'G37', '北京南', '杭州东', '沧州西', '徐州东', '17:08', '19:06', '01:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (631001, 1019, 'G35', '北京南', '杭州东', '沧州西', '长兴', '16:03', '20:20', '04:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (631258, 1019, 'G35', '北京南', '杭州东', '沧州西', '湖州', '16:03', '20:31', '04:28', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (631260, 1020, 'G37', '北京南', '杭州东', '沧州西', '湖州', '17:08', '21:44', '04:36', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (631282, 1022, 'G41', '北京南', '杭州东', '沧州西', '嘉兴南', '10:09', '15:18', '05:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (631715, 1019, 'G35', '北京南', '杭州东', '沧州西', '滕州东', '16:03', '17:34', '01:31', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (632670, 1019, 'G35', '北京南', '杭州东', '沧州西', '溧水', '16:03', '19:49', '03:46', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (632673, 1020, 'G37', '北京南', '杭州东', '沧州西', '溧阳', '17:08', '21:12', '04:04', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (632925, 1020, 'G37', '北京南', '杭州东', '沧州西', '宜兴', '17:08', '21:25', '04:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (656774, 1023, 'G43', '北京南', '杭州东', '德州东', '上海虹桥', '15:20', '19:43', '04:23', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (657337, 1023, 'G43', '北京南', '杭州东', '德州东', '济南西', '15:20', '15:44', '00:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (657358, 1020, 'G37', '北京南', '杭州东', '德州东', '济南西', '17:37', '18:01', '00:24', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (657470, 1023, 'G43', '北京南', '杭州东', '德州东', '杭州东', '15:20', '20:47', '05:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (657473, 1020, 'G37', '北京南', '杭州东', '德州东', '杭州东', '17:37', '22:07', '04:30', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (657814, 1023, 'G43', '北京南', '杭州东', '德州东', '南京南', '15:20', '18:26', '03:06', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (657824, 1020, 'G37', '北京南', '杭州东', '德州东', '南京南', '17:37', '20:40', '03:03', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (658175, 1020, 'G37', '北京南', '杭州东', '德州东', '蚌埠南', '17:37', '19:55', '02:18', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (658687, 1023, 'G43', '北京南', '杭州东', '德州东', '苏州北', '15:20', '19:18', '03:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (658720, 1020, 'G37', '北京南', '杭州东', '德州东', '宿州东', '17:37', '19:27', '01:50', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (659037, 1023, 'G43', '北京南', '杭州东', '德州东', '徐州东', '15:20', '16:56', '01:36', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (659047, 1020, 'G37', '北京南', '杭州东', '德州东', '徐州东', '17:37', '19:06', '01:29', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (659405, 1023, 'G43', '北京南', '杭州东', '德州东', '滁州', '15:20', '18:00', '02:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (659782, 1020, 'G37', '北京南', '杭州东', '德州东', '湖州', '17:37', '21:44', '04:07', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (659814, 1023, 'G43', '北京南', '杭州东', '德州东', '嘉兴南', '15:20', '20:15', '04:55', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (660026, 1023, 'G43', '北京南', '杭州东', '德州东', '曲阜东', '15:20', '16:18', '00:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (660365, 1023, 'G43', '北京南', '杭州东', '德州东', '桐乡', '15:20', '20:28', '05:08', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (661903, 1020, 'G37', '北京南', '杭州东', '德州东', '溧阳', '17:37', '21:12', '03:35', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (662484, 1020, 'G37', '北京南', '杭州东', '德州东', '宜兴', '17:37', '21:25', '03:48', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733209, 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳', '12:33', '14:17', '01:44', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733218, 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳', '16:02', '17:38', '01:36', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733240, 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '沈阳北', '20:51', '23:17', '02:26', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733242, 979, 'D7', '北京', '沈阳北', '葫芦岛北', '沈阳北', '21:09', '23:00', '01:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733244, 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳', '21:37', '23:35', '01:58', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733389, 993, 'D17', '北京', '沈阳南', '葫芦岛北', '沈阳南', '12:33', '14:33', '02:00', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733398, 991, 'D11', '北京', '沈阳南', '葫芦岛北', '沈阳南', '16:02', '17:54', '01:52', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733424, 978, 'D3', '北京', '沈阳南', '葫芦岛北', '沈阳南', '21:37', '23:51', '02:14', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733484, 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '鞍山西', '20:51', '22:32', '01:41', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733782, 991, 'D11', '北京', '沈阳南', '葫芦岛北', '锦州南', '16:02', '16:19', '00:17', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733805, 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '锦州南', '20:51', '21:11', '00:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733808, 978, 'D3', '北京', '沈阳南', '葫芦岛北', '锦州南', '21:37', '21:57', '00:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733856, 993, 'D17', '北京', '沈阳南', '葫芦岛北', '辽中', '12:33', '13:42', '01:09', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (733896, 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '盘锦', '20:51', '21:52', '01:01', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (734601, 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '海城西', '20:51', '22:18', '01:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (734770, 1005, 'D51', '北京', '沈阳北', '葫芦岛北', '辽阳', '20:51', '22:46', '01:55', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (734793, 993, 'D17', '北京', '沈阳南', '葫芦岛北', '盘锦北', '12:33', '13:11', '00:38', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (734800, 979, 'D7', '北京', '沈阳北', '葫芦岛北', '盘锦北', '21:09', '21:55', '00:46', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (734801, 978, 'D3', '北京', '沈阳南', '葫芦岛北', '盘锦北', '21:37', '22:27', '00:50', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (804555, 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳', '19:00', '23:35', '04:35', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (804561, 978, 'D3', '北京', '沈阳南', '蓟州', '沈阳南', '19:00', '23:51', '04:51', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (804570, 978, 'D3', '北京', '沈阳南', '蓟州', '葫芦岛北', '19:00', '21:36', '02:36', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (804575, 978, 'D3', '北京', '沈阳南', '蓟州', '锦州南', '19:00', '21:57', '02:57', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (804604, 978, 'D3', '北京', '沈阳南', '蓟州', '北戴河', '19:00', '20:22', '01:22', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (804636, 978, 'D3', '北京', '沈阳南', '蓟州', '盘锦北', '19:00', '22:27', '03:27', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806530, 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳', '16:20', '17:38', '01:18', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806533, 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳', '16:53', '18:21', '01:28', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806557, 1005, 'D51', '北京', '沈阳北', '锦州南', '沈阳北', '21:12', '23:17', '02:05', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806562, 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳', '21:58', '23:35', '01:37', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806565, 992, 'D13', '北京', '沈阳北', '锦州南', '沈阳北', '22:29', '23:58', '01:29', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806723, 991, 'D11', '北京', '沈阳南', '锦州南', '沈阳南', '16:20', '17:54', '01:34', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806726, 980, 'D9', '北京', '沈阳南', '锦州南', '沈阳南', '16:53', '18:38', '01:45', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806755, 978, 'D3', '北京', '沈阳南', '锦州南', '沈阳南', '21:58', '23:51', '01:53', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (806814, 1005, 'D51', '北京', '沈阳北', '锦州南', '鞍山西', '21:12', '22:32', '01:20', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (807201, 1005, 'D51', '北京', '沈阳北', '锦州南', '盘锦', '21:12', '21:52', '00:40', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (807946, 1005, 'D51', '北京', '沈阳北', '锦州南', '海城西', '21:12', '22:18', '01:06', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (808076, 1005, 'D51', '北京', '沈阳北', '锦州南', '辽阳', '21:12', '22:46', '01:34', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
INSERT INTO `train_timetable` VALUES (808312, 980, 'D9', '北京', '沈阳南', '锦州南', '台安', '16:53', '17:39', '00:46', NULL, '2021-10-28 15:47:23', '2021-10-28 15:47:23');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
