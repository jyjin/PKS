/*
 Navicat Premium Data Transfer

 Source Server         : DB-local
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost
 Source Database       : PKS

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : utf-8

 Date: 01/16/2018 14:47:49 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `parking_car`
-- ----------------------------
DROP TABLE IF EXISTS `parking_car`;
CREATE TABLE `parking_car` (
  `id` bigint(20) NOT NULL,
  `carNo` varchar(20) NOT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `ownerPhone` varchar(20) DEFAULT NULL,
  `driverPhone` varchar(20) DEFAULT NULL,
  `typeId` bigint(20) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seatId` bigint(20) DEFAULT NULL,
  `reserveId` bigint(20) DEFAULT NULL,
  `startTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `endTime` datetime DEFAULT NULL,
  `startTimeReserve` datetime DEFAULT NULL,
  `endTimeReserve` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_car_leave`
-- ----------------------------
DROP TABLE IF EXISTS `parking_car_leave`;
CREATE TABLE `parking_car_leave` (
  `id` bigint(20) NOT NULL,
  `carNo` varchar(20) NOT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `ownerPhone` varchar(20) DEFAULT NULL,
  `driverPhone` varchar(20) DEFAULT NULL,
  `typeId` bigint(20) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seatId` bigint(20) DEFAULT NULL,
  `reserveId` bigint(20) DEFAULT NULL,
  `startTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_car_reserve`
-- ----------------------------
DROP TABLE IF EXISTS `parking_car_reserve`;
CREATE TABLE `parking_car_reserve` (
  `id` bigint(20) NOT NULL,
  `carNo` varchar(20) NOT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `ownerPhone` varchar(20) DEFAULT NULL,
  `driverPhone` varchar(20) DEFAULT NULL,
  `typeId` bigint(20) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seatId` bigint(20) DEFAULT NULL,
  `reserveId` bigint(20) DEFAULT NULL,
  `startTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_lot`
-- ----------------------------
DROP TABLE IF EXISTS `parking_lot`;
CREATE TABLE `parking_lot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `caseNo` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `seatSize` bigint(20) NOT NULL,
  `owner` varchar(256) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_manager`
-- ----------------------------
DROP TABLE IF EXISTS `parking_manager`;
CREATE TABLE `parking_manager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `age` int(1) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `roleId` int(3) DEFAULT '1',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_manager_role`
-- ----------------------------
DROP TABLE IF EXISTS `parking_manager_role`;
CREATE TABLE `parking_manager_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(256) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_price`
-- ----------------------------
DROP TABLE IF EXISTS `parking_price`;
CREATE TABLE `parking_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hourPrice` decimal(20,2) DEFAULT NULL,
  `dayPrice` decimal(20,2) DEFAULT NULL,
  `customPriceId` bigint(20) DEFAULT NULL,
  `parkingLotId` bigint(20) NOT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seatTypeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_price_in_custom`
-- ----------------------------
DROP TABLE IF EXISTS `parking_price_in_custom`;
CREATE TABLE `parking_price_in_custom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start` bigint(20) DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_reserve`
-- ----------------------------
DROP TABLE IF EXISTS `parking_reserve`;
CREATE TABLE `parking_reserve` (
  `id` bigint(20) NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `startTimeReal` datetime DEFAULT NULL,
  `endTimeReal` datetime DEFAULT NULL,
  `seatId` bigint(20) DEFAULT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_seat`
-- ----------------------------
DROP TABLE IF EXISTS `parking_seat`;
CREATE TABLE `parking_seat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `seatNum` varchar(256) NOT NULL,
  `statusId` int(11) DEFAULT '1',
  `typeId` int(11) DEFAULT '1',
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parkingLotId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `parking_seat`
-- ----------------------------
BEGIN;
INSERT INTO `parking_seat` VALUES ('1', 'A101', '1', '1', 'A区小型车位', '2018-01-12 11:02:25', '0'), ('2', 'A102', '1', '1', 'A区小型车位', '2018-01-12 16:15:33', '0'), ('3', 'A103', '1', '1', 'A区小型车位', '2018-01-12 16:16:13', '0');
COMMIT;

-- ----------------------------
--  Table structure for `parking_seat_status_dict`
-- ----------------------------
DROP TABLE IF EXISTS `parking_seat_status_dict`;
CREATE TABLE `parking_seat_status_dict` (
  `id` bigint(20) DEFAULT NULL,
  `statusName` varchar(256) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `parking_seat_type_dict`
-- ----------------------------
DROP TABLE IF EXISTS `parking_seat_type_dict`;
CREATE TABLE `parking_seat_type_dict` (
  `id` bigint(20) NOT NULL,
  `typeName` varchar(256) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
