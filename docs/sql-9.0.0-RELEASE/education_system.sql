/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : education_system

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 03/01/2021 15:15:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `msg_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '短信类型(1系统消息,2其他)',
  `msg_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '短信标题',
  `msg_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '短信内容',
  `is_time_send` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否定时发送（1是，0否）',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  `is_send` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否已发送(1是;0否)',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶(1是;0否)',
  `back_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站内信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (1103192777748422657, '2019-03-06 15:18:39', '2019-03-06 15:18:39', 1, 1, 1, '测试1', '<p>测试1<br /></p>', 0, NULL, 0, 0, NULL);
INSERT INTO `msg` VALUES (1103633181496246274, '2019-03-07 20:27:07', '2019-03-07 20:27:07', 1, 1, 1, '系统更新', '<p></p>\n<p>系统维护中!!!!!</p>\n<p></p>\n<p><br /></p>', 0, NULL, 0, 0, NULL);

-- ----------------------------
-- Table structure for msg_template
-- ----------------------------
DROP TABLE IF EXISTS `msg_template`;
CREATE TABLE `msg_template`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息模板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg_template
-- ----------------------------
INSERT INTO `msg_template` VALUES (1103634877106552834, '2019-03-07 20:33:52', '2019-03-07 20:33:52', 1, 1, '', '尊敬的{{name}}用户，您有一个{{courseName}}课程抵用券即将过期');

-- ----------------------------
-- Table structure for msg_user
-- ----------------------------
DROP TABLE IF EXISTS `msg_user`;
CREATE TABLE `msg_user`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `msg_id` bigint(20) NOT NULL COMMENT '短信ID',
  `user_no` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户编号',
  `mobile` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `msg_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '短信类型(1系统消息,2其他)',
  `msg_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '短信标题',
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否阅读(1是;0否)',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶(1是;0否)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站内信用户记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg_user
-- ----------------------------

-- ----------------------------
-- Table structure for nav_bar
-- ----------------------------
DROP TABLE IF EXISTS `nav_bar`;
CREATE TABLE `nav_bar`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `nav_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导航标题',
  `nav_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导航url',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '头部导航' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nav_bar
-- ----------------------------
INSERT INTO `nav_bar` VALUES (1064696486139854849, '2018-11-20 09:47:57', '2018-11-20 09:47:57', 1, 5, '首页', '/index', '_self');
INSERT INTO `nav_bar` VALUES (1064696486139854850, '2018-11-07 17:09:32', '2018-11-07 17:09:32', 1, 4, '课程中心', '/list', '_self');
INSERT INTO `nav_bar` VALUES (1064696486139854851, '2019-01-16 15:49:36', '2019-01-16 15:49:36', 1, 3, '讲师招募', '/recruit', '_self');
INSERT INTO `nav_bar` VALUES (1085443582223257602, '2019-01-16 15:49:36', '2019-01-16 15:49:36', 1, 2, '教育系统官网', 'https://edu.roncoo.net', '_blank');
INSERT INTO `nav_bar` VALUES (1085443582223257603, '2019-01-16 15:49:36', '2019-01-16 15:49:36', 1, 1, '领课官网', 'https://www.roncoo.net', '_blank');

