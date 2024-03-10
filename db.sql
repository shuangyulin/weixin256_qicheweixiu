/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qicheweixiuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qicheweixiuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qicheweixiuguanli`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车牌号  Search111 ',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '品牌 Search111',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '图片 Search111',
  `cheliang_xinghao` varchar(200) DEFAULT NULL COMMENT '车型号 Search111',
  `cheliang_yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `news_content` text COMMENT '车辆详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车辆信息';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_uuid_number`,`cheliang_types`,`cheliang_photo`,`cheliang_xinghao`,`cheliang_yanse`,`yonghu_id`,`news_content`,`insert_time`,`create_time`) values (1,'165103066434657',1,'http://localhost:8080/qicheweixiuguanli/upload/cheliang1.jpg','车型号1','颜色1',3,'车辆详情1','2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,'165103066434615',3,'http://localhost:8080/qicheweixiuguanli/upload/cheliang2.jpg','车型号2','颜色2',1,'车辆详情2','2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,'165103066434684',1,'http://localhost:8080/qicheweixiuguanli/upload/cheliang3.jpg','车型号3','颜色3',1,'车辆详情3','2022-04-27 11:37:44','2022-04-27 11:37:44'),(4,'165103066434688',1,'http://localhost:8080/qicheweixiuguanli/upload/cheliang4.jpg','车型号4','颜色4',2,'车辆详情4','2022-04-27 11:37:44','2022-04-27 11:37:44'),(5,'16510306643461',2,'http://localhost:8080/qicheweixiuguanli/upload/cheliang5.jpg','车型号5','颜色5',3,'车辆详情5','2022-04-27 11:37:44','2022-04-27 11:37:44');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/qicheweixiuguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/qicheweixiuguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/qicheweixiuguanli/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-27 11:32:48'),(2,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-27 11:32:48'),(3,'weixiuxiangmu_types','维修类型',1,'维修类型1',NULL,NULL,'2022-04-27 11:32:48'),(4,'weixiuxiangmu_types','维修类型',2,'维修类型2',NULL,NULL,'2022-04-27 11:32:48'),(5,'weixiuxiangmu_types','维修类型',3,'维修类型3',NULL,NULL,'2022-04-27 11:32:48'),(6,'weixiuxiangmu_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-27 11:32:48'),(7,'weixiuxiangmu_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-27 11:32:48'),(8,'weixiuxiangmu_order_types','订单类型',3,'已完成',NULL,NULL,'2022-04-27 11:32:48'),(9,'cheliang_types','品牌',1,'品牌1',NULL,NULL,'2022-04-27 11:32:49'),(10,'cheliang_types','品牌',2,'品牌2',NULL,NULL,'2022-04-27 11:32:49'),(11,'cheliang_types','品牌',3,'品牌3',NULL,NULL,'2022-04-27 11:32:49'),(12,'peijian_types','配件类型',1,'配件类型1',NULL,NULL,'2022-04-27 11:32:49'),(13,'peijian_types','配件类型',2,'配件类型2',NULL,NULL,'2022-04-27 11:32:49'),(14,'peijian_types','配件类型',3,'配件类型3',NULL,NULL,'2022-04-27 11:32:49'),(15,'peijian_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2022-04-27 11:32:49'),(16,'peijian_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2022-04-27 11:32:49'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-27 11:32:49'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-27 11:32:49'),(19,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-27 11:32:49'),(20,'sex_types','性别',1,'男',NULL,NULL,'2022-04-27 11:32:49'),(21,'sex_types','性别',2,'女',NULL,NULL,'2022-04-27 11:32:49'),(22,'shenfen_types','身份',1,'维修工',NULL,NULL,'2022-04-27 11:32:49'),(23,'shenfen_types','身份',2,'学工',NULL,NULL,'2022-04-27 11:32:49'),(24,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-27 11:32:49'),(25,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-27 11:32:49');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-04-27 11:37:44','2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-04-27 11:37:44','2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-04-27 11:37:44','2022-04-27 11:37:44','2022-04-27 11:37:44'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-27 11:37:44','2022-04-27 11:37:44','2022-04-27 11:37:44'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-04-27 11:37:44','2022-04-27 11:37:44','2022-04-27 11:37:44'),(7,NULL,NULL,1,'评论内容212',5,2,'2022-04-27 15:46:33',NULL,'2022-04-27 15:46:33'),(8,NULL,1,NULL,'评论1122112',5,2,'2022-04-27 15:48:56',NULL,'2022-04-27 15:48:56');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/qicheweixiuguanli/upload/news1.jpg','2022-04-27 11:37:44','公告详情1','2022-04-27 11:37:44'),(2,'公告标题2',1,'http://localhost:8080/qicheweixiuguanli/upload/news2.jpg','2022-04-27 11:37:44','公告详情2','2022-04-27 11:37:44'),(3,'公告标题3',2,'http://localhost:8080/qicheweixiuguanli/upload/news3.jpg','2022-04-27 11:37:44','公告详情3','2022-04-27 11:37:44'),(4,'公告标题4',2,'http://localhost:8080/qicheweixiuguanli/upload/news4.jpg','2022-04-27 11:37:44','公告详情4','2022-04-27 11:37:44'),(5,'公告标题5',1,'http://localhost:8080/qicheweixiuguanli/upload/news5.jpg','2022-04-27 11:37:44','公告详情5','2022-04-27 11:37:44');

/*Table structure for table `peijian` */

DROP TABLE IF EXISTS `peijian`;

CREATE TABLE `peijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `peijian_uuid_number` varchar(200) DEFAULT NULL COMMENT '配件编号  Search111 ',
  `peijian_name` varchar(200) DEFAULT NULL COMMENT '配件名称  Search111 ',
  `peijian_types` int(11) DEFAULT NULL COMMENT '配件类型 Search111',
  `peijian_kucun_number` int(11) DEFAULT NULL COMMENT '配件库存',
  `peijian_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `peijian_content` text COMMENT '配件介绍 ',
  `peijian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='配件';

