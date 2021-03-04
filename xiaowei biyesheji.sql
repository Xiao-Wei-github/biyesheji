/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80021
Source Host           : localhost:3306
Source Database       : jiudian

Target Server Type    : MYSQL
Target Server Version : 80021
File Encoding         : 65001

Date: 2021-03-03 17:35:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `admin_pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '123456',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `t_book_a_room`
-- ----------------------------
DROP TABLE IF EXISTS `t_book_a_room`;
CREATE TABLE `t_book_a_room` (
  `room_id` varchar(25) NOT NULL,
  `count_date` int DEFAULT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `preset_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book_a_room
-- ----------------------------
INSERT INTO `t_book_a_room` VALUES ('4301', '2', 'zyg', '1827838661', '2019-06-26 15:58:23');
INSERT INTO `t_book_a_room` VALUES ('5202', '2', 'zyg', '1827838661', '2019-06-26 16:03:59');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `ser_num` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `room_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `release_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ser_num`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('19', 'user', '1000', '很棒，真好用', '2021-03-03 16:45:24');
INSERT INTO `t_comment` VALUES ('20', 'user', '5000', 'nice', '2021-03-03 16:46:06');
INSERT INTO `t_comment` VALUES ('21', 'user', '6000', '666', '2021-03-03 16:46:18');
INSERT INTO `t_comment` VALUES ('22', 'user1', '1000', '很棒', '2021-03-03 16:47:08');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `user_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `liuyan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ser_num` bigint NOT NULL AUTO_INCREMENT,
  `release_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ser_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `ser_num` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `release_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ser_num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', '1', '即日起：所有客房打8折', '2019-06-07 18:52:09');
INSERT INTO `t_notice` VALUES ('2', '1', '即日起：豪华房优惠100元', '2019-06-09 23:04:50');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `room_id` varchar(20) NOT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `ID` varchar(18) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `prepay` decimal(10,2) DEFAULT NULL,
  `payment` decimal(10,2) DEFAULT NULL,
  `change` decimal(10,2) DEFAULT NULL,
  `ser_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1302', 'zyg', '564456', '2019-06-13 19:59:47', '2019-06-14 01:21:30', '240.00', '300.00', null, 'cb670bee8dd211e991387eb7195666fe');
INSERT INTO `t_order` VALUES ('1303', 'zyg', '5434', '2019-06-09 20:13:07', '2019-06-14 01:20:54', '150.00', '250.00', null, 'a5c04aac8dd411e991387eb7195666fe');
INSERT INTO `t_order` VALUES ('2804', 'zyg', '5464', '2019-06-14 09:59:46', null, '263.00', null, null, '159ac5288e4811e9a2b8e050eeb8d2f2');
INSERT INTO `t_order` VALUES ('3202', 'zyg', '54424', '2019-06-14 08:05:38', '2019-06-14 10:00:06', '4522.00', '250.00', null, '23fda2628e3811e9b32a3e18bc66cbc9');

-- ----------------------------
-- Table structure for `t_room`
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
  `room_id` varchar(20) NOT NULL,
  `room_type` varchar(20) DEFAULT NULL,
  `area` varchar(11) DEFAULT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员未添加任何描述，联系QQ：896751366',
  `photo_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '无',
  `price` int DEFAULT '20000000',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES ('1000', '视频类', 'V1.0.0', '该软件为一款视频播放软件！', '爱奇艺', '20200323');
INSERT INTO `t_room` VALUES ('2000', '工作类', 'V2.0.3', '该软件为一款智能化办公软件，其中包括了员工打卡，报销审批等功能。', '钉钉', '20203021');
INSERT INTO `t_room` VALUES ('3000', '工作类', 'V3.0.3', '该软件为一款可供多人同时在线编辑的文本编辑软件。', '石墨文档', '20160203');
INSERT INTO `t_room` VALUES ('4000', '视频类', 'V5.3.5', '该软件为一款视频播放软件！', '腾讯视频', '20000306');
INSERT INTO `t_room` VALUES ('5000', '音乐类', 'V3.6.8', '该软件为一款音乐播放软件，可以播放音乐，电台等等。', '网易云音乐', '20101105');
INSERT INTO `t_room` VALUES ('6000', '社交类', 'V12.4.6', '该软件为一款社交软件，可以进行语音交流，视频通话等。', '微信', '19950405');

-- ----------------------------
-- Table structure for `t_room_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_room_type`;
CREATE TABLE `t_room_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room_type
-- ----------------------------
INSERT INTO `t_room_type` VALUES ('1', '社交类');
INSERT INTO `t_room_type` VALUES ('2', '音乐类');
INSERT INTO `t_room_type` VALUES ('3', '视频类');
INSERT INTO `t_room_type` VALUES ('4', '工作类');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123456',
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `QQ` varchar(20) DEFAULT NULL,
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '/Users/stone/Downloads/学习图片/默认头像.png',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('13', 'user', '123', '中国', '17779058848', '896751366@qq.com', '896751366', null);
INSERT INTO `t_user` VALUES ('14', 'user1', '123', '中国', '17779058848', '896751366@qq.com', '567890', null);
DROP TRIGGER IF EXISTS `uuid_to_orderId`;
DELIMITER ;;
CREATE TRIGGER `uuid_to_orderId` BEFORE INSERT ON `t_order` FOR EACH ROW set NEW.ser_num = REPLACE(UUID(),'-','')
;
;;
DELIMITER ;
