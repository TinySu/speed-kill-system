/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : speed-kill-system

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-08-22 00:02:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ay_product
-- 商品表
-- ----------------------------
DROP TABLE IF EXISTS `ay_product`;
CREATE TABLE `ay_product` (
  `id` bigint(20) NOT NULL COMMENT '商品id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '秒杀开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '秒杀结束时间',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `product_img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ay_product
-- 插入3条商品记录
-- ----------------------------
INSERT INTO `ay_product` VALUES ('1', 'Fate Stay Night CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:01', '/Fate Stay Night CG.JPG');
INSERT INTO `ay_product` VALUES ('2', 'Gosick CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:02', '/Gosick CG.jpg');
INSERT INTO `ay_product` VALUES ('3', '冰菓CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:03', '/冰菓CG.JPG');
INSERT INTO `ay_product` VALUES ('4', '境界的彼方CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:04', '/境界的彼方CG.JPG');
INSERT INTO `ay_product` VALUES ('5', '空之境界CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:05', '/空之境界CG.JPG');
INSERT INTO `ay_product` VALUES ('6', '请问您要来点兔子吗CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:06', '/请问您要来点兔子吗CG.JPG');
INSERT INTO `ay_product` VALUES ('7', '声之形CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:07', '/声之形CG.JPG');
INSERT INTO `ay_product` VALUES ('8', '四月是你的谎言CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:08', '/四月是你的谎言CG.JPG');
INSERT INTO `ay_product` VALUES ('9', '我的青春恋爱物语果然有问题CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:09', '/我的青春恋爱物语果然有问题CG.JPG');
INSERT INTO `ay_product` VALUES ('10', '中二病也要谈恋爱CG', '100', '2020-08-20 08:00:00', '2020-09-22 08:00:00', '2020-08-19 23:05:10', '/中二病也要谈恋爱CG.JPG');

-- ----------------------------
-- Table structure for ay_user
-- 用户表
-- ----------------------------
DROP TABLE IF EXISTS `ay_user`;
CREATE TABLE `ay_user` (
  `id` bigint(20) NOT NULL COMMENT '用户id',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `phone_number` varchar(11) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ay_user
-- 插入2条用户记录
-- ----------------------------
INSERT INTO `ay_user` VALUES ('1', 'ay', '15988888888');
INSERT INTO `ay_user` VALUES ('2', 'al', '15900000000');

-- ----------------------------
-- Table structure for ay_user_kill_product
-- 商品描述记录表
-- ----------------------------
DROP TABLE IF EXISTS `ay_user_kill_product`;
CREATE TABLE `ay_user_kill_product` (
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `state` tinyint(4) DEFAULT NULL COMMENT '状态，-1：无效；0：成功；1：已付款',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;


