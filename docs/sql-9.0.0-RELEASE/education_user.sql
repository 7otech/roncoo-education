# Host: localhost  (Version 5.7.27)
# Date: 2020-05-07 23:12:06
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "lecturer"
#

CREATE TABLE `lecturer` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `lecturer_user_no` bigint(20) NOT NULL COMMENT '讲师用户编号',
  `lecturer_name` varchar(50) NOT NULL DEFAULT '' COMMENT '讲师名称',
  `lecturer_mobile` char(11) NOT NULL DEFAULT '' COMMENT '讲师手机',
  `lecturer_email` varchar(100) DEFAULT NULL COMMENT '讲师邮箱',
  `position` varchar(50) DEFAULT NULL COMMENT '职位',
  `head_img_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `introduce` varchar(2048) DEFAULT NULL COMMENT '简介',
  `lecturer_proportion` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '讲师分成比例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='讲师信息';

#
# Data for table "lecturer"
#

INSERT INTO `lecturer` VALUES (1064776676173942786,'2018-11-20 15:44:14','2018-11-20 15:44:14',1,1,2018112015051635,'领课网络','13800138001','297115770@qq.com','','http://static.roncoos.com/os/logo.png','<p>广州市领课网络科技有限公司成立于2015年，由多名长期从事在线教育和互联网金融系统技术服务的行业精英共同创办。在互联网及大数据时代背景下，整合互联网技术及在线教育的优势，打造在线教育平台，为企业节省研发费用和时间，助力机构和讲师建立自己的在线教育品牌。旗下的产品有“领课教育云”、“领课教育系统”和“龙果支付系统”。</p><p>&nbsp; &nbsp; 教育云主要提供平台运营服务及对应的技术服务。</p><p>&nbsp; &nbsp; 教育系统主要提供在线教育系统及对应的技术服务。</p><p>&nbsp; &nbsp; 支付系统主要提供互联网聚合支付系统的销售及对应的技术服务。</p>',0.6000);

#
# Structure for table "lecturer_audit"
#

CREATE TABLE `lecturer_audit` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `audit_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '审核状态(0:待审核,1:审核通过,2:审核不通过)',
  `audit_opinion` varchar(1024) DEFAULT NULL COMMENT '审核意见',
  `lecturer_user_no` bigint(20) NOT NULL COMMENT '讲师用户编号',
  `lecturer_name` varchar(50) NOT NULL DEFAULT '' COMMENT '讲师名称',
  `lecturer_mobile` char(11) NOT NULL DEFAULT '' COMMENT '讲师手机',
  `lecturer_email` varchar(100) NOT NULL DEFAULT '' COMMENT '讲师邮箱',
  `position` varchar(50) DEFAULT NULL COMMENT '职位',
  `head_img_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `introduce` varchar(2048) DEFAULT NULL COMMENT '简介',
  `lecturer_proportion` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '讲师分成比例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='讲师信息-审核';

#
# Data for table "lecturer_audit"
#

INSERT INTO `lecturer_audit` VALUES (1064776676173942786,'2018-11-20 15:06:36','2018-11-20 15:06:36',1,1,0,'',2018112015051635,'领课网络','13800138001','297115770@qq.com','','http://static.roncoos.com/os/logo.png','<p>广州市领课网络科技有限公司成立于2015年，由多名长期从事在线教育和互联网金融系统技术服务的行业精英共同创办。在互联网及大数据时代背景下，整合互联网技术及在线教育的优势，打造在线教育平台，为企业节省研发费用和时间，助力机构和讲师建立自己的在线教育品牌。旗下的产品有“领课教育云”、“领课教育系统”和“龙果支付系统”。</p><p>&nbsp; &nbsp; 教育云主要提供平台运营服务及对应的技术服务。</p><p>&nbsp; &nbsp; 教育系统主要提供在线教育系统及对应的技术服务。</p><p>&nbsp; &nbsp; 支付系统主要提供互联网聚合支付系统的销售及对应的技术服务。</p>',0.6000);

#
# Structure for table "lecturer_ext"
#

CREATE TABLE `lecturer_ext` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `lecturer_user_no` bigint(20) NOT NULL COMMENT '讲师用户编号',
  `total_income` decimal(11,2) NOT NULL COMMENT '总收入',
  `history_money` decimal(11,2) NOT NULL COMMENT '已提金额',
  `enable_balances` decimal(11,2) NOT NULL COMMENT '可提余额',
  `freeze_balances` decimal(11,2) NOT NULL COMMENT '冻结金额',
  `sign` char(32) NOT NULL COMMENT 'sign',
  `bank_card_no` varchar(255) DEFAULT NULL COMMENT '银行卡号',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '银行名称',
  `bank_branch_name` varchar(255) DEFAULT NULL COMMENT '银行支行名称',
  `bank_user_name` varchar(255) DEFAULT NULL COMMENT '银行开户名',
  `bank_id_card_no` varchar(255) DEFAULT NULL COMMENT '银行身份证号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='讲师账户信息表';

#
# Data for table "lecturer_ext"
#

INSERT INTO `lecturer_ext` VALUES (1064776676232663041,'2018-11-20 15:06:36','2019-10-28 12:19:01',1,1,2018112015051635,10.99,0.00,10.99,0.00,'44aebc50bf517e8291c45cd83a445c55',NULL,NULL,NULL,NULL,NULL);

#
# Structure for table "lecturer_profit"
#

CREATE TABLE `lecturer_profit` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lecturer_user_no` bigint(20) NOT NULL COMMENT '讲师用户编号',
  `bank_card_no` varchar(255) NOT NULL COMMENT '银行卡号',
  `bank_name` varchar(255) NOT NULL COMMENT '银行名称',
  `bank_branch_name` varchar(255) NOT NULL COMMENT '银行支行名称',
  `bank_user_name` varchar(255) NOT NULL COMMENT '银行开户名',
  `bank_id_card_no` varchar(255) NOT NULL COMMENT '银行身份证号',
  `lecturer_profit` decimal(11,2) DEFAULT NULL COMMENT '讲师收入',
  `platform_profit` decimal(11,2) DEFAULT NULL COMMENT '平台收入',
  `profit_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分润状态（1确认中，2成功，3失败）',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='讲师提现日志表';

#
# Data for table "lecturer_profit"
#


#
# Structure for table "platform"
#

CREATE TABLE `platform` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `client_id` char(34) NOT NULL DEFAULT '' COMMENT '客户端ID',
  `client_secret` char(32) NOT NULL DEFAULT '' COMMENT '客户端密匙',
  `client_name` varchar(50) NOT NULL DEFAULT '' COMMENT '客户端名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='平台信息';

#
# Data for table "platform"
#

INSERT INTO `platform` VALUES (1013992693696151553,'2018-07-03 11:48:46','2018-07-03 11:48:46',1,1,'lkb65617f842ad4c37895a733b8de43cbb','16525ad4b35842679c17806ee86639a2','领课学院','演示系统');

#
# Structure for table "region"
#

CREATE TABLE `region` (
  `id` bigint(20) unsigned NOT NULL COMMENT '主键',
  `parent_id` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '级别',
  `province_code` varchar(9) NOT NULL DEFAULT '' COMMENT '区域编码（国标）',
  `center_lng` decimal(12,9) NOT NULL COMMENT '中心经度',
  `center_lat` decimal(12,9) NOT NULL COMMENT '中心维度',
  `province_id` int(11) NOT NULL COMMENT '省Id',
  `province_name` varchar(50) NOT NULL COMMENT '省名称',
  `city_id` int(11) NOT NULL COMMENT '市Id',
  `city_code` varchar(50) NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(50) NOT NULL DEFAULT '' COMMENT '市名称',
  `region_name` varchar(50) NOT NULL DEFAULT '' COMMENT '区域名称',
  `district_name` varchar(50) NOT NULL DEFAULT '' COMMENT '区名称',
  `merger_name` varchar(100) NOT NULL DEFAULT '' COMMENT '全路径名称',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='行政区域表';

#
# Data for table "region"
#


#
# Structure for table "send_sms_log"
#

CREATE TABLE `send_sms_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `template` varchar(36) NOT NULL COMMENT '短信模板',
  `mobile` char(11) NOT NULL COMMENT '手机号码',
  `sms_code` varchar(12) NOT NULL COMMENT '验证码',
  `is_success` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否发送成功(1发送成功，0:发送失败)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户发送短信日志';

