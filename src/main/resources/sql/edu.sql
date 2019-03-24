/*
Navicat MySQL Data Transfer

Source Server         : 192.168.8.104
Source Server Version : 50642
Source Host           : 192.168.8.104:3306
Source Database       : edu

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-03-24 17:15:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edu_account
-- ----------------------------
DROP TABLE IF EXISTS `edu_account`;
CREATE TABLE `edu_account` (
  `id` int(11) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `del_flag` int(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_account
-- ----------------------------

-- ----------------------------
-- Table structure for edu_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `edu_dictionary`;
CREATE TABLE `edu_dictionary` (
  `id` int(11) NOT NULL,
  `dic_code` int(11) NOT NULL COMMENT '字典代码',
  `dic_name` varchar(50) NOT NULL COMMENT '字典名称',
  `dic_model` varchar(50) NOT NULL COMMENT '模块',
  `dic_sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of edu_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for edu_gov
-- ----------------------------
DROP TABLE IF EXISTS `edu_gov`;
CREATE TABLE `edu_gov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父id',
  `name` varchar(50) NOT NULL COMMENT '组织机构名称',
  `pid_path` varchar(100) NOT NULL COMMENT '组织机构路径',
  `org_type` int(2) NOT NULL COMMENT '组织机构类型',
  `org_sort` int(2) NOT NULL COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志位：0未删除/1已删除',
  `org_code` varchar(50) NOT NULL COMMENT '组织机构代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='行政机构表';

-- ----------------------------
-- Records of edu_gov
-- ----------------------------
INSERT INTO `edu_gov` VALUES ('1', '0', '山东省1', '0', '1', '1', '2019-01-22 19:33:48', '2019-01-22 19:33:48', '0', '370000');
INSERT INTO `edu_gov` VALUES ('2', '1', '济南市', '1', '2', '1', '2019-01-22 19:32:12', '2019-01-22 19:32:12', '0', '370100');
INSERT INTO `edu_gov` VALUES ('3', '2', '市辖区', '1/2', '3', '1', '2019-01-18 01:50:59', '2019-01-18 01:50:59', '0', '370101');
INSERT INTO `edu_gov` VALUES ('4', '2', '历下区', '1/2', '3', '2', '2019-01-18 01:52:08', '2019-01-18 01:52:08', '0', '370102');
INSERT INTO `edu_gov` VALUES ('5', '2', '市中区', '1/2', '3', '3', '2019-01-18 01:52:37', '2019-01-18 01:52:37', '0', '370103');
INSERT INTO `edu_gov` VALUES ('6', '2', '槐荫区', '1/2', '3', '4', '2019-01-18 01:53:09', '2019-01-18 01:53:09', '0', '370104');
INSERT INTO `edu_gov` VALUES ('7', '2', '天桥区', '1/2', '3', '5', '2019-01-18 01:53:39', '2019-01-18 01:53:39', '0', '370105');
INSERT INTO `edu_gov` VALUES ('8', '2', '历城区', '1/2', '3', '6', '2019-01-18 01:54:55', '2019-01-18 01:54:55', '0', '370112');
INSERT INTO `edu_gov` VALUES ('9', '2', '长清区', '1/2', '3', '7', '2019-01-18 01:55:15', '2019-01-18 01:55:15', '0', '370113');
INSERT INTO `edu_gov` VALUES ('10', '2', '平阴县', '1/2', '3', '8', '2019-01-18 01:55:46', '2019-01-18 01:55:46', '0', '370124');
INSERT INTO `edu_gov` VALUES ('11', '2', '济阳县', '1/2', '3', '9', '2019-01-18 01:56:36', '2019-01-18 01:56:36', '0', '370125');
INSERT INTO `edu_gov` VALUES ('12', '2', '商河县', '1/2', '3', '10', '2019-01-18 01:56:53', '2019-01-18 01:56:53', '0', '370126');
INSERT INTO `edu_gov` VALUES ('13', '2', '章丘市', '1/2', '3', '11', '2019-01-18 01:57:11', '2019-01-18 01:57:11', '0', '370181');

-- ----------------------------
-- Table structure for edu_org
-- ----------------------------
DROP TABLE IF EXISTS `edu_org`;
CREATE TABLE `edu_org` (
  `id` int(11) NOT NULL,
  `org_name` varchar(255) DEFAULT NULL,
  `org_type` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pid_path` varchar(255) DEFAULT NULL,
  `sort_num` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构表';

-- ----------------------------
-- Records of edu_org
-- ----------------------------

-- ----------------------------
-- Table structure for edu_role
-- ----------------------------
DROP TABLE IF EXISTS `edu_role`;
CREATE TABLE `edu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `role_type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of edu_role
-- ----------------------------
INSERT INTO `edu_role` VALUES ('1001', '超级管理员', '0');
INSERT INTO `edu_role` VALUES ('1002', '学校管理员', '0');
INSERT INTO `edu_role` VALUES ('1003', '校长', null);
INSERT INTO `edu_role` VALUES ('1004', '班主任', null);
INSERT INTO `edu_role` VALUES ('1005', '老师', null);
INSERT INTO `edu_role` VALUES ('1006', '家长', null);
INSERT INTO `edu_role` VALUES ('1007', '安保队长', null);
INSERT INTO `edu_role` VALUES ('1008', '安保人员', null);
INSERT INTO `edu_role` VALUES ('1009', '保洁', null);
INSERT INTO `edu_role` VALUES ('1010', '宿管员', null);
INSERT INTO `edu_role` VALUES ('1011', '学生', null);
INSERT INTO `edu_role` VALUES ('1012', '学校工作人员', null);

-- ----------------------------
-- Table structure for edu_school
-- ----------------------------
DROP TABLE IF EXISTS `edu_school`;
CREATE TABLE `edu_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL COMMENT '学校名称',
  `address` varchar(255) DEFAULT NULL COMMENT '学校地址',
  `school_code` varchar(255) DEFAULT NULL COMMENT '学校代码',
  `pro_code` varchar(255) DEFAULT NULL COMMENT '省',
  `city_code` varchar(255) DEFAULT NULL COMMENT '市',
  `county_code` varchar(255) DEFAULT NULL COMMENT '区县',
  `school_system` varchar(11) DEFAULT NULL COMMENT '学制',
  `school_system_detail` varchar(255) DEFAULT NULL COMMENT '学制详情',
  `edu_stage` varchar(255) DEFAULT NULL COMMENT '教育阶段',
  `contact_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `contact_email` varchar(255) DEFAULT NULL COMMENT '联系邮件',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` int(2) DEFAULT '0' COMMENT '删除标志位，0未删除/1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学校基本信息';

-- ----------------------------
-- Records of edu_school
-- ----------------------------
INSERT INTO `edu_school` VALUES ('1', 'cc', 'ss', 'aa', 'aa', 'ss', 'aa', 'ss', 'aa', 'ss', 'aa', 'aa', 'aa', '2019-01-21 23:46:07', '2019-01-21 23:46:07', '0');

-- ----------------------------
-- Table structure for edu_student
-- ----------------------------
DROP TABLE IF EXISTS `edu_student`;
CREATE TABLE `edu_student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '性别：0女/1男',
  `stu_no` varchar(255) NOT NULL COMMENT '学号',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志位：0未删除/1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of edu_student
-- ----------------------------
INSERT INTO `edu_student` VALUES ('1', 'aa', '0', '102', '2019-01-14', '2019-01-14 15:26:47', '2019-01-14 23:26:44', '0');

-- ----------------------------
-- Table structure for edu_student_org
-- ----------------------------
DROP TABLE IF EXISTS `edu_student_org`;
CREATE TABLE `edu_student_org` (
  `student_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `create_tiem` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_student_org
-- ----------------------------

-- ----------------------------
-- Table structure for edu_user
-- ----------------------------
DROP TABLE IF EXISTS `edu_user`;
CREATE TABLE `edu_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志位，0未删除/1已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户表';

-- ----------------------------
-- Records of edu_user
-- ----------------------------

-- ----------------------------
-- Table structure for edu_user_org_role
-- ----------------------------
DROP TABLE IF EXISTS `edu_user_org_role`;
CREATE TABLE `edu_user_org_role` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `org_id` int(11) NOT NULL COMMENT '组织机构id',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`role_id`,`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组织角色关系表';

-- ----------------------------
-- Records of edu_user_org_role
-- ----------------------------