/*Data for the table `peijian` */

insert  into `peijian`(`id`,`peijian_uuid_number`,`peijian_name`,`peijian_types`,`peijian_kucun_number`,`peijian_new_money`,`peijian_content`,`peijian_delete`,`create_time`) values (1,'165103066438538','配件名称1',3,91,'270.53','配件介绍1',1,'2022-04-27 11:37:44'),(2,'165103066439234','配件名称2',2,92,'42.51','配件介绍2',1,'2022-04-27 11:37:44'),(3,'165103066439240','配件名称3',1,93,'203.17','配件介绍3',1,'2022-04-27 11:37:44'),(4,'165103066439269','配件名称4',2,104,'172.82','配件介绍4',1,'2022-04-27 11:37:44'),(5,'165103066439226','配件名称5',3,105,'234.05','配件介绍5',1,'2022-04-27 11:37:44');

/*Table structure for table `peijian_churu_inout` */

DROP TABLE IF EXISTS `peijian_churu_inout`;

CREATE TABLE `peijian_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `peijian_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `peijian_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `peijian_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型',
  `peijian_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `peijian_churu_inout` */

insert  into `peijian_churu_inout`(`id`,`peijian_churu_inout_uuid_number`,`peijian_churu_inout_name`,`peijian_churu_inout_types`,`peijian_churu_inout_content`,`insert_time`,`create_time`) values (1,'165103066439825','出入库名称1',2,'备注1','2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,'165103066439827','出入库名称2',2,'备注2','2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,'165103066439858','出入库名称3',2,'备注3','2022-04-27 11:37:44','2022-04-27 11:37:44'),(4,'165103066439836','出入库名称4',1,'备注4','2022-04-27 11:37:44','2022-04-27 11:37:44'),(5,'165103066439867','出入库名称5',1,'备注5','2022-04-27 11:37:44','2022-04-27 11:37:44'),(6,'1651045527764','出库配件1、2、3各10个到仓库1',1,'','2022-04-27 15:45:28','2022-04-27 15:45:28');

/*Table structure for table `peijian_churu_inout_list` */

DROP TABLE IF EXISTS `peijian_churu_inout_list`;

CREATE TABLE `peijian_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `peijian_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `peijian_id` int(11) DEFAULT NULL COMMENT '配件',
  `peijian_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `peijian_churu_inout_list` */