-- ----------------------------
-- Table structure for sys
-- ----------------------------
DROP TABLE IF EXISTS `sys`;
CREATE TABLE `sys`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `video_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '视频存储平台（1保利威视，2七牛）',
  `polyv_useid` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'useid',
  `polyv_writetoken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'writetoken',
  `polyv_readtoken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'readtoken',
  `polyv_secretkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'secretkey',
  `file_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '文件存储类型（1阿里云，2七牛）',
  `aliyun_access_key_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'access_key_id',
  `aliyun_access_key_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'access_key_secret',
  `aliyun_oss_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'oss_url',
  `aliyun_oss_bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'oss_bucket',
  `aliyun_oss_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Endpoint（地域节点）',
  `aliyun_oas_vault` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'oas_vault',
  `pay_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '支付通道（1龙果支付，2其他）',
  `pay_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付请求',
  `pay_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'roncoo_key',
  `pay_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'roncoo_secret',
  `notify_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回调地址',
  `sms_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sms_code',
  `sign_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys
-- ----------------------------
INSERT INTO `sys` VALUES (1, '1899-12-30 01:00:00', '1899-12-30 01:00:00', 1, 1, 1, '', '', '', '', 1, '', '', '', '', NULL, '', 1, '', '', '', '', '', '');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `user_no` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'IP地址',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户操作',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方法',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求路径',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台操作日志表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '父ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由路径',
  `api_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '接口URL',
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `menu_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '菜单类型(1：目录   2：菜单   3：按钮)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1261195709403193347 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1153478139284656129, '2019-07-23 09:33:11', '2019-07-23 09:33:11', 1, 10, 0, '常用功能', 'order', '', NULL, '订单管理', 1);
INSERT INTO `sys_menu` VALUES (1153478416205189122, '2019-07-23 09:34:17', '2019-07-23 09:34:17', 1, 9, 0, '首页管理', 'homepage', '', NULL, '首页管理', 1);
INSERT INTO `sys_menu` VALUES (1153478559176429569, '2019-07-23 09:34:51', '2019-07-23 09:34:51', 1, 8, 0, '课程管理', 'course', '', NULL, '课程管理', 1);
INSERT INTO `sys_menu` VALUES (1153478694937661442, '2019-07-23 09:35:23', '2019-07-23 09:35:23', 1, 7, 0, '讲师管理', 'lecturer', '', NULL, '讲师管理', 1);
INSERT INTO `sys_menu` VALUES (1153478801917579265, '2019-07-23 09:35:49', '2019-07-23 09:35:49', 1, 6, 0, '学员管理', 'user', '', NULL, '学员管理', 1);
INSERT INTO `sys_menu` VALUES (1153493010483089409, '2019-07-23 10:32:17', '2019-07-23 10:32:17', 1, 2, 1153478139284656129, '课程订单', '/order/orderInfo', '/course/pc/order/info/list', NULL, '订单列表', 2);
INSERT INTO `sys_menu` VALUES (1153493835884367873, '2019-07-23 10:35:33', '2019-07-23 10:35:33', 1, 8, 1153478416205189122, '轮播管理', '/homepage/adv/pc', '/course/pc/adv/list', NULL, 'PC端设置', 2);
INSERT INTO `sys_menu` VALUES (1153494438295474177, '2019-07-23 10:37:57', '2019-07-23 10:37:57', 1, 9, 1153478416205189122, '专区管理', '/homepage/zone/pc', '/course/pc/zone/list', NULL, 'PC端设置', 2);
INSERT INTO `sys_menu` VALUES (1153494935626682369, '2019-07-23 10:39:56', '2019-07-23 10:39:56', 1, 10, 1153478416205189122, '头部导航', '/homepage/website/navBar', '/system/pc/nav/bar/list', NULL, '头部导航列表接口', 2);
INSERT INTO `sys_menu` VALUES (1153495031810461697, '2019-07-23 10:40:18', '2019-07-23 10:40:18', 1, 7, 1153478416205189122, '底部文章', '/homepage/website/websiteNav', '/system/pc/website/nav/list', NULL, '底部导航', 2);
INSERT INTO `sys_menu` VALUES (1153495155055890433, '2019-07-23 10:40:48', '2019-07-23 10:40:48', 1, 6, 1153478416205189122, '友情链接', '/homepage/website/websiteLink', '/system/pc/website/link/list', NULL, '友情链接', 2);
INSERT INTO `sys_menu` VALUES (1153495948102307842, '2019-07-23 10:43:57', '2019-07-23 10:43:57', 1, 3, 1153478559176429569, '课程列表', '/course/course/course', '/course/pc/course/list', NULL, '课程列表', 2);
INSERT INTO `sys_menu` VALUES (1153496094022144002, '2019-07-23 10:44:32', '2019-07-23 10:44:32', 1, 2, 1153478559176429569, '课程审核', '/course/course/audit', '/course/pc/course/audit/list', NULL, '课程审核列表', 2);
INSERT INTO `sys_menu` VALUES (1153496241066053634, '2019-07-23 10:45:07', '2019-07-23 10:45:07', 1, 1, 1153478559176429569, '分类管理', '/course/category/category', '/course/pc/course/category/list', NULL, '分类列表', 2);
INSERT INTO `sys_menu` VALUES (1153496795896975361, '2019-07-23 10:47:19', '2019-07-23 10:47:19', 1, 3, 1153478694937661442, '讲师列表', '/lecturer/lecturer/lecturer', '/user/pc/lecturer/list', NULL, '讲师列表', 2);
INSERT INTO `sys_menu` VALUES (1153497106191585282, '2019-07-23 10:48:33', '2019-07-23 10:48:33', 1, 2, 1153478694937661442, '讲师审核', '/lecturer/lecturer/audit', '/user/pc/lecturer/audit/list', NULL, '讲师审核列表', 2);
INSERT INTO `sys_menu` VALUES (1153497221941792770, '2019-07-23 10:49:01', '2019-07-23 10:49:01', 1, 1, 1153478694937661442, '分润列表', '/lecturer/profit/profit', '/user/pc/lecturer/profit/list', NULL, '分润列表', 2);
INSERT INTO `sys_menu` VALUES (1153498121905213442, '2019-07-23 10:52:35', '2019-07-23 10:52:35', 1, 1, 0, '权限管理', '/pms', '', NULL, '权限管理', 1);
INSERT INTO `sys_menu` VALUES (1153498480237187073, '2019-07-23 10:54:01', '2019-07-23 10:54:01', 1, 5, 0, '站点管理', '/website', '', NULL, '站点管理', 1);
INSERT INTO `sys_menu` VALUES (1153498652677607425, '2019-07-23 10:54:42', '2019-07-23 10:54:42', 1, 2, 0, '平台管理', '/platform', '', NULL, '平台管理', 1);
INSERT INTO `sys_menu` VALUES (1153498940276838401, '2019-07-23 10:55:50', '2019-07-23 10:55:50', 1, 3, 1153498121905213442, '用户管理', '/sys/pms/user', '/system/pc/sys/user/list', NULL, '用户管理', 2);
INSERT INTO `sys_menu` VALUES (1153499292782923778, '2019-07-23 10:57:14', '2019-07-23 10:57:14', 1, 2, 1153498121905213442, '角色管理', '/sys/pms/role', '/system/pc/sys/role/list', NULL, '角色管理', 2);
INSERT INTO `sys_menu` VALUES (1153499423880089601, '2019-07-23 10:57:46', '2019-07-23 10:57:46', 1, 1, 1153498121905213442, '菜单管理', '/sys/pms/menu', '/system/pc/menu/list', NULL, '菜单管理', 2);
INSERT INTO `sys_menu` VALUES (1153500580878848001, '2019-07-23 11:02:21', '2019-07-23 11:02:21', 1, 5, 1153498480237187073, '站点设置', '/sys/website/website', '/system/pc/website/view', NULL, '站点设置', 2);
INSERT INTO `sys_menu` VALUES (1153500772986359810, '2019-07-23 11:03:07', '2019-07-23 11:03:07', 1, 2, 1153498480237187073, '系统设置', '/sys/website/sys', '/system/pc/sys/view', NULL, '系统设置', 2);
INSERT INTO `sys_menu` VALUES (1153501173945044993, '2019-07-23 11:04:43', '2019-07-23 11:04:43', 1, 1, 1153498652677607425, '应用管理', '/sys/platform/platform', '/user/pc/platform/list', NULL, '应用管理', 2);
INSERT INTO `sys_menu` VALUES (1154683387156230146, '2019-07-26 17:22:25', '2019-07-26 17:22:25', 1, 1, 1153493010483089409, '订单查看', '', '/course/pc/order/info/view', NULL, '订单查看', 3);
INSERT INTO `sys_menu` VALUES (1154683761573359618, '2019-07-26 17:23:54', '2019-07-26 17:23:54', 1, 1, 1153493010483089409, '统计订单收入情况', '', '/course/pc/order/info/statistical', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1156030262547324930, '2019-07-30 10:34:26', '2019-07-30 10:34:26', 1, 1, 1153493835884367873, '添加', '', '/course/pc/adv/add', NULL, '跳添加页面弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156030361037971458, '2019-07-30 10:34:49', '2019-07-30 10:34:49', 1, 1, 1153493835884367873, '保存', '', '/course/pc/adv/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156030992003899394, '2019-07-30 10:37:20', '2019-07-30 10:37:20', 1, 1, 1153493835884367873, '更新', '', '/course/pc/adv/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156032108988997634, '2019-07-30 10:41:46', '2019-07-30 10:41:46', 1, 1, 1153494438295474177, '添加', '', '/course/pc/zone/add', NULL, '添加页面', 3);
INSERT INTO `sys_menu` VALUES (1156032296088510465, '2019-07-30 10:42:31', '2019-07-30 10:42:31', 1, 1, 1153494438295474177, '保存', '', '/course/pc/zone/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156032474489036801, '2019-07-30 10:43:13', '2019-07-30 10:43:13', 1, 1, 1153494438295474177, '删除', '', '/course/pc/zone/delete', NULL, '删除', 3);
INSERT INTO `sys_menu` VALUES (1156033449756991490, '2019-07-30 10:47:06', '2019-07-30 10:47:06', 1, 1, 1153494438295474177, '修改', '', '/course/pc/zone/view', NULL, '修改页面', 3);
INSERT INTO `sys_menu` VALUES (1156033853009960961, '2019-07-30 10:48:42', '2019-07-30 10:48:42', 1, 1, 1153494438295474177, '更新', '', '/course/pc/zone/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156035023040421889, '2019-07-30 10:53:21', '2019-07-30 10:53:21', 1, 1, 1153494438295474177, '专区课程', NULL, '/course/pc/zone/course/list', NULL, '专区课程新窗口打开', 3);
INSERT INTO `sys_menu` VALUES (1156035443800416257, '2019-07-30 10:55:01', '2019-07-30 10:55:01', 1, 1, 1156035023040421889, '添加', '', '/course/pc/course/list', NULL, '添加课程列出接口', 3);
INSERT INTO `sys_menu` VALUES (1156035689204948994, '2019-07-30 10:56:00', '2019-07-30 10:56:00', 1, 1, 1156035023040421889, '保存', '', '/course/pc/zone/course/save', NULL, '保存添加', 3);
INSERT INTO `sys_menu` VALUES (1156036045850812417, '2019-07-30 10:57:25', '2019-07-30 10:57:25', 1, 1, 1156035023040421889, '删除', '', '/course/pc/zone/course/delete', NULL, '专区课程删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156036539059019777, '2019-07-30 10:59:22', '2019-07-30 10:59:22', 1, 1, 1156035023040421889, '修改', '', '/course/pc/zone/course/edit', NULL, '修改弹窗页面', 3);
INSERT INTO `sys_menu` VALUES (1156036653299277825, '2019-07-30 10:59:49', '2019-07-30 10:59:49', 1, 1, 1156035023040421889, '更新', '', '/course/pc/zone/course/update', NULL, '专区课程接口', 3);
INSERT INTO `sys_menu` VALUES (1156036831607529473, '2019-07-30 11:00:32', '2019-07-30 11:00:32', 1, 1, 1153493835884367873, '修改', '', '/course/pc/adv/edit', NULL, '修改页面弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156037020263129089, '2019-07-30 11:01:17', '2019-07-30 11:01:17', 1, 1, 1153493835884367873, '删除', '', '/course/pc/adv/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156039623340466178, '2019-07-30 11:11:38', '2019-07-30 11:11:38', 1, 1, 1153494935626682369, '添加', '', '/system/pc/nav/bar/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156039959035781122, '2019-07-30 11:12:58', '2019-07-30 11:12:58', 1, 1, 1153494935626682369, '保存', '', '/system/pc/nav/bar/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156040289144283137, '2019-07-30 11:14:16', '2019-07-30 11:14:16', 1, 1, 1153494935626682369, '删除', '', '/system/pc/nav/bar/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156040630476742658, '2019-07-30 11:15:38', '2019-07-30 11:15:38', 1, 1, 1153494935626682369, '修改', '', '/system/pc/nav/bar/edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156040868612546562, '2019-07-30 11:16:34', '2019-07-30 11:16:34', 1, 1, 1153494935626682369, '更新', '', '/system/pc/nav/bar/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156041685298061313, '2019-07-30 11:19:49', '2019-07-30 11:19:49', 1, 7, 1153495031810461697, '添加', '', '/system/pc/website/nav/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156042299306418177, '2019-07-30 11:22:16', '2019-07-30 11:22:16', 1, 6, 1153495031810461697, '保存', '', '/system/pc/website/nav/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156042595428474882, '2019-07-30 11:23:26', '2019-07-30 11:23:26', 1, 5, 1153495031810461697, '删除', '', '/system/pc/website/nav/delete', NULL, '删除', 3);
INSERT INTO `sys_menu` VALUES (1156043168856940545, '2019-07-30 11:25:43', '2019-07-30 11:25:43', 1, 4, 1153495031810461697, '修改', '', '/system/pc/website/nav/edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156043234770427905, '2019-07-30 11:25:59', '2019-07-30 11:25:59', 1, 3, 1153495031810461697, '更新', '', '/system/pc/website/nav/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156045293838147585, '2019-07-30 11:34:10', '2019-07-30 11:34:10', 1, 2, 1153495031810461697, '文章管理', NULL, '/system/pc/website/nav/article/view', NULL, '文章管理新窗口', 3);
INSERT INTO `sys_menu` VALUES (1156099141575385090, '2019-07-30 15:08:08', '2019-07-30 15:08:08', 1, 1, 1153495155055890433, '添加', '', '/system/pc/website/link/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156099301554528257, '2019-07-30 15:08:46', '2019-07-30 15:08:46', 1, 1, 1153495155055890433, '保存', '', '/system/pc/website/link/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156099420307857410, '2019-07-30 15:09:14', '2019-07-30 15:09:14', 1, 1, 1153495155055890433, '删除', '', '/system/pc/website/link/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156099620929806338, '2019-07-30 15:10:02', '2019-07-30 15:10:02', 1, 1, 1153495155055890433, '修改', '', '/system/pc/website/link/edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156099736667430914, '2019-07-30 15:10:30', '2019-07-30 15:10:30', 1, 1, 1153495155055890433, '更新', '', '/system/pc/website/link/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156102063474352129, '2019-07-30 15:19:44', '2019-07-30 15:19:44', 1, 1, 1153495948102307842, '修改', '', '/course/pc/course/get', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156102212472807425, '2019-07-30 15:20:20', '2019-07-30 15:20:20', 1, 1, 1153495948102307842, '更新', '', '/course/pc/course/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156106290552643585, '2019-07-30 15:36:32', '2019-07-30 15:36:32', 1, 1, 1153496094022144002, '修改、审核', '', '/course/pc/course/audit/view', NULL, '修改、弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156106778274701314, '2019-07-30 15:38:29', '2019-07-30 15:38:29', 1, 1, 1153496094022144002, '审核课程', '', '/course/pc/course/audit/audit', NULL, '审核课程', 3);
INSERT INTO `sys_menu` VALUES (1156106947468730369, '2019-07-30 15:39:09', '2019-07-30 15:39:09', 1, 1, 1153496094022144002, '更新', '', '/course/pc/course/audit/update', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1156389609588662274, '2019-07-31 10:22:21', '2019-07-31 10:22:21', 1, 1, 1153496241066053634, '添加', '', '/course/pc/course/category/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156389834885701634, '2019-07-31 10:23:15', '2019-07-31 10:23:15', 1, 1, 1153496241066053634, '保存', '', '/course/pc/course/category/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156390300390531073, '2019-07-31 10:25:06', '2019-07-31 10:25:06', 1, 1, 1153496241066053634, '修改', '', '/course/pc/course/category/view', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156390387736911873, '2019-07-31 10:25:26', '2019-07-31 10:25:26', 1, 1, 1153496241066053634, '更新', '', '/course/pc/course/category/update', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1156390708198514689, '2019-07-31 10:26:43', '2019-07-31 10:26:43', 1, 1, 1153496241066053634, '删除', '', '/course/pc/course/category/delete', NULL, '删除', 3);
INSERT INTO `sys_menu` VALUES (1156393404230017026, '2019-07-31 10:37:26', '2019-07-31 10:37:26', 1, 1, 1153496795896975361, '修改', '', '/user/pc/lecturer/view', NULL, '修改、查看、设置分成弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156393596735987714, '2019-07-31 10:38:11', '2019-07-31 10:38:11', 1, 1, 1153496795896975361, '更新', '', '/user/pc/lecturer/update', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1156394505545195522, '2019-07-31 10:41:48', '2019-07-31 10:41:48', 1, 1, 1153497106191585282, '添加', '', '/user/pc/lecturer/audit/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156395045071101953, '2019-07-31 10:43:57', '2019-07-31 10:43:57', 1, 1, 1153497106191585282, '保存', '', '/user/pc/lecturer/audit/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156395484629966849, '2019-07-31 10:45:42', '2019-07-31 10:45:42', 1, 1, 1153497106191585282, '修改', '', '/user/pc/lecturer/audit/view', NULL, '修改、查看弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156395794031190017, '2019-07-31 10:46:55', '2019-07-31 10:46:55', 1, 1, 1153497106191585282, '校验讲师是否存在', '', '/user/pc/lecturer/audit/check', NULL, '校验讲师是否存在', 3);
INSERT INTO `sys_menu` VALUES (1156395965360119810, '2019-07-31 10:47:36', '2019-07-31 10:47:36', 1, 1, 1153497106191585282, '更新', '', '/user/pc/lecturer/audit/update', NULL, '更新弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156396502923091970, '2019-07-31 10:49:44', '2019-07-31 10:49:44', 1, 1, 1153497106191585282, '审核页面', '', '/user/pc/lecturer/audit/isAudit', NULL, '审核弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156396635052056577, '2019-07-31 10:50:16', '2019-07-31 10:50:16', 1, 1, 1153497106191585282, '审核更新', '', '/user/pc/lecturer/audit/audit', NULL, '审核更新', 3);
INSERT INTO `sys_menu` VALUES (1156452734279098369, '2019-07-31 14:33:11', '2019-07-31 14:33:11', 1, 1, 1153497221941792770, '批量标记为已打款', '', '/user/pc/lecturer/profit/batch', NULL, '批量标记为已打款', 3);
INSERT INTO `sys_menu` VALUES (1156453190803922945, '2019-07-31 14:35:00', '2019-07-31 14:35:00', 1, 1, 1153497221941792770, '打款跳页面', '', '/user/pc/lecturer/profit/edit', NULL, '打款跳页面', 3);
INSERT INTO `sys_menu` VALUES (1156453747622944769, '2019-07-31 14:37:13', '2019-07-31 14:37:13', 1, 1, 1153497221941792770, '更新讲师打款状态', '', '/user/pc/lecturer/profit/update', NULL, '更新讲师打款状态', 3);
INSERT INTO `sys_menu` VALUES (1156467834150985729, '2019-07-31 15:33:11', '2019-07-31 15:33:11', 1, 1, 1153498940276838401, '添加', '', '/system/pc/sys/user/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156467976803459073, '2019-07-31 15:33:45', '2019-07-31 15:33:45', 1, 1, 1153498940276838401, '保存', '', '/system/pc/sys/user/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156468115706224642, '2019-07-31 15:34:18', '2019-07-31 15:34:18', 1, 1, 1153498940276838401, '删除', '', '/system/pc/sys/user/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156471160762540033, '2019-07-31 15:46:24', '2019-07-31 15:46:24', 1, 1, 1153498940276838401, '修改', '', '/system/pc/sys/user/view', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156471428245889026, '2019-07-31 15:47:28', '2019-07-31 15:47:28', 1, 1, 1153498940276838401, '更新', '', '/system/pc/sys/user/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156471546990829570, '2019-07-31 15:47:56', '2019-07-31 15:47:56', 1, 1, 1153498940276838401, '更新密码弹窗', '', '/system/pc/sys/user/password', NULL, '更新密码弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156471749651210241, '2019-07-31 15:48:45', '2019-07-31 15:48:45', 1, 1, 1153498940276838401, '更新密码', '', '/system/pc/sys/user/update/password', NULL, '更新密码接口', 3);
INSERT INTO `sys_menu` VALUES (1156472210034794497, '2019-07-31 15:50:34', '2019-07-31 15:50:34', 1, 1, 1153498940276838401, '设置角色', '', '/system/pc/sys/role/list', NULL, '设置角色弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156472470257803266, '2019-07-31 15:51:36', '2019-07-31 15:51:36', 1, 1, 1153498940276838401, '保存用户角色', '', '/system/pc/sys/role/user/save', NULL, '保存用户角色接口', 3);
INSERT INTO `sys_menu` VALUES (1156472761619324929, '2019-07-31 15:52:46', '2019-07-31 15:52:46', 1, 1, 1153498940276838401, '用户关联的角色', '', '/system/pc/sys/role/user/list', NULL, '获取用户关联的角色', 3);
INSERT INTO `sys_menu` VALUES (1156473195461353473, '2019-07-31 15:54:29', '2019-07-31 15:54:29', 1, 1, 1153498940276838401, '列出用户', '', '/user/pc/user/list', NULL, '列出用户', 3);
INSERT INTO `sys_menu` VALUES (1156473846425722881, '2019-07-31 15:57:04', '2019-07-31 15:57:04', 1, 1, 1153499292782923778, '添加', '', '/system/pc/sys/role/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156473962389839874, '2019-07-31 15:57:32', '2019-07-31 15:57:32', 1, 1, 1153499292782923778, '保存', '', '/system/pc/sys/role/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156474159387910146, '2019-07-31 15:58:19', '2019-07-31 15:58:19', 1, 1, 1153499292782923778, '删除', '', '/system/pc/sys/role/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156475549820657665, '2019-07-31 16:03:51', '2019-07-31 16:03:51', 1, 1, 1153499292782923778, '修改', '', '/system/pc/sys/role/view', NULL, '修改修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156475705584525314, '2019-07-31 16:04:28', '2019-07-31 16:04:28', 1, 1, 1153499292782923778, '更新', '', '/system/pc/sys/role/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156475975043391490, '2019-07-31 16:05:32', '2019-07-31 16:05:32', 1, 1, 1153499292782923778, '设置权限', '', '/system/pc/menu/list', NULL, '设置权限弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156476159274000386, '2019-07-31 16:06:16', '2019-07-31 16:06:16', 1, 1, 1153499292782923778, '菜单角色关联', '', '/system/pc/menu/role/list', NULL, '菜单角色关联', 3);
INSERT INTO `sys_menu` VALUES (1156476414988132353, '2019-07-31 16:07:17', '2019-07-31 16:07:17', 1, 1, 1153499292782923778, '保存角色菜单关联', '', '/system/pc/menu/role/save', NULL, '角色菜单关联接口', 3);
INSERT INTO `sys_menu` VALUES (1156477233678524418, '2019-07-31 16:10:32', '2019-07-31 16:10:32', 1, 1, 1153499423880089601, '添加', '', '/system/pc/menu/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156477357225943042, '2019-07-31 16:11:01', '2019-07-31 16:11:01', 1, 1, 1153499423880089601, '保存', '', '/system/pc/menu/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156477431565787138, '2019-07-31 16:11:19', '2019-07-31 16:11:19', 1, 1, 1153499423880089601, '删除', '', '/system/pc/menu/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156478453679923201, '2019-07-31 16:15:23', '2019-07-31 16:15:23', 1, 1, 1153499423880089601, '修改', '', '/system/pc/menu/view', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156478738817097730, '2019-07-31 16:16:31', '2019-07-31 16:16:31', 1, 1, 1153499423880089601, '更新', '', '/system/pc/menu/update', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1156763603487694849, '2019-08-01 11:08:28', '2019-08-01 11:08:28', 1, 1, 1153501173945044993, '添加', '', '/user/pc/platform/add', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156763684647477250, '2019-08-01 11:08:47', '2019-08-01 11:08:47', 1, 1, 1153501173945044993, '保存', '', '/user/pc/platform/save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156763793531609089, '2019-08-01 11:09:13', '2019-08-01 11:09:13', 1, 1, 1153501173945044993, '修改', '', '/user/pc/platform/view', NULL, '修改、查看弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156763879334486018, '2019-08-01 11:09:34', '2019-08-01 11:09:34', 1, 1, 1153501173945044993, '更新', '', '/user/pc/platform/update', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1156766341252521985, '2019-08-01 11:19:21', '2019-08-01 11:19:21', 1, 1, 1153493010483089409, '讲师查看', '', '/user/pc/lecturer/view', NULL, '讲师查看', 3);
INSERT INTO `sys_menu` VALUES (1156767833694937090, '2019-08-01 11:25:16', '2019-08-01 11:25:16', 1, 1, 1153493010483089409, '更新备注', '', '/course/pc/order/info/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156770628078673921, '2019-08-01 11:36:23', '2019-08-01 11:36:23', 1, 1, 1153498480237187073, '系统更新', '', '/system/pc/sys/update', NULL, '系统更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156770804654678017, '2019-08-01 11:37:05', '2019-08-01 11:37:05', 1, 4, 1153498480237187073, '站点富文本上传图片', '', '/course/pc/upload/pic', NULL, '站点富文本上传图片接口', 3);
INSERT INTO `sys_menu` VALUES (1156770958275256321, '2019-08-01 11:37:41', '2019-08-01 11:37:41', 1, 3, 1153498480237187073, '站点更新', '', '/system/pc/website/update', NULL, '站点更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156771497591447553, '2019-08-01 11:39:50', '2019-08-01 11:39:50', 1, 1, 1153495031810461697, '导航文章更新', '', '/system/pc/website/nav/article/update', NULL, '导航文章更新', 3);
INSERT INTO `sys_menu` VALUES (1156846769674223617, '2019-08-01 16:38:56', '2019-08-01 16:38:56', 1, 100, 0, '首页', 'dashboard', '', NULL, '首页', 1);
INSERT INTO `sys_menu` VALUES (1158305741493071874, '2019-08-05 17:16:22', '2019-08-05 17:16:22', 1, 1, 1153493010483089409, '用户查看', '', '/user/pc/user/ext/view', NULL, '用户查看', 3);
INSERT INTO `sys_menu` VALUES (1158310111785873409, '2019-08-05 17:33:44', '2019-08-05 17:33:44', 1, 1, 1153493010483089409, '修改备注', NULL, '/course/pc/order/info/edit', NULL, '修改备注', 3);
INSERT INTO `sys_menu` VALUES (1158323404529299458, '2019-08-05 18:26:33', '2019-08-05 18:26:33', 1, 1, 1153501173945044993, '删除', '', '/user/pc/platform/delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1160850528846749698, '2019-08-12 17:48:27', '2019-08-12 17:48:27', 1, 1, 1153478801917579265, '学员列表', '/user/ext', '/user/pc/user/ext/list', NULL, '学员列表', 2);
INSERT INTO `sys_menu` VALUES (1160851003339972610, '2019-08-12 17:50:20', '2019-08-12 17:50:20', 1, 1, 1160850528846749698, '修改', '', '/user/pc/user/ext/view', NULL, '修改、查看弹窗', 3);
INSERT INTO `sys_menu` VALUES (1160851295330639874, '2019-08-12 17:51:29', '2019-08-12 17:51:29', 1, 1, 1160850528846749698, '更新', '', '/user/pc/user/ext/update', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1160851552827351041, '2019-08-12 17:52:31', '2019-08-12 17:52:31', 1, 1, 1160850528846749698, '学习记录', '/user/ext/studyLog', '/course/pc/course/user/study/log/list', NULL, '用户学习记录', 3);
INSERT INTO `sys_menu` VALUES (1248901405712441346, '2020-04-11 17:11:13', '2020-04-11 17:11:13', 1, 1, 1153478139284656129, '支付订单', '/sys/log/orderPay', '/course/pc/order/pay/list', NULL, '支付订单', 2);
INSERT INTO `sys_menu` VALUES (1261195709403193346, '2020-05-15 15:24:23', '2020-05-15 15:24:23', 1, 1, 1153495031810461697, '添加站点导航文章', '', '/system/pc/website/nav/article/save', NULL, NULL, 3);

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `menu_id` bigint(20) UNSIGNED NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1261195834678665219 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES (1242375120400015362, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156846769674223617, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120400015363, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1158310111785873409, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120454541314, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1158305741493071874, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120462929922, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156766341252521985, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120471318530, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1154683761573359618, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120479707138, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1154683387156230146, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120488095745, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156036831607529473, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120496484353, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156030262547324930, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120504872962, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156036539059019777, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120513261569, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156035443800416257, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120517455874, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156033449756991490, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120525844482, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156032108988997634, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120534233090, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156040630476742658, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120538427393, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156039623340466178, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120546816002, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156041685298061313, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120551010305, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156043168856940545, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120559398913, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156045293838147585, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120563593218, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156099620929806338, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120571981826, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156099141575385090, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120576176130, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156102063474352129, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120576176131, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156106290552643585, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120576176132, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156390300390531073, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120576176133, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156389609588662274, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120601341954, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156393404230017026, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120605536257, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156396502923091970, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120613924865, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156395794031190017, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120618119169, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156395484629966849, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120626507777, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156394505545195522, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120630702082, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156453190803922945, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120639090689, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1160851003339972610, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120643284994, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156473195461353473, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120647479297, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156472761619324929, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120655867905, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156472210034794497, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120660062210, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156471546990829570, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120668450817, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156471160762540033, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120672645121, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156467834150985729, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120676839426, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156476159274000386, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120685228033, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156475975043391490, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120689422337, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156475549820657665, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120693616642, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156473846425722881, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120702005249, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156478453679923201, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120706199553, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156477233678524418, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120710393858, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153500580878848001, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120714588162, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153500772986359810, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120836222977, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156763793531609089, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120836222978, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156763603487694849, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120836222979, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153498794638020609, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120836222980, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153501424605040641, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120890748930, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153501541194108929, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120899137537, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153478139284656129, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120899137538, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153493010483089409, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120899137539, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153478416205189122, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120899137540, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153493592497295362, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120945274881, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153493835884367873, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120945274882, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153494219218587650, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120945274883, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153494438295474177, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120945274884, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1156035023040421889, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120945274885, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153494698514288641, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120974635010, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153494935626682369, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120978829314, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153495031810461697, 3);
INSERT INTO `sys_menu_role` VALUES (1242375120978829315, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153495155055890433, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121003995138, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153478559176429569, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121012383745, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153495582782623746, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121020772353, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153495948102307842, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121024966658, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153496094022144002, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121033355265, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153495768179249153, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121037549570, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153496241066053634, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121041743873, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153478694937661442, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121050132481, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153496406875279362, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121054326785, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153496795896975361, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121058521090, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153497106191585282, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121066909697, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153496706587660289, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121071104001, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153497221941792770, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121079492610, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153478801917579265, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121087881217, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1160850528846749698, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121100464129, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153478911053369345, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121108852738, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153498121905213442, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121121435650, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153498940276838401, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121129824258, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153499292782923778, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121138212865, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153499423880089601, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121146601473, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153498480237187073, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121154990082, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153498652677607425, 3);
INSERT INTO `sys_menu_role` VALUES (1242375121163378689, '2020-03-24 16:58:05', '2020-03-24 16:58:05', 1, 1, 1153501173945044993, 3);
INSERT INTO `sys_menu_role` VALUES (1261195833160327169, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156846769674223617, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833319710721, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153478139284656129, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833336487938, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153493010483089409, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833344876545, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1158310111785873409, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833357459458, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1158305741493071874, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833365848065, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156767833694937090, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833378430978, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156766341252521985, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833386819585, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1154683761573359618, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833403596801, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1154683387156230146, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833411985410, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1248901405712441346, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833424568322, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153478416205189122, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833432956929, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153493592497295362, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833449734146, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153493835884367873, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833462317057, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156037020263129089, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833470705665, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156036831607529473, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833483288578, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156030992003899394, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833487482882, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156030361037971458, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833495871489, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156030262547324930, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833504260098, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153494219218587650, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833512648706, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153494438295474177, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833516843009, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156035023040421889, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833525231617, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156036653299277825, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833533620226, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156036539059019777, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833542008834, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156036045850812417, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833546203138, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156035689204948994, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833554591746, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156035443800416257, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833562980353, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156033853009960961, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833571368962, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156033449756991490, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833579757569, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156032474489036801, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833588146178, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156032296088510465, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833592340481, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156032108988997634, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833600729090, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153494698514288641, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833617506305, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153494935626682369, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833625894913, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156040868612546562, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833630089218, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156040630476742658, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833638477826, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156040289144283137, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833642672129, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156039959035781122, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833651060737, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156039623340466178, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833655255041, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153495031810461697, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833655255042, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156041685298061313, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615170, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156042299306418177, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615171, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156042595428474882, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615172, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156043168856940545, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615173, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156043234770427905, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615174, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156045293838147585, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615175, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1261195709403193346, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833684615176, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156771497591447553, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833848193026, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153495155055890433, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833856581633, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156099736667430914, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833864970241, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156099620929806338, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833873358850, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156099420307857410, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833881747457, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156099301554528257, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833890136066, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156099141575385090, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833898524673, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153478559176429569, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833906913281, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153495582782623746, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833927884801, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153495948102307842, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833936273409, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156102212472807425, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833944662017, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156102063474352129, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833953050625, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153496094022144002, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833961439234, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156106947468730369, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833969827841, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156106778274701314, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833974022146, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156106290552643585, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833982410753, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153495768179249153, 1);
INSERT INTO `sys_menu_role` VALUES (1261195833990799362, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153496241066053634, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834003382273, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156390708198514689, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834007576578, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156390387736911873, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834015965185, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156390300390531073, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834024353793, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156389834885701634, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834028548097, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156389609588662274, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834036936706, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153478694937661442, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834045325313, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153496406875279362, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834049519617, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153496795896975361, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834057908225, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156393596735987714, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834066296834, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156393404230017026, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834070491138, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153497106191585282, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834078879745, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156396635052056577, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834087268354, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156396502923091970, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834091462658, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156395965360119810, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834099851266, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156395794031190017, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834108239873, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156395484629966849, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834112434178, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156395045071101953, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834120822786, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156394505545195522, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834129211394, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153496706587660289, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834133405697, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153497221941792770, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834141794305, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156453747622944769, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834150182913, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156453190803922945, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834154377218, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156452734279098369, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834162765826, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153478801917579265, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834166960130, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1160850528846749698, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834175348737, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1160851552827351041, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834234068993, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1160851295330639874, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834296983553, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1160851003339972610, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834309566466, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153478911053369345, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834322149377, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153498121905213442, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834330537986, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153498940276838401, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834343120897, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156473195461353473, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834355703809, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156472761619324929, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834380869634, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156472470257803266, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834389258242, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156472210034794497, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834397646849, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156471749651210241, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834406035458, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156471546990829570, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834414424066, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156471428245889026, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834422812673, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156471160762540033, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834435395586, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156468115706224642, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834452172801, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156467976803459073, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834460561409, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156467834150985729, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834468950018, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153499292782923778, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834477338625, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156476414988132353, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834485727233, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156476159274000386, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834494115841, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156475975043391490, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834502504450, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156475705584525314, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834510893057, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156475549820657665, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834515087361, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156474159387910146, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834523475969, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156473962389839874, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834527670274, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156473846425722881, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834527670275, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153499423880089601, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834552836098, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156478738817097730, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834561224706, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156478453679923201, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834565419010, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156477431565787138, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834573807618, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156477357225943042, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834582196226, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156477233678524418, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834590584833, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153498480237187073, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834598973442, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153500580878848001, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834607362050, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156770804654678017, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834615750658, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156770958275256321, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834619944962, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153500772986359810, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834628333569, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156770628078673921, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834636722177, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153498652677607425, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834636722178, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1153501173945044993, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834636722179, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1158323404529299458, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834661888001, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156763879334486018, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834666082305, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156763793531609089, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834670276609, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156763684647477250, 1);
INSERT INTO `sys_menu_role` VALUES (1261195834678665218, '2020-05-15 15:24:53', '2020-05-15 15:24:53', 1, 1, 1156763603487694849, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '2018-02-06 15:47:52', '2018-03-30 15:12:07', 1, 1, '超级管理员', '全部权限');
INSERT INTO `sys_role` VALUES (3, '2018-12-28 18:23:38', '2018-12-28 18:23:38', 1, 1, '演示角色', '仅有查看功能');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '角色ID',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1145889062897147907 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色用户关联表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1145639840180342785, '2019-07-01 18:28:22', '2019-07-01 18:28:22', 1, 1, 1, 1);
INSERT INTO `sys_role_user` VALUES (1145639840188731394, '2019-07-01 18:28:22', '2019-07-01 18:28:22', 1, 1, 3, 1);
INSERT INTO `sys_role_user` VALUES (1145889062897147906, '2019-07-02 10:58:42', '2019-07-02 10:58:42', 1, 1, 3, 2);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `user_no` bigint(20) NOT NULL COMMENT '用户编号',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_phone`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台用户信息' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '2018-03-31 11:22:37', '2018-05-10 15:28:40', 1, 1, 2018033111202589416, '18800000000', '超级管理员', '超级管理员');
INSERT INTO `sys_user` VALUES (2, '2018-12-28 16:57:47', '2018-12-28 16:57:47', 1, 1, 2018112209531803, '13800000000', '普通用户', '演示权限');