#
# Data for table "send_sms_log"
#

INSERT INTO `send_sms_log` VALUES (106542293996261781,'2019-08-15 10:52:30','SMS_59740002','13800138001','561143',0),(1065422939962617857,'2019-08-15 10:52:30','SMS_59740002','13800138001','231155',0);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `user_no` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `mobile_salt` varchar(36) NOT NULL COMMENT '密码盐',
  `mobile_psw` varchar(255) NOT NULL COMMENT '登录密码',
  `user_source` varchar(255) DEFAULT NULL COMMENT '用户来源(client_id)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_mobile` (`mobile`),
  UNIQUE KEY `uk_user_no` (`user_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户基本信息';

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'1899-12-30 01:00:00','1899-12-30 01:00:00',1,2018033111202589416,'18800000000','59429d68a16540a676c6761c32e1a0c','fc341fbafb1cbfe5e2a7b94cb474f99e54140aff','lkb65617f842ad4c37895a733b8de43cbb'),(1064776676060696578,'2019-01-23 16:13:45','2018-11-20 15:06:36',1,2018112015051635,'13800138001','2c23d864cb1446728ace94def03d05ba','94325a2f469e9b6b62511c90f0fc375e9045a59b',NULL),(1065422939962617857,'2019-01-23 16:13:45','2018-11-22 09:53:16',1,2018112209531803,'13800000000','8739165ccb584dd9bded6763df80b8a2','729a698197f772c87deb43c46bd1392be2642cfb','lkb65617f842ad4c37895a733b8de43cbb'),(1085798859812782081,'2019-01-23 16:13:45','2019-01-17 15:19:54',1,2019011715195672,'13800138002','13ea736462fc4207b1adc8d576e3f7bf','4795feaab1ada747a9b9c34dc9c06521348e1e07','lkb65617f842ad4c37895a733b8de43cbb'),(1085800044884017154,'2019-01-23 16:13:45','2019-01-17 15:24:36',1,2019011715243822,'13800138003','2ed29fc0171f408c802cf01d32d9cf56','cdd67b81652023b99262f5af51927cb2216b269d','lkb65617f842ad4c37895a733b8de43cbb');

#
# Structure for table "user_ext"
#

CREATE TABLE `user_ext` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1:正常，0:禁用)',
  `user_no` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '用户类型(1用户，2讲师)',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '用户手机',
  `sex` tinyint(3) unsigned DEFAULT '3' COMMENT '性别(1男，2女，3保密)',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `head_img_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_mobile` (`mobile`),
  UNIQUE KEY `uk_user_no` (`user_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户教育信息';

#
# Data for table "user_ext"
#

INSERT INTO `user_ext` VALUES (1064776676098445314,'2019-01-23 16:13:45','2018-11-20 15:06:36',1,2018112015051635,2,'13800138001',3,0,'领课','http://static.roncoos.com/os/logo.png','测试讲师'),(1065422939962617857,'2019-01-23 16:13:45','2018-11-22 09:53:16',1,2018112209531803,1,'13800000000',3,20,'小明',NULL,'测试用户-小明'),(1085798859821170690,'2019-01-23 16:13:45','2019-01-17 15:19:54',1,2019011715195672,1,'13800138002',1,18,'小白','http://static-dev.roncoo.com/course/ebe919da49f14529a4fd7e9d8453a552.jpg','测试用户-小白'),(1085800044892405761,'2019-01-23 16:13:45','2019-01-17 15:24:36',1,2019011715243822,1,'13800138003',3,18,'小黑','http://static-dev.roncoo.com/course/2391cd733afc40db92754c3a501f9e60.jpg','测试用户-小黑');

#
# Structure for table "user_log_login"
#

CREATE TABLE `user_log_login` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_no` bigint(20) NOT NULL COMMENT '用户编号',
  `client_id` char(34) NOT NULL DEFAULT '' COMMENT '客户端ID',
  `login_status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '登录状态(1成功，0失败)',
  `login_ip` varchar(255) DEFAULT NULL COMMENT '登录IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户错误登录日志';

#
# Data for table "user_log_login"
#


#
# Structure for table "user_log_modified"
#

CREATE TABLE `user_log_modified` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_no` bigint(20) NOT NULL COMMENT '用户编号',
  `mobile_old` char(11) NOT NULL DEFAULT '' COMMENT '原手机号',
  `mobile_new` char(11) NOT NULL DEFAULT '' COMMENT '新手机',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户修改日志';

#
# Data for table "user_log_modified"
#