insert  into `peijian_churu_inout_list`(`id`,`peijian_churu_inout_id`,`peijian_id`,`peijian_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,42,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,2,2,294,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,3,3,15,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(4,4,4,484,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(5,5,5,310,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(6,6,1,10,'2022-04-27 15:45:28','2022-04-27 15:45:28'),(7,6,2,10,'2022-04-27 15:45:28','2022-04-27 15:45:28'),(8,6,3,10,'2022-04-27 15:45:28','2022-04-27 15:45:28');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','og1yu0sw5yxmdg9cts59rmslc2sgtfac','2022-04-27 11:55:24','2022-04-27 16:46:10'),(2,1,'a1','yuangong','员工','7u9yqp4aklye08ycmi8tne4mc5mc30in','2022-04-27 13:04:52','2022-04-27 16:44:47'),(3,1,'a1','yonghu','用户','op15cchaf9exk1a4mmdauqrohch5awqc','2022-04-27 13:28:00','2022-04-27 16:49:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `weixiuxiangmu` */

DROP TABLE IF EXISTS `weixiuxiangmu`;

CREATE TABLE `weixiuxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `weixiuxiangmu_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `weixiuxiangmu_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `weixiuxiangmu_types` int(11) DEFAULT NULL COMMENT '维修类型 Search111',
  `weixiuxiangmu_new_money` decimal(10,2) DEFAULT NULL COMMENT '维修价格',
  `weixiuxiangmu_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `weixiuxiangmu_content` text COMMENT '维修介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `weixiuxiangmu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='维修项目';

/*Data for the table `weixiuxiangmu` */

insert  into `weixiuxiangmu`(`id`,`weixiuxiangmu_name`,`weixiuxiangmu_photo`,`weixiuxiangmu_types`,`weixiuxiangmu_new_money`,`weixiuxiangmu_clicknum`,`weixiuxiangmu_content`,`shangxia_types`,`weixiuxiangmu_delete`,`create_time`) values (1,'标题1','http://localhost:8080/qicheweixiuguanli/upload/1651031954035.jpeg',3,'92.47',54,'<p>维修介绍1</p>',1,1,'2022-04-27 11:37:44'),(2,'标题2','http://localhost:8080/qicheweixiuguanli/upload/1651031945476.jpeg',3,'85.07',31,'<p>维修介绍2</p>',1,1,'2022-04-27 11:37:44'),(3,'标题3','http://localhost:8080/qicheweixiuguanli/upload/1651031936957.jpeg',2,'476.21',43,'<p>维修介绍3</p>',1,1,'2022-04-27 11:37:44'),(4,'标题4','http://localhost:8080/qicheweixiuguanli/upload/1651031927244.jpeg',1,'155.07',341,'<p>维修介绍4</p>',1,1,'2022-04-27 11:37:44'),(5,'标题5','http://localhost:8080/qicheweixiuguanli/upload/1651031917868.jpeg',1,'478.22',438,'<p>维修介绍5</p>',1,1,'2022-04-27 11:37:44');

/*Table structure for table `weixiuxiangmu_liuyan` */

DROP TABLE IF EXISTS `weixiuxiangmu_liuyan`;

CREATE TABLE `weixiuxiangmu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `weixiuxiangmu_id` int(11) DEFAULT NULL COMMENT '维修项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `weixiuxiangmu_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='维修项目评论';

/*Data for the table `weixiuxiangmu_liuyan` */

insert  into `weixiuxiangmu_liuyan`(`id`,`weixiuxiangmu_id`,`yonghu_id`,`weixiuxiangmu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评论内容1','2022-04-27 11:37:44','回复信息1','2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,2,1,'评论内容2','2022-04-27 11:37:44','回复信息2','2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,3,1,'评论内容3','2022-04-27 11:37:44','回复信息3','2022-04-27 11:37:44','2022-04-27 11:37:44'),(4,4,2,'评论内容4','2022-04-27 11:37:44','回复信息4','2022-04-27 11:37:44','2022-04-27 11:37:44'),(5,5,1,'评论内容5','2022-04-27 11:37:44','回复信息5','2022-04-27 11:37:44','2022-04-27 11:37:44'),(6,3,1,'123','2022-04-27 15:43:35','回复','2022-04-27 15:45:54','2022-04-27 15:43:35');

/*Table structure for table `weixiuxiangmu_order` */

DROP TABLE IF EXISTS `weixiuxiangmu_order`;

CREATE TABLE `weixiuxiangmu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `weixiuxiangmu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `weixiuxiangmu_id` int(11) DEFAULT NULL COMMENT '维修项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '维修车辆',
  `weixiuxiangmu_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `weixiuxiangmu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `weixiuxiangmu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='维修订单';

/*Data for the table `weixiuxiangmu_order` */

insert  into `weixiuxiangmu_order`(`id`,`weixiuxiangmu_order_uuid_number`,`weixiuxiangmu_id`,`yonghu_id`,`cheliang_id`,`weixiuxiangmu_order_time`,`weixiuxiangmu_order_true_price`,`weixiuxiangmu_order_types`,`insert_time`,`create_time`) values (1,'1651043756177',5,1,3,'2022-04-27 15:11:38','478.22',3,'2022-04-27 15:15:56','2022-04-27 15:15:56'),(2,'1651044344551',4,1,2,'2022-01-01 00:00:00','155.07',2,'2022-04-27 15:25:45','2022-04-27 15:25:45'),(3,'1651045699046',3,1,2,'2022-12-31 00:00:00','476.21',1,'2022-04-27 15:48:19','2022-04-27 15:48:19');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/qicheweixiuguanli/upload/yonghu1.jpg',1,'17703786901','1@qq.com','9097994.57',1,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,'a2','123456','用户姓名2','http://localhost:8080/qicheweixiuguanli/upload/yonghu2.jpg',1,'17703786902','2@qq.com','326.68',1,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,'a3','123456','用户姓名3','http://localhost:8080/qicheweixiuguanli/upload/yonghu3.jpg',1,'17703786903','3@qq.com','146.03',1,'2022-04-27 11:37:44','2022-04-27 11:37:44');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfen_types` int(11) DEFAULT NULL COMMENT '身份 ',
  `yuangong_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_photo`,`sex_types`,`yuangong_phone`,`shenfen_types`,`yuangong_delete`,`insert_time`,`create_time`) values (1,'a1','123456','员工姓名1','http://localhost:8080/qicheweixiuguanli/upload/yuangong1.jpg',1,'17703786901',1,1,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(2,'a2','123456','员工姓名2','http://localhost:8080/qicheweixiuguanli/upload/yuangong2.jpg',1,'17703786902',2,1,'2022-04-27 11:37:44','2022-04-27 11:37:44'),(3,'a3','123456','员工姓名3','http://localhost:8080/qicheweixiuguanli/upload/yuangong3.jpg',2,'17703786903',2,1,'2022-04-27 11:37:44','2022-04-27 11:37:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