-- ----------------------------
-- Table structure for website
-- ----------------------------
DROP TABLE IF EXISTS `website`;
CREATE TABLE `website`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `logo_ico` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'org_logo_ico',
  `logo_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'org_logo_img',
  `website_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点标题',
  `website_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点关键词',
  `website_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点描述',
  `copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点版权',
  `icp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案号',
  `prn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公安备案号',
  `weixin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点微信',
  `weixin_xcx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序二维码',
  `weibo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点微博',
  `is_enable_statistics` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否开启统计',
  `statistics_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计代码',
  `is_show_service` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否显示客服信息',
  `service1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客服信息1',
  `service2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客服信息2',
  `user_agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户协议',
  `recruit_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '招募标题',
  `recruit_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招募信息',
  `entry_agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '入驻协议',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website
-- ----------------------------
INSERT INTO `website` VALUES (934374967448227841, '2018-11-09 17:36:44', '1899-12-30 01:00:00', 1, 1, 'http://static.roncoos.com/os/10.ico', 'http://static.roncoos.com/os/10.png', '领课教育系统', '领课教育系统,领课教育,教育系统,在线教育,在线教育系统,领课,教育,系统', '领课教育系统-打造全行业都适用的在线教育系统', '领课网络 版权所有 &copy; 2015-2020', '粤ICP备00000000号-1', '粤公网安备 00010602005000号', '', '', '', 1, '', 1, '297115770', '3155237748', '<p><br></p>', '', '<p><br></p>', '<p><br></p>');

-- ----------------------------
-- Table structure for website_link
-- ----------------------------
DROP TABLE IF EXISTS `website_link`;
CREATE TABLE `website_link`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `link_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `link_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接',
  `link_target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '跳转方式(_blank，_self)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_link
