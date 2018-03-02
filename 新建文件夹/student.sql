/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-11-13 17:55:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `uuid` varchar(50) NOT NULL COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '学生编号',
  `age` int(24) DEFAULT NULL COMMENT '年纪',
  `className` varchar(50) DEFAULT NULL COMMENT '班级名称',
  `name` varchar(24) DEFAULT NULL COMMENT '姓名',
  `major` varchar(24) DEFAULT NULL COMMENT '专业',
  `createTime` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `editeTime` varchar(50) DEFAULT NULL COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
