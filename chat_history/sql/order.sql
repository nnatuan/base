/*
 Navicat Premium Dump SQL

 Source Server         : TUAN
 Source Server Type    : MySQL
 Source Server Version : 100419 (10.4.19-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : base

 Target Server Type    : MySQL
 Target Server Version : 100419 (10.4.19-MariaDB)
 File Encoding         : 65001

 Date: 20/11/2026
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_torder_status
-- ----------------------------
DROP TABLE IF EXISTS `base_torder_status`;
CREATE TABLE `base_torder_status`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `corder_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cindex` int NULL DEFAULT 1,
  `nstatus` int NULL DEFAULT 1,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_torder_status
-- ----------------------------
INSERT INTO `base_torder_status` (`nid`, `ccode`, `corder_status`, `cnote`, `cindex`, `nstatus`) VALUES
(1, 'tiep-nhan', 'Mới tiếp nhận', 'Đơn hàng mới tạo từ website', 1, 1),
(2, 'dang-xu-ly', 'Đang xử lý / Đóng gói', 'Đang chuẩn bị hàng', 2, 1),
(3, 'dang-giao', 'Đang giao hàng', 'Đã gửi cho bưu tá / tự giao', 3, 1),
(4, 'hoan-thanh', 'Đã giao / Hoàn tất', 'Khách đã nhận và thanh toán', 4, 1),
(5, 'huy-don', 'Đã hủy', 'Đơn hàng đã bị hủy', 5, 1);

-- ----------------------------
-- Table structure for base_torder
-- ----------------------------
DROP TABLE IF EXISTS `base_torder`;
CREATE TABLE `base_torder`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccode_vtp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_customer` int NULL DEFAULT NULL,
  `nid_order_status` int NULL DEFAULT 1,
  `nid_ship_type` int NULL DEFAULT NULL,
  `cfullname` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `caddress` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `caddress_full` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cphone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cemail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ddate_delivery` date NULL DEFAULT NULL,
  `cnote` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cadmin_note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT 1,
  `cflash` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ntotal` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nsale` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cship` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctime` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cgiam_gia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctime01` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `nid_code_sale` int NULL DEFAULT NULL,
  `ctime_search` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_province` int NULL DEFAULT NULL,
  `nid_district` int NULL DEFAULT NULL,
  `nid_ward` int NULL DEFAULT NULL,
  `cshop` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccode_sale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_prize` int NULL DEFAULT NULL,
  `cname_prize` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `utm_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nid_member` int NULL DEFAULT NULL,
  `ctype` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `ctime_giao_hang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cmethod` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `vnp_TmnCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_Amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_BankCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_BankTranNo` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_CardType` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_PayDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_OrderInfo` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_TransactionNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_ResponseCode` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_TransactionStatus` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_TxnRef` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_SecureHashType` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vnp_SecureHash` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `csite` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cin_hoa_don` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cvoucher` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `caddress_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for base_torder_detail
-- ----------------------------
DROP TABLE IF EXISTS `base_torder_detail`;
CREATE TABLE `base_torder_detail`  (
  `nid_product` int NOT NULL,
  `nid_order` int NOT NULL,
  `nquantity` int NULL DEFAULT 1,
  `cprice` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cprice_sale` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cflash_sale` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niscolor` int NOT NULL DEFAULT 0,
  `cmua_kem` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  PRIMARY KEY (`nid_product`, `nid_order`, `niscolor`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