-- ----------------------------
INSERT INTO `website_link` VALUES (1141615695317078018, '2019-06-20 15:57:56', '2019-06-20 15:57:56', 1, 90, '龙果学院', 'https://www.roncoo.com', '_blank');
INSERT INTO `website_link` VALUES (1143825091871023106, '2019-06-26 18:17:18', '2019-06-26 18:17:18', 1, 100, '领课网络', 'https://www.roncoo.net/', '_blank');
INSERT INTO `website_link` VALUES (1248243315170205698, '2020-04-09 21:36:12', '2020-04-09 21:36:12', 1, 10, 'IT云', 'https:/www.doityun.com', '_blank');

-- ----------------------------
-- Table structure for website_nav
-- ----------------------------
DROP TABLE IF EXISTS `website_nav`;
CREATE TABLE `website_nav`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '父ID',
  `nav_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导航名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点导航' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_nav
-- ----------------------------
INSERT INTO `website_nav` VALUES (1060107291291365377, '2018-11-07 17:52:03', '2018-11-07 17:52:03', 0, 1, 1060100633685209089, '课程合作');
INSERT INTO `website_nav` VALUES (1060115285643177985, '2018-11-07 18:23:49', '2018-11-07 18:23:49', 0, 1, 1060100633685209089, '项目合作');
INSERT INTO `website_nav` VALUES (1060708775632576514, '2018-11-09 09:42:11', '2018-11-09 09:42:11', 1, 1, 1060708747425882114, '用户协议');
INSERT INTO `website_nav` VALUES (1080719070034886658, '2019-01-03 14:54:38', '2019-01-03 14:54:38', 1, 1, 1060708747425882114, '讲师协议');
INSERT INTO `website_nav` VALUES (1141261565654659073, '2019-06-19 16:30:45', '2019-06-19 16:30:45', 1, 1, 0, '常见问题');
INSERT INTO `website_nav` VALUES (1141641907804475393, '2019-06-20 17:42:06', '2019-06-20 17:42:06', 1, 1, 0, '商务合作');
INSERT INTO `website_nav` VALUES (1240124422568402946, '2020-03-18 11:54:37', '2020-03-18 11:54:37', 1, 1, 0, '关于我们');
INSERT INTO `website_nav` VALUES (1248904685884661762, '2020-04-11 17:24:15', '2020-04-11 17:24:15', 1, 1, 1240124422568402946, '公司简介');
INSERT INTO `website_nav` VALUES (1248904738636423170, '2020-04-11 17:24:27', '2020-04-11 17:24:27', 1, 1, 1240124422568402946, '联系我们');
INSERT INTO `website_nav` VALUES (1248905111967227906, '2020-04-11 17:25:56', '2020-04-11 17:25:56', 1, 1, 1141261565654659073, '如何购买');
INSERT INTO `website_nav` VALUES (1248905407795683329, '2020-04-11 17:27:07', '2020-04-11 17:27:07', 1, 1, 1141641907804475393, '商业版购买');

-- ----------------------------
-- Table structure for website_nav_article
-- ----------------------------
DROP TABLE IF EXISTS `website_nav_article`;
CREATE TABLE `website_nav_article`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  `nav_id` bigint(20) NOT NULL COMMENT '导航ID',
  `art_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `art_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章图片',
  `art_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点导航文章' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of website_nav_article
