/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-11-13 17:54:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `uuid` varchar(50) NOT NULL COMMENT '主键',
  `name` varchar(24) DEFAULT NULL COMMENT '姓名',
  `age` int(24) DEFAULT NULL COMMENT '年纪',
  `hobby` varchar(50) DEFAULT NULL COMMENT '爱好',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `phone` varchar(24) DEFAULT NULL COMMENT '电话',
  `createTime` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `editeTime` varchar(50) DEFAULT NULL COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
