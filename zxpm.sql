/*
Navicat MySQL Data Transfer

Source Server         : sel
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : zxpm

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-02-08 18:45:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bid
-- ----------------------------
DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
  `BidId` int(4) NOT NULL AUTO_INCREMENT,
  `GoodsId` int(4) NOT NULL,
  `BuyerId` int(4) NOT NULL,
  `BidTime` datetime NOT NULL,
  `BidPrice` float NOT NULL,
  `BidStatus` int(4) NOT NULL,
  PRIMARY KEY (`BidId`),
  KEY `FK_bid_buyer` (`BuyerId`),
  KEY `FK_bid_goods` (`GoodsId`),
  CONSTRAINT `FK_bid_buyer` FOREIGN KEY (`BuyerId`) REFERENCES `users` (`UserID`),
  CONSTRAINT `FK_bid_goods` FOREIGN KEY (`GoodsId`) REFERENCES `goods` (`GoodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bid
-- ----------------------------
INSERT INTO `bid` VALUES ('1', '4', '1', '2008-07-27 03:59:23', '1400', '0');
INSERT INTO `bid` VALUES ('2', '4', '2', '2008-07-27 07:53:45', '1500', '0');
INSERT INTO `bid` VALUES ('3', '4', '3', '2008-07-27 07:57:59', '1600', '0');
INSERT INTO `bid` VALUES ('4', '4', '7', '2008-07-27 07:59:51', '1700', '1');
INSERT INTO `bid` VALUES ('5', '4', '2', '2008-07-27 08:00:22', '1800', '0');
INSERT INTO `bid` VALUES ('6', '4', '2', '2008-07-27 08:00:32', '1800', '0');
INSERT INTO `bid` VALUES ('7', '4', '1', '2008-07-27 08:12:42', '1900', '0');
INSERT INTO `bid` VALUES ('8', '3', '1', '2008-07-27 08:18:02', '1750', '0');
INSERT INTO `bid` VALUES ('9', '3', '7', '2008-07-27 08:36:31', '1840', '0');
INSERT INTO `bid` VALUES ('10', '3', '3', '2008-07-27 10:34:40', '1900', '0');
INSERT INTO `bid` VALUES ('11', '3', '2', '2008-07-29 08:32:11', '1700', '0');
INSERT INTO `bid` VALUES ('12', '3', '7', '2008-07-29 08:36:02', '1701', '0');
INSERT INTO `bid` VALUES ('13', '3', '1', '2008-07-29 08:38:30', '1701', '0');
INSERT INTO `bid` VALUES ('14', '5', '2', '2016-01-23 22:49:03', '1001', '0');
INSERT INTO `bid` VALUES ('15', '6', '1', '2016-01-25 23:48:29', '200000', '1');
INSERT INTO `bid` VALUES ('16', '5', '7', '2016-01-27 20:18:17', '5000', '0');
INSERT INTO `bid` VALUES ('17', '3', '7', '2016-01-27 20:29:10', '100', '0');
INSERT INTO `bid` VALUES ('18', '9', '2', '2016-01-27 20:31:19', '1000000', '0');
INSERT INTO `bid` VALUES ('19', '8', '2', '2016-01-27 20:31:34', '58', '0');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `GoodsId` int(4) NOT NULL AUTO_INCREMENT,
  `GoodsName` varchar(16) NOT NULL,
  `GoodsPrice` float NOT NULL,
  `GoodsPic` varchar(200) DEFAULT NULL,
  `GoodsDesc` mediumtext,
  `SalerId` int(4) NOT NULL,
  `BuyerId` int(4) NOT NULL,
  `GoodsStatus` int(4) NOT NULL,
  PRIMARY KEY (`GoodsId`),
  KEY `FK_goods_buyer` (`BuyerId`),
  KEY `FK_goods_saler` (`SalerId`),
  CONSTRAINT `FK_goods_buyer` FOREIGN KEY (`BuyerId`) REFERENCES `users` (`UserID`),
  CONSTRAINT `FK_goods_saler` FOREIGN KEY (`SalerId`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', '电冰箱', '1500', 'M10_2.PNG', '制冷效果好，省电', '2', '3', '0');
INSERT INTO `goods` VALUES ('4', 'cc', '1200', 'M10.PNG', 'cc', '3', '7', '1');
INSERT INTO `goods` VALUES ('5', 'test', '1000', 'M36.JPG', '测试', '1', '2', '0');
INSERT INTO `goods` VALUES ('6', 'M7中型坦克', '10000', 'M7.PNG', '美式M7中型坦克', '3', '1', '1');
INSERT INTO `goods` VALUES ('8', 'Spring攻略', '57', '1601261611527053.PNG', 'spring学习书籍', '7', '7', '0');
INSERT INTO `goods` VALUES ('9', '地球', '1000000', '1601261632188204.jpg', '地球', '7', '7', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserID` int(4) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(16) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Telephone` varchar(16) NOT NULL,
  `Address` varchar(16) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'aa', 'aa', 'aa', 'aa');
INSERT INTO `users` VALUES ('2', 'bb', 'bb', 'bb', 'bb');
INSERT INTO `users` VALUES ('3', 'cc', 'cc', 'cc', 'cc');
INSERT INTO `users` VALUES ('7', 'admin', 'admin', '12306', '北京天安门');