-- ----------------------------
INSERT INTO `website_nav_article` VALUES (1, '2020-04-27 14:11:41', '2020-04-27 14:11:41', 1, 1, 1248905407795683329, '商业版购买', '商业版购买', '教育系统业务：<br/><br/>联系人：谢经理<br/><br/>手机号：15820530994（微信同号）<br/><br/>邮箱：xiexl@roncoo.com');
INSERT INTO `website_nav_article` VALUES (2, '2020-04-27 14:10:42', '2020-04-27 14:10:42', 1, 1, 1248904738636423170, '联系我们', '联系我们', '教育系统业务：<br/><br/>联系人：谢经理<br/><br/>手机号：15820530994（微信同号）<br/><br/>邮箱：xiexl@roncoo.com');
INSERT INTO `website_nav_article` VALUES (3, '2020-04-27 14:08:15', '2020-04-27 14:08:15', 1, 1, 1248904685884661762, '广州市领课网络科技有限公司', '公司介绍', '&nbsp;&nbsp;&nbsp;&nbsp;广州市领课网络科技有限公司成立于2015年，是通过国家认定的高新技术企业，拥有自主研发的在线教育系统和互联网支付系统，是一家专注于在线教育领域和互联网支付领域软件系统产品和技术服务的专业提供商。 <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;基于自主研发的在线教育系统（领课教育系统）对外提供在线教育系统软件的销售及技术服务。公司旗下的IT在线教育平台（龙果学院）则是基于自研教育系统的自营教育平台，自2015年上线运营至今，为领课教育系统产品的持续完善积累了丰富的实战经验。 我们向行业开源了一套功能实用且高质量的教育系统（领课教育系统开源版）， 同时我们也为行业提供商业版的在线教育系统与技术服务，并为大量的行业企业成功搭建其自主在线教育平台。  <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;领课教育云是SaaS（软件云服务）模式的教育系统技术服务平台。向中小教育机构提供一个无需组建技术团队则可快速搭建自有域名自主品牌的在线教育平台的一站式解决方案。<br/> <br/>&nbsp;&nbsp;&nbsp;&nbsp;公司支付系统产品团队拥有超10年的支付行业系统技术产品经验，拥有自主研发的互联网支付收款系统（龙果支付系统），为企业提供互联网支付收款系统软件及对应的技术服务。');
INSERT INTO `website_nav_article` VALUES (4, '2020-04-27 14:11:59', '2020-04-27 14:11:59', 1, 1, 1248905111967227906, '如何购买', '如何购买', '教育系统业务：<br/><br/>联系人：谢经理<br/><br/>手机号：15820530994（微信同号）<br/><br/>邮箱：xiexl@roncoo.com');

SET FOREIGN_KEY_CHECKS = 1;
