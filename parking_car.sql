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

 Date: 01/16/2018 14:33:27 PM
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
