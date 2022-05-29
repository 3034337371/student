/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : eims

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 29/05/2022 12:43:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `clientName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '姓名',
  `clientTelephone` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '电话',
  `clientAddress` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '班级',
  `clientEmail` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '邮箱'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('卢海龙', '123456', '软件技术4班', '123456@163.com');
INSERT INTO `client` VALUES ('王新宇', '112233', '软件技术4班', '112233@163.com');
INSERT INTO `client` VALUES ('陈宇', '224466', '软件技术4班', '224466@163.com');
INSERT INTO `client` VALUES ('谢诗晗', '123321', '软件技术4班', '123321@qq.com');
INSERT INTO `client` VALUES ('许静涵', '445566', '软件技术4班', '445566@qq.com');
INSERT INTO `client` VALUES ('翟美华', '666666', '软件技术4班', '666666@qq.com');
INSERT INTO `client` VALUES ('任龙', '666888', '软件技术4班', '666888@qq.com');
INSERT INTO `client` VALUES ('邱安琪', '888888', '软件技术4班', '888888@163.com');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `clientName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `contactName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '班级',
  `contactContents` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学院',
  `contactStart` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学校',
  `contactEnd` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '收缴学费',
  `StaffName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '辅导员'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('卢海龙', '软件技术4班', '信息工程学院', '郑州工业应用技术学院', '是', '范刘丹');
INSERT INTO `contact` VALUES ('王新宇', '软件技术4班', '信息工程学院', '郑州工业应用技术学院', '是', '范刘丹');
INSERT INTO `contact` VALUES ('陈宇', '软件技术4班', '信息工程学院', '郑州工业应用技术学院', '是', '范刘丹');
INSERT INTO `contact` VALUES ('谢诗晗', '软件技术4班', '信息工程学院', '郑州工业应用技术学院', '是', '范刘丹');
INSERT INTO `contact` VALUES ('许静涵', '软件技术4班', '信息工程学院', '郑州工业应用技术学院', '是', '范刘丹');
INSERT INTO `contact` VALUES ('翟美华', '软件技术4班', '信息工程学院', '郑州工业应用技术学院', '是', '范刘丹');

-- ----------------------------
-- Table structure for cs
-- ----------------------------
DROP TABLE IF EXISTS `cs`;
CREATE TABLE `cs`  (
  `clientName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `clientOpinion` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '反馈意见',
  `StaffName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '班委'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs
-- ----------------------------
INSERT INTO `cs` VALUES ('任龙', '上课老是有人说话', '杨贵钦');
INSERT INTO `cs` VALUES ('卢海龙', '作业太难', '邱安琪');
INSERT INTO `cs` VALUES ('任龙', '作业留的太多了', '邱安琪');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `productModel` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学生性别',
  `productNumber` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学生年龄',
  `productPrice` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '兴趣爱好'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('任龙', '男', '19', '王者荣耀、光遇、Web前端设计');
INSERT INTO `product` VALUES ('卢海龙', '男', '19', '王者荣耀、光遇、Java程序设计');
INSERT INTO `product` VALUES ('王新宇', '男', '19', '王者荣耀、和平精英、Python程序设计');
INSERT INTO `product` VALUES ('邱安琪', '男', '20', '王者荣耀、和平精英、Java程序设计');
INSERT INTO `product` VALUES ('陈宇', '女', '19', '王者荣耀、和平精英、Web前端设计');
INSERT INTO `product` VALUES ('谢诗晗', '女', '19', '王者荣耀、和平精英、Web前端设计');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `staffName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '姓名',
  `staffSex` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '性别',
  `staffAge` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '年龄',
  `staffEducation` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学历',
  `staffDepartment` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '班级',
  `staffDate` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '入学时间',
  `staffDuty` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '职务',
  `staffWage` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '政治面貌'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('陈宇', '女', '19', '专科', '软件技术4班', '2020年9月28日', '组长', '共青团员');
INSERT INTO `staff` VALUES ('卢海龙', '男', '19', '专科', '软件技术4班', '2020年9月28日', '副组长', '共青团员');
INSERT INTO `staff` VALUES ('王新宇', '男', '19', '专科', '软件技术4班', '2020年9月28日', '组员', '共青团员');
INSERT INTO `staff` VALUES ('翟美华', '女', '19', '专科', '软件技术4班', '2020年9月28日', '组员', '共青团员');
INSERT INTO `staff` VALUES ('谢诗晗', '女', '19', '专科', '软件技术4班', '2020年9月28日 ', '组员', '共青团员');
INSERT INTO `staff` VALUES ('许静涵', '女', '19', '专科', '软件技术4班', '2020年9月28日', '组员', '共青团员');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userName` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `password` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '管理员密码'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', '123');
INSERT INTO `user` VALUES ('1234', '1234');
INSERT INTO `user` VALUES ('123456', '123456');

SET FOREIGN_KEY_CHECKS = 1;
