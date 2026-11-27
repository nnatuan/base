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

 Date: 20/11/2026 14:31:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_torder
-- ----------------------------
DROP TABLE IF EXISTS `base_torder`;
CREATE TABLE `base_torder`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccode_vtp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_customer` int NULL DEFAULT NULL,
  `nid_order_status` int NULL DEFAULT NULL,
  `nid_ship_type` int NULL DEFAULT NULL,
  `cfullname` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `caddress` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `caddress_full` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cphone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cemail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ddate_delivery` date NULL DEFAULT NULL,
  `cnote` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cadmin_note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT 0,
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
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_torder
-- ----------------------------
INSERT INTO `base_torder` VALUES (1, 'DH2611202838', NULL, NULL, 1, NULL, 'Tuấn', '291, Lê Văn Quới, P.Bình Trị Đông', NULL, '0945769112', NULL, NULL, 'test', NULL, 1, NULL, '585000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-20', '13:55:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `base_torder` VALUES (2, 'DH2611209184', NULL, NULL, 1, NULL, 'Tuấn', 'Số 40 Đường Hồng Bàng, phường Gia Định, Thành Phố Hồ Chí Minh', NULL, '1234567891', NULL, NULL, 'test', NULL, 1, NULL, '1475000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-20', '14:29:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for base_torder_detail
-- ----------------------------
DROP TABLE IF EXISTS `base_torder_detail`;
CREATE TABLE `base_torder_detail`  (
  `nid_product` int NOT NULL AUTO_INCREMENT,
  `nid_order` int NOT NULL,
  `nquantity` int NULL DEFAULT NULL,
  `cprice` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cprice_sale` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cflash_sale` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niscolor` int NOT NULL DEFAULT 0,
  `cmua_kem` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  PRIMARY KEY (`nid_product`, `nid_order`, `niscolor`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_torder_detail
-- ----------------------------
INSERT INTO `base_torder_detail` VALUES (2, 1, 2, '210000', '210000', NULL, 0, '0');
INSERT INTO `base_torder_detail` VALUES (4, 1, 1, '165000', '165000', NULL, 0, '0');
INSERT INTO `base_torder_detail` VALUES (4, 2, 1, '165000', '165000', NULL, 0, '0');
INSERT INTO `base_torder_detail` VALUES (3, 2, 1, '225000', '225000', NULL, 0, '0');
INSERT INTO `base_torder_detail` VALUES (1, 2, 1, '185000', '185000', NULL, 0, '0');
INSERT INTO `base_torder_detail` VALUES (7, 2, 2, '450000', '450000', NULL, 0, '0');

SET FOREIGN_KEY_CHECKS = 1;
