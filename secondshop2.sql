/*
Navicat MySQL Data Transfer

Source Server         : bishe2019-2010
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : secondshop2

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-03-23 12:16:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wct_bill
-- ----------------------------
DROP TABLE IF EXISTS `wct_bill`;
CREATE TABLE `wct_bill` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gids` varchar(100) DEFAULT NULL,
  `pirce` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `shop` varchar(100) DEFAULT NULL,
  `bill` varchar(2000) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ndate` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `way` varchar(50) DEFAULT NULL,
  `gnames` varchar(500) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `statecn` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `cuidan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_bill
-- ----------------------------
INSERT INTO `wct_bill` VALUES ('11', '15', null, '波仔', '111', null, null, null, '2020-04-01', '153', null, '我的包包', null, null, '未付款', '15123385885', '重庆璧山区', '备注信息', null, null);
INSERT INTO `wct_bill` VALUES ('12', '11', null, '波仔', '111', null, null, null, '2020-04-01', '56', null, '闹钟', null, null, '已付款', '15123385885', '重庆璧山区', '123123', null, null);
INSERT INTO `wct_bill` VALUES ('13', '15', null, '小凤', '113', null, null, null, '2020-04-01', '153', null, '我的包包', null, null, '已付款', '15123385885', '重庆璧山区', '备注影响', null, null);

-- ----------------------------
-- Table structure for wct_dingzuo
-- ----------------------------
DROP TABLE IF EXISTS `wct_dingzuo`;
CREATE TABLE `wct_dingzuo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `renshu` varchar(20) DEFAULT NULL,
  `xingming` varchar(200) DEFAULT NULL,
  `shouji` varchar(200) DEFAULT NULL,
  `shijian` varchar(200) DEFAULT NULL,
  `todate` varchar(200) DEFAULT NULL,
  `beizhu` varchar(600) DEFAULT NULL,
  `shopid` varchar(200) DEFAULT NULL,
  `shopname` varchar(200) DEFAULT NULL,
  `ndate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_dingzuo
-- ----------------------------

-- ----------------------------
-- Table structure for wct_good
-- ----------------------------
DROP TABLE IF EXISTS `wct_good`;
CREATE TABLE `wct_good` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `jifen` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `count` varchar(10) DEFAULT '0',
  `typeid` varchar(10) DEFAULT NULL,
  `xiaoliang` int(10) DEFAULT '0',
  `ownid` varchar(10) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `shop` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ntime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_good
-- ----------------------------
INSERT INTO `wct_good` VALUES ('11', '闹钟', '56', null, '个性化闹钟', null, '1.jpg', '0', '1', null, null, '26', '重庆', null, '97', null, null);
INSERT INTO `wct_good` VALUES ('14', '小猫狂妃', '153', null, '这里是物品的说明\r\n                ', null, '2.jpg', null, '6', null, null, '26', '重庆', null, '97', null, null);
INSERT INTO `wct_good` VALUES ('15', '我的包包', '153', null, '这里是我的说明\r\n                ', null, '3.jpg', null, '6', null, null, '26', '重庆', null, '100', null, null);
INSERT INTO `wct_good` VALUES ('16', '笔记本电脑', '998', null, '这里是后台添加', null, '4.jpg', '0', '1', null, null, '26', '重庆', null, '100', null, null);
INSERT INTO `wct_good` VALUES ('17', '华为手机', '100', null, '这是华为啊', null, '4965ff71-2606-40a5-b466-fe15dbe2.gif', '0', '1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for wct_notice
-- ----------------------------
DROP TABLE IF EXISTS `wct_notice`;
CREATE TABLE `wct_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_notice
-- ----------------------------
INSERT INTO `wct_notice` VALUES ('1', '测试通知', '这里是通知的详细内容', '2020-04-01 19:35:39', null, null);
INSERT INTO `wct_notice` VALUES ('2', '这里是通知标题', '管理员可以发布一些通知给用户看', '2020-04-01 21:22:46', null, null);
INSERT INTO `wct_notice` VALUES ('3', '发布通知消息', '这里是消息内容', '2020-04-01 08:49:33', null, null);

-- ----------------------------
-- Table structure for wct_posts
-- ----------------------------
DROP TABLE IF EXISTS `wct_posts`;
CREATE TABLE `wct_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_posts
-- ----------------------------
INSERT INTO `wct_posts` VALUES ('1', '我想买个手机', '这里是发帖内容，这里可以有个圈子交流', '113', '小凤', '2020-04-01 09:20:31', 'e985863d-ee42-4071-8825-127284ae21ce.jpg', '求购');

-- ----------------------------
-- Table structure for wct_replay
-- ----------------------------
DROP TABLE IF EXISTS `wct_replay`;
CREATE TABLE `wct_replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_replay
-- ----------------------------
INSERT INTO `wct_replay` VALUES ('37', '16', '可以再便宜不', '109', '波仔', '2020-04-01 19:44:10');
INSERT INTO `wct_replay` VALUES ('38', '11', '交流回复', '59', 'admin', '2020-04-01 21:03:47');
INSERT INTO `wct_replay` VALUES ('39', '16', '这里可以交流', '110', '三匹', '2020-04-01 21:26:20');
INSERT INTO `wct_replay` VALUES ('42', '26', '你好', '59', 'admin', '2020-04-01 20:34:33');
INSERT INTO `wct_replay` VALUES ('43', '26', '呵呵呵', '59', 'admin', '2020-04-01 20:35:09');
INSERT INTO `wct_replay` VALUES ('44', '16', '这里可以相互交流', '111', '波仔', '2020-04-01 08:54:48');
INSERT INTO `wct_replay` VALUES ('45', '26', '这里可以卖家沟通', '113', '小凤', '2020-04-01 09:17:33');
INSERT INTO `wct_replay` VALUES ('46', '1', '可以相互回复交流', '113', '小凤', '2020-04-01 09:20:42');

-- ----------------------------
-- Table structure for wct_shop
-- ----------------------------
DROP TABLE IF EXISTS `wct_shop`;
CREATE TABLE `wct_shop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_shop
-- ----------------------------
INSERT INTO `wct_shop` VALUES ('26', '重庆', null, null, null, null, null, null, null, null);
INSERT INTO `wct_shop` VALUES ('27', '深圳', null, null, null, null, null, null, '59', null);
INSERT INTO `wct_shop` VALUES ('28', '成都', null, null, null, null, null, null, '59', null);

-- ----------------------------
-- Table structure for wct_type
-- ----------------------------
DROP TABLE IF EXISTS `wct_type`;
CREATE TABLE `wct_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_type
-- ----------------------------
INSERT INTO `wct_type` VALUES ('1', '电子产品', null);
INSERT INTO `wct_type` VALUES ('6', '文体用品', null);
INSERT INTO `wct_type` VALUES ('14', '生活用品', null);
INSERT INTO `wct_type` VALUES ('15', '其他', null);
INSERT INTO `wct_type` VALUES ('16', '服装', null);

-- ----------------------------
-- Table structure for wct_user
-- ----------------------------
DROP TABLE IF EXISTS `wct_user`;
CREATE TABLE `wct_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `roletype` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_user
-- ----------------------------
INSERT INTO `wct_user` VALUES ('59', 'admin', 'admin', '1', '', '6栋120', '15123385885', '543548596', '', null, '', null, null, '29.500297', '106.64442799999999', null);
INSERT INTO `wct_user` VALUES ('96', 'admin2', '1', '1', null, null, null, null, null, null, null, null, null, '29.595428', '106.229918', null);
INSERT INTO `wct_user` VALUES ('97', 'bozai', '2', '2', '', '重庆璧山皮革一路', '18602394120', '543548596', '955455', '男', '2016-01-10', 'photo1.jpg', null, '39.904581666666665', '116.40062666666667', null);
INSERT INTO `wct_user` VALUES ('98', 'bozai2', '1', '2', '', '重庆璧山', '15123385885', '', '', '男', '', 'photo2.jpg', null, '29.595428', '106.218918', null);
INSERT INTO `wct_user` VALUES ('100', 'wangbo', '1', '2', '', '我的地址必须', '15123385885', '54354856', '4949946', '男', '2012-01-18', 'photo4.jpg', null, '29.500297', '106.64442799999999', null);
INSERT INTO `wct_user` VALUES ('101', 'bozai5', '2', '2', 'idwabovo@126.xom', '这里是我的地址', '15123385885', '54354566', '', '男', '1991-01-18', 'photo3.jpg', null, '29.595428', '106.228818', null);
INSERT INTO `wct_user` VALUES ('103', 'admin2', '1', '1', null, null, null, null, null, null, null, null, null, '29.595428', '106.228918', null);
INSERT INTO `wct_user` VALUES ('105', 'wangbo2', '1', '2', '', 'my addres', '15123385885', '543548596', '', '男', '', null, null, null, null, null);
INSERT INTO `wct_user` VALUES ('107', 'bozai3', '111', '2', '', '我的而知', '15123385885', '543548596', '', '男', '2012-04-09', null, null, '29.595364', '106.229031', null);
INSERT INTO `wct_user` VALUES ('108', 'admin10', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wct_user` VALUES ('111', '波仔', '111111', '2', '', '重庆璧山区', '15123385885', '', '', '男', '', null, null, '29.595309', '106.228943', null);
INSERT INTO `wct_user` VALUES ('112', '波仔', '111111', '2', '', '重庆璧山区', '15123385885', '', '', '男', '', null, null, null, null, null);
INSERT INTO `wct_user` VALUES ('113', '小凤', '123456', '2', '', '重庆璧山区', '15123385885', '', '', '女', '2004-03-09', null, null, '29.595309', '106.228943', null);
INSERT INTO `wct_user` VALUES ('114', '安安', '111111', '2', '', '重庆璧山区', '15123385885', '', '', '男', '', null, null, null, null, '500');
INSERT INTO `wct_user` VALUES ('115', '1111', '1111', '2', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for wct_vip
-- ----------------------------
DROP TABLE IF EXISTS `wct_vip`;
CREATE TABLE `wct_vip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qq` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `wname` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_vip
-- ----------------------------
