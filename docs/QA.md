领课教育—在线教育系统（常见问题）
前端账号密码
普 通 用 户: 13800138002 密码：123456

讲 师 用 户: 13800138001 密码：123qwe



管理后台账号密码
管 理 员 ：13800000000 密码：123456

超 级 管 理 员 ：18800000000 密码：123456（2.0.0-SNAPSHOT版本）

超 级 管 理 员 ：18800000000 密码：asdanEn.132reFwf（1.0.0版本）



1、eureka报错Connection refused: connect



原因：只启动一台就会报错。默认启动2台，相互注册，此错误不影响使用



解决方法：
(1) 启动两台
(2) 也可在配置文件配置(设置不注册自身):

# 设置不注册自身
eureka.client.register-with-eureka=false
eureka.client.fetch-registry=false


2、druid加密不成功



(1) 可能密码加密错误，可以通过工具类来加密



package com.roncoo.education.boss.test;
import com.alibaba.druid.filter.config.ConfigTools;

public class DruidUtil {
public static void main(String[] args) throws Exception {
String password = "你的密码";
System.out.println(ConfigTools.encrypt(password));
}
}


(2) 存在缓存，配置不更新



原因：通过配置中心获取配置，配置中心里面的配置没更新。

解决方法：删除配置中心里面加载的配置，默认在：/home/roncoo/education/file/config-repo

spring.cloud.config.server.git.basedir=/home/roncoo/education/file/config-repo
