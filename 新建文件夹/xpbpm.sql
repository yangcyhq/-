/*
Navicat MySQL Data Transfer

Source Server         : wampmysql5.6
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : xpbpm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-02-07 11:16:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xp_access`
-- ----------------------------
DROP TABLE IF EXISTS `xp_access`;
CREATE TABLE `xp_access` (
  `node_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`node_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='结点访问权限表';

-- ----------------------------
-- Records of xp_access
-- ----------------------------
INSERT INTO `xp_access` VALUES ('1', '1');
INSERT INTO `xp_access` VALUES ('2', '1');
INSERT INTO `xp_access` VALUES ('3', '1');
INSERT INTO `xp_access` VALUES ('4', '1');
INSERT INTO `xp_access` VALUES ('5', '1');
INSERT INTO `xp_access` VALUES ('6', '1');

-- ----------------------------
-- Table structure for `xp_node`
-- ----------------------------
DROP TABLE IF EXISTS `xp_node`;
CREATE TABLE `xp_node` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `node_fid` int(11) NOT NULL DEFAULT '0',
  `node_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `node_url` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'file',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统结点表';

-- ----------------------------
-- Records of xp_node
-- ----------------------------
INSERT INTO `xp_node` VALUES ('1', '0', '系统', '', '');
INSERT INTO `xp_node` VALUES ('2', '1', '用户列表', 'system/listUser.html', '');
INSERT INTO `xp_node` VALUES ('3', '1', '角色列表', 'system/listRole.html', '');
INSERT INTO `xp_node` VALUES ('4', '1', '结点列表', 'system/listNode.html', '');
INSERT INTO `xp_node` VALUES ('5', '1', '为用户分配角色', '', 'tree-file');
INSERT INTO `xp_node` VALUES ('6', '1', '为角色分配权限', '', '');
INSERT INTO `xp_node` VALUES ('7', '0', '测试数组传值', 'system/testArr.html', '');

-- ----------------------------
-- Table structure for `xp_role`
-- ----------------------------
DROP TABLE IF EXISTS `xp_role`;
CREATE TABLE `xp_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统角色表';

-- ----------------------------
-- Records of xp_role
-- ----------------------------
INSERT INTO `xp_role` VALUES ('1', '超级管理员');
INSERT INTO `xp_role` VALUES ('2', '普通管理员');
INSERT INTO `xp_role` VALUES ('3', '公司员工');
INSERT INTO `xp_role` VALUES ('4', '来访客户');
INSERT INTO `xp_role` VALUES ('5', '账务员');
INSERT INTO `xp_role` VALUES ('6', '人事招聘官');
INSERT INTO `xp_role` VALUES ('7', '采购员');
INSERT INTO `xp_role` VALUES ('8', '业务员');
INSERT INTO `xp_role` VALUES ('9', '实体店销售员');
INSERT INTO `xp_role` VALUES ('10', '网络销售员');
INSERT INTO `xp_role` VALUES ('11', '电话销售员');
INSERT INTO `xp_role` VALUES ('14', '....');

-- ----------------------------
-- Table structure for `xp_user`
-- ----------------------------
DROP TABLE IF EXISTS `xp_user`;
CREATE TABLE `xp_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_num` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_psw` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of xp_user
-- ----------------------------
INSERT INTO `xp_user` VALUES ('1', 'ljb', '宋江', 'D9C790CB7B594AE3B70A9807915889B8');
INSERT INTO `xp_user` VALUES ('2', 'ljb2', '卢俊义', 'xxxname');
INSERT INTO `xp_user` VALUES ('3', 'ljb3', '吴用', 'xxxname');
INSERT INTO `xp_user` VALUES ('4', 'ljb4', '公孙胜', 'xxxname');
INSERT INTO `xp_user` VALUES ('5', 'ljb5', '关胜', 'xxxname');
INSERT INTO `xp_user` VALUES ('6', 'ljb6', '林冲', 'xxxname');
INSERT INTO `xp_user` VALUES ('7', 'ljb7', '秦明', 'xxxname');
INSERT INTO `xp_user` VALUES ('8', 'ljb8', '呼延灼', 'xxxname');
INSERT INTO `xp_user` VALUES ('9', 'ljb9', '花荣', 'xxxname');
INSERT INTO `xp_user` VALUES ('10', 'ljb10', '柴进', 'xxxname');
INSERT INTO `xp_user` VALUES ('11', 'ljb11', '李应', 'xxxname');
INSERT INTO `xp_user` VALUES ('12', 'ljb12', '朱仝', 'xxxname');
INSERT INTO `xp_user` VALUES ('13', 'system/testArr.html', '数组传值测试', 'xxxname');
INSERT INTO `xp_user` VALUES ('14', 'xxx', 'xxxname', 'xxxname');
INSERT INTO `xp_user` VALUES ('15', 'xxx', 'xxxname', 'xxxname');
INSERT INTO `xp_user` VALUES ('32', 'xxx', 'xxxname', 'kkk');
INSERT INTO `xp_user` VALUES ('33', 'xxx2', 'xxxname2', 'kkk');
INSERT INTO `xp_user` VALUES ('34', 'xxx1', 'xxxname1', 'kkk');
INSERT INTO `xp_user` VALUES ('35', 'xxx2', 'xxxname2', 'xxxpsw2');
INSERT INTO `xp_user` VALUES ('36', 'xxx1', 'xxxname1', 'kkk');
INSERT INTO `xp_user` VALUES ('37', 'xxx2', 'xxxname2', 'xxxpsw2');
INSERT INTO `xp_user` VALUES ('38', 'xxx1', 'xxxname1', 'kkk');
INSERT INTO `xp_user` VALUES ('39', 'xxx2', 'xxxname2', 'xxxpsw2');
INSERT INTO `xp_user` VALUES ('44', 'xxx1', 'xxxname1', 'kkk');
INSERT INTO `xp_user` VALUES ('45', 'xxx2', 'xxxname2', 'xxxpsw2');
INSERT INTO `xp_user` VALUES ('46', 'xxx1', 'xxxname1', 'xxxpsw1');
INSERT INTO `xp_user` VALUES ('47', 'xxx2', 'xxxname2', 'xxxpsw2');
INSERT INTO `xp_user` VALUES ('48', 'xxx1', 'xxxname1', 'xxxpsw1');
INSERT INTO `xp_user` VALUES ('49', 'xxx2', 'xxxname2', 'xxxpsw2');

-- ----------------------------
-- Table structure for `xp_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `xp_user_role`;
CREATE TABLE `xp_user_role` (
  `user_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户角色表';

-- ----------------------------
-- Records of xp_user_role
-- ----------------------------
INSERT INTO `xp_user_role` VALUES ('1', '1');
INSERT INTO `xp_user_role` VALUES ('1', '2');
INSERT INTO `xp_user_role` VALUES ('1', '3');
INSERT INTO `xp_user_role` VALUES ('2', '2');
INSERT INTO `xp_user_role` VALUES ('2', '4');
INSERT INTO `xp_user_role` VALUES ('3', '3');

-- ----------------------------
-- View structure for `view_access`
-- ----------------------------
DROP VIEW IF EXISTS `view_access`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_access` AS select `a`.`node_id` AS `node_id`,`a`.`node_fid` AS `node_fid`,`a`.`node_name` AS `node_name`,`a`.`node_url` AS `node_url`,`a`.`node_icon` AS `node_icon`,`c`.`user_id` AS `user_id` from ((`xp_access` `b` left join `xp_user_role` `c` on((`b`.`role_id` = `c`.`role_id`))) left join `xp_node` `a` on((`a`.`node_id` = `b`.`node_id`))) ;
