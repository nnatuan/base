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

 Date: 16/11/2026 12:02:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_taccess
-- ----------------------------
DROP TABLE IF EXISTS `base_taccess`;
CREATE TABLE `base_taccess`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccontroller` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cfunction` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `nid_group` int NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_taccess
-- ----------------------------
INSERT INTO `base_taccess` VALUES (1, 'Xem DS cấu hình', 'do_config_listview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `base_taccess` VALUES (2, 'Thêm cấu hình', 'do_config', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `base_taccess` VALUES (3, 'Sửa cấu hình', 'do_config', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `base_taccess` VALUES (4, 'Xem DS người dùng', 'do_employee_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `base_taccess` VALUES (5, 'Thêm người dùng', 'do_employee', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `base_taccess` VALUES (6, 'Sửa người dùng', 'do_employee', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `base_taccess` VALUES (7, 'Xem DS slider', 'do_banner_images_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `base_taccess` VALUES (8, 'Thêm slider', 'do_banner_images', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `base_taccess` VALUES (9, 'Sửa slider', 'do_banner_images', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `base_taccess` VALUES (10, 'Xem DS module', 'do_module_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `base_taccess` VALUES (11, 'Thêm module', 'do_module', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `base_taccess` VALUES (12, 'Sửa module', 'do_module', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `base_taccess` VALUES (13, 'Xem DS bài viết', 'do_article_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO `base_taccess` VALUES (14, 'Thêm bài viết', 'do_article', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO `base_taccess` VALUES (15, 'Sửa bài viết', 'do_article', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO `base_taccess` VALUES (16, 'Xem DS tin tức', 'do_news_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO `base_taccess` VALUES (17, 'Thêm tin tức', 'do_news', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO `base_taccess` VALUES (18, 'Sửa tin tức', 'do_news', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO `base_taccess` VALUES (19, 'Xem DS nhóm SP', 'do_cat_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `base_taccess` VALUES (20, 'Thêm nhóm SP', 'do_cat_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `base_taccess` VALUES (21, 'Sửa nhóm SP', 'do_cat_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `base_taccess` VALUES (22, 'Xem DS sản phẩm', 'do_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO `base_taccess` VALUES (23, 'Thêm sản phẩm', 'do_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO `base_taccess` VALUES (24, 'Sửa sản phẩm', 'do_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO `base_taccess` VALUES (25, 'Xóa người dùng', 'do_employee_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `base_taccess` VALUES (26, 'Xóa slider', 'do_banner_images_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `base_taccess` VALUES (27, 'Xóa module', 'do_module_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `base_taccess` VALUES (29, 'Xóa tin tức', 'do_news_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO `base_taccess` VALUES (28, 'Xóa bài viết', 'do_article_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO `base_taccess` VALUES (30, 'Xóa nhóm SP', 'do_cat_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `base_taccess` VALUES (31, 'Xóa sản phẩm', 'do_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO `base_taccess` VALUES (32, 'Xem đơn hàng', 'do_order_listview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO `base_taccess` VALUES (33, 'Cập nhật đơn hàng', 'do_order_listview', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO `base_taccess` VALUES (35, 'Xem DS phân loại SP', 'do_material_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO `base_taccess` VALUES (36, 'Thêm phân loại SP', 'do_material_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO `base_taccess` VALUES (37, 'Sửa phân loại SP', 'do_material_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO `base_taccess` VALUES (38, 'Xem DS thương hiệu', 'do_brand_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO `base_taccess` VALUES (39, 'Thêm thương hiệu', 'do_brand_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO `base_taccess` VALUES (40, 'Sửa thương hiệu', 'do_brand_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO `base_taccess` VALUES (41, 'Xem DS mã giảm giá', 'do_code_sale_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO `base_taccess` VALUES (42, 'Thêm mã giảm giá', 'do_code_sale', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO `base_taccess` VALUES (43, 'Sửa mã giảm giá', 'do_code_sale', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO `base_taccess` VALUES (44, 'Xóa mã giảm giá', 'do_code_sale', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO `base_taccess` VALUES (45, 'Xóa thương hiệu', 'do_brand_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO `base_taccess` VALUES (46, 'Xóa phân loại SP', 'do_material_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 10);

-- ----------------------------
-- Table structure for base_tarticle
-- ----------------------------
DROP TABLE IF EXISTS `base_tarticle`;
CREATE TABLE `base_tarticle`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_type` int NULL DEFAULT NULL,
  `ctitle` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eng_ctitle` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alwcmt` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cshort_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `eng_cshort_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `ccontent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `eng_ccontent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cimage_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctype` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cishome` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cno_delete` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `dtime02` time NULL DEFAULT NULL,
  `dtime01` time NULL DEFAULT NULL,
  `cproduct` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tarticle
-- ----------------------------
INSERT INTO `base_tarticle` VALUES (1, NULL, 'Giới thiệu', '', '', '', '', '', '\r\n<p>Updating...</p>\r\n<script data-ts=\"1794801917666\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', '', '1', 0, NULL, NULL, '', '', 1, 1, '2026-11-16', '2026-11-16', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_tbanner_images
-- ----------------------------
DROP TABLE IF EXISTS `base_tbanner_images`;
CREATE TABLE `base_tbanner_images`  (
  `ccode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cbanner_images` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ctag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cimage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cnote` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `cview` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nid_loc_banner` int NULL DEFAULT NULL,
  `cimage_mobile` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nid` int NOT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of base_tbanner_images
-- ----------------------------

-- ----------------------------
-- Table structure for base_tbrand_products
-- ----------------------------
DROP TABLE IF EXISTS `base_tbrand_products`;
CREATE TABLE `base_tbrand_products`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_material_products` int NULL DEFAULT NULL,
  `nid_cat_products` int NULL DEFAULT NULL,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbrand_products` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` int NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `cbanner` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tbrand_products
-- ----------------------------

-- ----------------------------
-- Table structure for base_tcat_news
-- ----------------------------
DROP TABLE IF EXISTS `base_tcat_news`;
CREATE TABLE `base_tcat_news`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_section_news` int NULL DEFAULT NULL,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccat_news` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nspecial` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tcat_news
-- ----------------------------
INSERT INTO `base_tcat_news` VALUES (1, 6, 'tin-tuc', 'Tin tức', '', NULL, NULL, '', 1, '1', 1, 1, '2024-09-06', '2025-02-12');
INSERT INTO `base_tcat_news` VALUES (2, 6, 'dich-vu-thi-cong', 'Dịch vụ thi công keo chà ron', 'service', '1', 'fa-helmet-safety', 'Nhóm dịch vụ thi công keo chà ron gạch chuyên nghiệp', 1, '2', 1, 1, '2024-09-06', '2025-04-03');
INSERT INTO `base_tcat_news` VALUES (3, 6, 'hinh-anh-video-thuc-te', 'Hình ảnh & Video thực tế', 'ugc', '1', 'fa-video', 'Cận cảnh công trình thực tế và video hướng dẫn thi công', 1, '3', 1, 1, '2024-10-18', '2024-10-18');
INSERT INTO `base_tcat_news` VALUES (4, 6, 'khach-hang-noi-gi', 'Khách hàng nói gì', 'testimonial', '1', 'fa-heart', 'Cảm nhận và đánh giá thực tế từ gia chủ, chủ thầu', 1, '4', 1, 1, '2024-10-18', '2024-10-18');
INSERT INTO `base_tcat_news` VALUES (5, 6, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', 'faq', '1', 'fa-circle-question', 'Giải đáp thắc mắc về vật tư và dịch vụ thi công', 1, '5', 1, 1, '2024-10-18', '2025-02-03');

-- ----------------------------
-- Table structure for base_tcat_products
-- ----------------------------
DROP TABLE IF EXISTS `base_tcat_products`;
CREATE TABLE `base_tcat_products`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_material_products` int NULL DEFAULT NULL,
  `ccode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccat_products` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `eng_ccat_products` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT 1,
  `cindex` int NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT 1,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT '2026-09-16',
  `ddate02` date NULL DEFAULT NULL,
  `cproduct_fb` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `fb_cdescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nspecial` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbanner1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbanner2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbanner3` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tcat_products
-- ----------------------------
INSERT INTO `base_tcat_products` VALUES (1, 1, 'keo-ron-epoxy', 'Keo Ron Epoxy 2 Thành Phần', NULL, 'epoxy', 'fa-fill-drip', 'Nhóm keo chà ron Epoxy 2 thành phần chống thấm, chống nấm mốc', 1, 1, 1, NULL, '2026-11-16', NULL, NULL, NULL, '1', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (2, 2, 'dung-cu-thi-cong', 'Công Cụ & Dụng Cụ Thi Công', NULL, 'tools', 'fa-toolbox', 'Nhóm dụng cụ máy móc chuyên dụng hỗ trợ thi công nạo vét và chà ron', 1, 2, 1, NULL, '2026-11-16', NULL, NULL, NULL, '1', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (3, 1, 'keo-ron-anh-kim-tuyen', 'Keo Ron Ánh Kim Tuyến', NULL, 'epoxy', 'fa-gem', 'Keo chà ron ánh nhũ kim tuyến vàng/bạc cho biệt thự căn hộ cao cấp', 1, 3, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (4, 2, 'sung-ban-keo-2-thanh-phan', 'Súng Bắn Keo 2 Thành Phần', NULL, 'tools', 'fa-gun', 'Súng bắn keo trợ lực đôi hợp kim thép sơn tĩnh điện', 1, 4, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (5, 2, 'voi-tron-keo-xoan-oc', 'Vòi Trộn Keo Xoắn Ốc', NULL, 'tools', 'fa-tornado', 'Vòi trộn xoắn tự động 24 tầng hòa trộn keo tỷ lệ 1:1', 1, 5, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (6, 2, 'bi-cau-miet-ve-ron', 'Bi Cầu Miết Vê Ron', NULL, 'tools', 'fa-circle-dot', 'Bộ bi cầu thép mạ crom miết ép mạch ron cong mịn bóng', 1, 6, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (7, 2, 'dao-sui-vit-cao-ron', 'Dao Sủi & Vít Cạo Ron', NULL, 'tools', 'fa-screwdriver-wrench', 'Dao cạo sủi ron keo thừa và vít cạo ron xi măng cũ', 1, 7, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (8, 2, 'may-cat-ron-mini', 'Máy Cắt Ron Mini', NULL, 'tools', 'fa-compact-disc', 'Máy cắt mạch ron mini hút bụi không ồn không bụi mẻ gạch', 1, 8, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tcat_products` VALUES (9, 3, 'dich-vu-thi-cong-tron-goi', 'Dịch Vụ Thi Công Trọn Gói', NULL, 'service', 'fa-helmet-safety', 'Nhận thi công trọn gói nhà ở dân dụng biệt thự căn hộ', 1, 9, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_tcolor
-- ----------------------------
DROP TABLE IF EXISTS `base_tcolor`;
CREATE TABLE `base_tcolor`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_product` int NULL DEFAULT NULL,
  `cname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `fprice` float(12, 0) NULL DEFAULT NULL,
  `fprice_sale` float(12, 0) NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` int NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `ccode_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cdescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nremain` int NULL DEFAULT NULL,
  `cbarcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tcolor
-- ----------------------------

-- ----------------------------
-- Table structure for base_tconfig
-- ----------------------------
DROP TABLE IF EXISTS `base_tconfig`;
CREATE TABLE `base_tconfig`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cvalue` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` datetime NULL DEFAULT NULL,
  `ddate02` datetime NULL DEFAULT NULL,
  `cimage` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT 1,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tconfig
-- ----------------------------
INSERT INTO `base_tconfig` VALUES (1, '123', 'email contact page', 'lienhe@basc.vn', '', 713, 1, '2024-06-24 00:00:00', '2026-11-12 10:21:36', NULL, 1);
INSERT INTO `base_tconfig` VALUES (2, 'fds', 'meta keyword global', 'basc, keo cha ron, keo cha ron epoxy, vat tu ron gach, thi cong ron gach, cha ron chong tham, keo dan gach', '', 741, 1, '2010-01-30 00:00:00', '2026-11-12 10:21:36', NULL, 1);
INSERT INTO `base_tconfig` VALUES (3, 'gfd', 'title global', 'BASC – Chuyên Vật Tư & Thi Công Ron Gạch Cao Cấp', '', 741, 1, '2010-01-23 00:00:00', '2026-11-12 10:21:36', NULL, 1);
INSERT INTO `base_tconfig` VALUES (4, NULL, 'meta description global', 'BASC chuyên cung cấp keo chà ron Epoxy 2 thành phần, dụng cụ ốp lát và dịch vụ thi công ron gạch chống thấm, chống nấm mốc, bảo hành 10 năm.', '', 746, 1, '2011-05-18 00:00:00', '2026-11-12 10:21:36', NULL, 1);
INSERT INTO `base_tconfig` VALUES (7, NULL, 'Image FB', 'logo_20261116050613.svg', '', 1, 1, '2020-11-13 00:00:00', '2026-11-16 00:00:00', 'logo_20261116050613.svg', 1);
INSERT INTO `base_tconfig` VALUES (8, NULL, 'Image logo', 'logo.svg', '', 1, 1, '2021-07-09 00:00:00', '2026-11-16 00:00:00', 'logo.svg', 1);
INSERT INTO `base_tconfig` VALUES (9, NULL, 'Link FB', 'https://www.facebook.com/basc.rongach', '', 1, 1, '2021-08-24 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (11, NULL, 'Link GG', 'https://maps.google.com/?q=TP.HCM', '', 1, 1, '2021-08-24 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (12, NULL, 'Hotline', '0909 688 810', '', 1, 1, '2021-09-13 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (14, NULL, 'Link Shopee', '#', '', 1, 1, '2021-09-14 00:00:00', '2026-11-12 17:20:00', '', 1);
INSERT INTO `base_tconfig` VALUES (15, NULL, 'Link Tiktok', '#', '', 1, 1, '2022-10-27 00:00:00', '2026-11-12 17:20:00', '', 1);
INSERT INTO `base_tconfig` VALUES (16, NULL, 'Link Lazada', '#', '', 1, 1, '2023-04-24 00:00:00', '2026-11-12 17:20:00', '', 1);
INSERT INTO `base_tconfig` VALUES (17, NULL, 'Link chat Zalo', 'https://zalo.me/0909688810', '', 1, 1, '2023-04-25 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (19, NULL, 'Chat Messenger', '#', '', 1, 1, '2024-06-24 00:00:00', '2026-11-12 17:20:00', '3336_20260125072526.php', 1);
INSERT INTO `base_tconfig` VALUES (20, NULL, 'Địa chỉ trụ sở', 'TP. Hồ Chí Minh', '', 1, 1, '2024-06-27 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (21, NULL, 'Văn phòng giao dịch', 'TP. Hồ Chí Minh', '', 1, 1, '2024-07-29 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (23, 'slogan', 'Slogan', 'CHUYÊN VẬT TƯ & THI CÔNG RON GẠCH', '', 1, 1, '2026-11-11 07:40:22', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (22, NULL, 'Tổng kho', 'Kho Vật Tư BASC – TP. Hồ Chí Minh', '', 1, 1, '2026-09-25 00:00:00', '2026-11-12 10:21:36', '', 1);
INSERT INTO `base_tconfig` VALUES (24, 'hero_rating', 'Hero Rating', '4.9/5 từ 3.500+ công trình thực tế', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (25, 'hero_headline', 'Hero Headline', 'Đường Ron Gạch <span>Sáng Bóng Bền Đẹp</span> – Chống Thấm & Nấm Mốc 100%', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (26, 'hero_bullet_1', 'Hero Bullet 1', 'Keo chà ron Epoxy 2 thành phần cao cấp, không bong tróc, không ố vàng', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (27, 'hero_bullet_2', 'Hero Bullet 2', 'Thi công trọn gói sạch gọn trong ngày, bảo hành màu ron lên đến 10 năm', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (28, 'hero_bullet_3', 'Hero Bullet 3', 'Hơn 24 bảng màu thời thượng phù hợp mọi loại gạch men, đá hoa cương', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (29, 'hero_badge', 'Hero Badge', 'Chuẩn Đức', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (30, 'stat_1_num', 'Hero Stat 1 Num', '10 Năm', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (31, 'stat_1_lbl', 'Hero Stat 1 Label', 'Bảo hành màu ron', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (32, 'stat_2_num', 'Hero Stat 2 Num', '3.500+', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (33, 'stat_2_lbl', 'Hero Stat 2 Label', 'Công trình hoàn thiện', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (34, 'stat_3_num', 'Hero Stat 3 Num', '24 Giờ', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (35, 'stat_3_lbl', 'Hero Stat 3 Label', 'Khảo sát & thi công', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (36, 'hero_card_title', 'Hero Card Title', 'BASC Epoxy Pro Series', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);
INSERT INTO `base_tconfig` VALUES (37, 'hero_card_desc', 'Hero Card Desc', 'Độ bám dính vượt trội • Chống thấm tuyệt đối', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);

-- ----------------------------
-- Table structure for base_tcookie
-- ----------------------------
DROP TABLE IF EXISTS `base_tcookie`;
CREATE TABLE `base_tcookie`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cid_session` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_user` int NULL DEFAULT NULL,
  `ckey` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cvalue` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cstatus` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tcookie
-- ----------------------------
INSERT INTO `base_tcookie` VALUES (1, '2026_11_12_1794470866', 1, 'cookie_config_listview_m_orderby_clause', 'nid', '1');
INSERT INTO `base_tcookie` VALUES (2, '2026_11_12_1794470866', 1, 'cookie_config_listview_m_orderby_sort', 'asc', '1');
INSERT INTO `base_tcookie` VALUES (3, '2026_11_12_1794470866', 1, 'cookie_config_listview_txt_current_page', '1', '1');
INSERT INTO `base_tcookie` VALUES (4, '2026_11_16_1794794415', 1, 'cookie_module_listview_m_orderby_clause', 'nid', '1');
INSERT INTO `base_tcookie` VALUES (5, '2026_11_16_1794794415', 1, 'cookie_module_listview_m_orderby_sort', 'asc', '1');
INSERT INTO `base_tcookie` VALUES (6, '2026_11_16_1794794415', 1, 'cookie_module_listview_txt_current_page', '1', '1');
INSERT INTO `base_tcookie` VALUES (7, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_orderby_clause', 'nid', '1');
INSERT INTO `base_tcookie` VALUES (8, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_orderby_sort', 'asc', '1');
INSERT INTO `base_tcookie` VALUES (9, '2026_11_16_1794794415', 1, 'cookie_news_listview_txt_current_page', '1', '1');
INSERT INTO `base_tcookie` VALUES (10, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_m_orderby_clause', 'ccat_products', '1');
INSERT INTO `base_tcookie` VALUES (11, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_m_orderby_sort', 'asc', '1');
INSERT INTO `base_tcookie` VALUES (12, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txt_current_page', '1', '1');
INSERT INTO `base_tcookie` VALUES (13, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_m_chkf_ctag', '0', '1');
INSERT INTO `base_tcookie` VALUES (14, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_ddate01', '', '1');
INSERT INTO `base_tcookie` VALUES (15, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_cnote', '', '1');
INSERT INTO `base_tcookie` VALUES (16, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_ccode', '', '1');
INSERT INTO `base_tcookie` VALUES (17, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_cindex', '', '1');
INSERT INTO `base_tcookie` VALUES (18, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_ccat_products', '', '1');
INSERT INTO `base_tcookie` VALUES (19, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_nstatus', '', '1');
INSERT INTO `base_tcookie` VALUES (20, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_cbof_nid_material_products', '', '1');
INSERT INTO `base_tcookie` VALUES (21, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_cbof_nid_cat_news', '', '1');
INSERT INTO `base_tcookie` VALUES (22, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_chkf_ctag', '0', '1');
INSERT INTO `base_tcookie` VALUES (23, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_nid', '', '1');
INSERT INTO `base_tcookie` VALUES (24, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_ctitle', '', '1');
INSERT INTO `base_tcookie` VALUES (25, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_cbof_nid_section_news', '', '1');
INSERT INTO `base_tcookie` VALUES (26, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_alwcmt', '', '1');
INSERT INTO `base_tcookie` VALUES (27, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_nstatus', '', '1');
INSERT INTO `base_tcookie` VALUES (28, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_nactive', '', '1');
INSERT INTO `base_tcookie` VALUES (29, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_ddate01', '', '1');
INSERT INTO `base_tcookie` VALUES (30, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_cbof_language', '', '1');
INSERT INTO `base_tcookie` VALUES (31, '2026_11_16_1794794415', 1, 'cookie_product_listview_m_orderby_clause', 'cproducts', '1');
INSERT INTO `base_tcookie` VALUES (32, '2026_11_16_1794794415', 1, 'cookie_product_listview_m_orderby_sort', 'asc', '1');
INSERT INTO `base_tcookie` VALUES (33, '2026_11_16_1794794415', 1, 'cookie_product_listview_m_current_page', '1', '1');
INSERT INTO `base_tcookie` VALUES (34, '2026_11_16_1794794415', 1, 'cookie_banner_images_listview_m_orderby_clause', 'nid', '1');
INSERT INTO `base_tcookie` VALUES (35, '2026_11_16_1794794415', 1, 'cookie_banner_images_listview_m_orderby_sort', 'asc', '1');
INSERT INTO `base_tcookie` VALUES (36, '2026_11_16_1794794415', 1, 'cookie_banner_images_listview_txt_current_page', '0', '1');

-- ----------------------------
-- Table structure for base_tcustomer
-- ----------------------------
DROP TABLE IF EXISTS `base_tcustomer`;
CREATE TABLE `base_tcustomer`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccode_group` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cap_dung_uu_dai` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cemail` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cphone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cngay_sinh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cgender` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cwebsite` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cma_so_thue` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `caddress` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1',
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tcustomer
-- ----------------------------

-- ----------------------------
-- Table structure for base_tfunction
-- ----------------------------
DROP TABLE IF EXISTS `base_tfunction`;
CREATE TABLE `base_tfunction`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cfunction` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cdel` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tfunction
-- ----------------------------
INSERT INTO `base_tfunction` VALUES (2, 'do_employee_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (5, 'do_menu_permission', '0', '0');
INSERT INTO `base_tfunction` VALUES (8, 'do_change_password', '0', '0');
INSERT INTO `base_tfunction` VALUES (10, 'do_news_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (11, 'do_cat_news_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (40, 'do_cat_product_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (28, 'do_sponline_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (113, '', 'no delete', '0');
INSERT INTO `base_tfunction` VALUES (41, 'do_material_product_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (32, 'do_inform_news_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (46, 'do_help', '0', '0');
INSERT INTO `base_tfunction` VALUES (45, 'do_order_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (42, 'do_product_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (43, 'do_customer_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (38, 'do_config_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (44, 'do_order_status_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (47, 'do_site_map', '0', '0');
INSERT INTO `base_tfunction` VALUES (100, 'do_section_news_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (101, 'do_module_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (102, 'do_faq_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (103, 'do_recruit_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (104, 'do_weblink_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (105, 'do_banner_images_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (106, 'do_email_manager_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (107, 'do_comment_manager_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (108, 'do_work_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (109, 'do_cat_work_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (110, 'do_material_work_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (111, 'do_cat_faq_listview', '0', '0');
INSERT INTO `base_tfunction` VALUES (112, 'do_help_listview', '0', '0');

-- ----------------------------
-- Table structure for base_tfunction_frontend
-- ----------------------------
DROP TABLE IF EXISTS `base_tfunction_frontend`;
CREATE TABLE `base_tfunction_frontend`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cfunction` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clink` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tfunction_frontend
-- ----------------------------
INSERT INTO `base_tfunction_frontend` VALUES (1, 'Trang chủ', 'index.php', 1);
INSERT INTO `base_tfunction_frontend` VALUES (3, 'Tin tức', 'news', 1);
INSERT INTO `base_tfunction_frontend` VALUES (9, 'Hỏi đáp', 'faq', 0);
INSERT INTO `base_tfunction_frontend` VALUES (4, 'Liên hệ', 'contact', 1);
INSERT INTO `base_tfunction_frontend` VALUES (13, 'Chi tiết sản phẩm', '/san_pham/chi_tiet_sp/', 0);
INSERT INTO `base_tfunction_frontend` VALUES (6, 'Loại tin', 'news/sec/', 1);
INSERT INTO `base_tfunction_frontend` VALUES (7, 'Nhóm tin', 'news/cat/', 1);
INSERT INTO `base_tfunction_frontend` VALUES (8, 'Bài viết', 'news/detail/', 1);
INSERT INTO `base_tfunction_frontend` VALUES (11, 'Loại sản phẩm', 'san_pham/dssp_theo_chat_lieu/', 0);
INSERT INTO `base_tfunction_frontend` VALUES (12, 'Nhóm sản phẩm', 'san_pham/ds_san_pham/', 0);
INSERT INTO `base_tfunction_frontend` VALUES (10, 'Sản phẩm', 'san_pham', 0);
INSERT INTO `base_tfunction_frontend` VALUES (14, 'Gallery', 'Gallery', 0);

-- ----------------------------
-- Table structure for base_tgallery
-- ----------------------------
DROP TABLE IF EXISTS `base_tgallery`;
CREATE TABLE `base_tgallery`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctitle` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `nspecial` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tgallery
-- ----------------------------

-- ----------------------------
-- Table structure for base_tgallery_detail
-- ----------------------------
DROP TABLE IF EXISTS `base_tgallery_detail`;
CREATE TABLE `base_tgallery_detail`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_product` int NULL DEFAULT NULL,
  `cgallery_detail` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_full` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_thumb` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1',
  `nindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ddate01` datetime NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NULL DEFAULT '1977-01-01 00:00:00',
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tgallery_detail
-- ----------------------------

-- ----------------------------
-- Table structure for base_tgallery_img
-- ----------------------------
DROP TABLE IF EXISTS `base_tgallery_img`;
CREATE TABLE `base_tgallery_img`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_product` int NULL DEFAULT NULL,
  `cimg_color` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctitle` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimg` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  `nhome` int NULL DEFAULT NULL,
  `cindex` int NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tgallery_img
-- ----------------------------

-- ----------------------------
-- Table structure for base_tgroup_product
-- ----------------------------
DROP TABLE IF EXISTS `base_tgroup_product`;
CREATE TABLE `base_tgroup_product`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ccode` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctime` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tgroup_product
-- ----------------------------

-- ----------------------------
-- Table structure for base_tguest_online
-- ----------------------------
DROP TABLE IF EXISTS `base_tguest_online`;
CREATE TABLE `base_tguest_online`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `csession_id` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctime_log` int NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 304572 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of base_tguest_online
-- ----------------------------
INSERT INTO `base_tguest_online` VALUES (304571, 'u0ehf632n33cjjbodlfg0993b5', 1480738928);

-- ----------------------------
-- Table structure for base_tindex
-- ----------------------------
DROP TABLE IF EXISTS `base_tindex`;
CREATE TABLE `base_tindex`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_detail` int NULL DEFAULT NULL,
  `clink` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ctable` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1091 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tindex
-- ----------------------------
INSERT INTO `base_tindex` VALUES (1, 18, 'accessories', 'tmaterial_products');
INSERT INTO `base_tindex` VALUES (2, 17, 'thiet-bi-luu-tru', 'tmaterial_products');
INSERT INTO `base_tindex` VALUES (3, 16, 'laptop', 'tmaterial_products');
INSERT INTO `base_tindex` VALUES (4, 15, 'projector', 'tmaterial_products');
INSERT INTO `base_tindex` VALUES (5, 14, 'audio', 'tmaterial_products');
INSERT INTO `base_tindex` VALUES (6, 13, 'hd-player', 'tmaterial_products');
INSERT INTO `base_tindex` VALUES (7, 41, 'speaker', 'tcat_products');
INSERT INTO `base_tindex` VALUES (8, 42, 'hd-projector', 'tcat_products');
INSERT INTO `base_tindex` VALUES (9, 40, 'cd-player', 'tcat_products');
INSERT INTO `base_tindex` VALUES (10, 39, 'flower--binh-duong', 'tcat_products');
INSERT INTO `base_tindex` VALUES (11, 38, 'receiver', 'tcat_products');
INSERT INTO `base_tindex` VALUES (12, 36, 'hd-media', 'tcat_products');
INSERT INTO `base_tindex` VALUES (13, 37, 'flower--da-lat', 'tcat_products');
INSERT INTO `base_tindex` VALUES (14, 43, 'flower-can-tho', 'tcat_products');
INSERT INTO `base_tindex` VALUES (15, 44, 'asus-eee-pc', 'tcat_products');
INSERT INTO `base_tindex` VALUES (16, 45, 'hp-lenovo-mini', 'tcat_products');
INSERT INTO `base_tindex` VALUES (17, 46, 'hdd-gan-trong', 'tcat_products');
INSERT INTO `base_tindex` VALUES (18, 47, 'hdd-gan-ngoai', 'tcat_products');
INSERT INTO `base_tindex` VALUES (19, 48, 'box', 'tcat_products');
INSERT INTO `base_tindex` VALUES (20, 49, 'dock', 'tcat_products');
INSERT INTO `base_tindex` VALUES (21, 50, 'hdmi', 'tcat_products');
INSERT INTO `base_tindex` VALUES (22, 51, 'opptical', 'tcat_products');
INSERT INTO `base_tindex` VALUES (23, 52, 'miscellaneous', 'tcat_products');
INSERT INTO `base_tindex` VALUES (24, 1, 'unilever', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (25, 36, 'dune-hd', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (26, 37, 'egreat', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (27, 39, 'hd-pro', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (28, 40, 'imaxhd', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (29, 41, 'mede8er', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (30, 42, 'popcon-hour', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (31, 43, 'powerzest-hd', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (32, 44, 'tvix', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (33, 45, 'optoma', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (34, 46, 'panasonic', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (35, 47, 'sony', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (36, 48, 'viewsonic', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (37, 49, 'wd', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (38, 50, 'hitachi', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (39, 51, 'western-digital', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (40, 46, 'cpu-core-i5-3570(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (41, 47, 'cpu-core-i5-3570k(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (42, 48, 'tu-bep-thtb02', 'tproduct');
INSERT INTO `base_tindex` VALUES (43, 49, 'nhan-cap-sharing', 'tproduct');
INSERT INTO `base_tindex` VALUES (44, 53, 'asdasd', 'tcat_products');
INSERT INTO `base_tindex` VALUES (45, 52, 'imax3d', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (46, 53, 'hd-life', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (47, 54, 'vaudi', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (48, 55, 'himedia', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (49, 56, 'mede8er', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (50, 57, 'tyco', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (51, 58, 'xtreamer-prodigy', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (52, 59, 'optoma', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (53, 60, 'panasonic', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (54, 61, 'jvc', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (55, 62, 'sony', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (56, 50, 'd.net-r-7300-plus', 'tproduct');
INSERT INTO `base_tindex` VALUES (57, 51, 'nhan-cap-endless-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (58, 52, 'nhan-cap-love-story', 'tproduct');
INSERT INTO `base_tindex` VALUES (59, 53, 'nhan-cap-love-story-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (60, 54, 'nhan-cap-infinity', 'tproduct');
INSERT INTO `base_tindex` VALUES (61, 55, 'nhan-cap-love-forever', 'tproduct');
INSERT INTO `base_tindex` VALUES (62, 56, 'nhan-cap-infinity-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (63, 57, 'nhan-cap-posato', 'tproduct');
INSERT INTO `base_tindex` VALUES (64, 58, 'nhan-cap-one-you', 'tproduct');
INSERT INTO `base_tindex` VALUES (65, 59, 'nhan-cap-deluxe', 'tproduct');
INSERT INTO `base_tindex` VALUES (66, 60, 'nhan-cap-power-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (67, 61, 'nhan-cap-teana', 'tproduct');
INSERT INTO `base_tindex` VALUES (68, 62, 'nhan-cap-love-story-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (69, 63, 'cpu-core-i7-4790k(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (70, 64, 'main-h61-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (71, 65, 'main-h61-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (72, 66, 'main-h61-hieu-asus', 'tproduct');
INSERT INTO `base_tindex` VALUES (73, 67, 'main-h61-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (74, 68, 'nhan-cap-king-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (75, 69, 'nhan-cap-my-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (76, 70, 'main-h61-hieu-asrock', 'tproduct');
INSERT INTO `base_tindex` VALUES (77, 71, 'nhan-cap-key-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (78, 72, 'nhan-cap-love-valley', 'tproduct');
INSERT INTO `base_tindex` VALUES (79, 73, 'nhan-cap-nice-dream', 'tproduct');
INSERT INTO `base_tindex` VALUES (80, 74, 'nhan-cap-eternal', 'tproduct');
INSERT INTO `base_tindex` VALUES (81, 75, 'nhan-cap-ware-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (82, 76, 'nhan-cap-nice-couple', 'tproduct');
INSERT INTO `base_tindex` VALUES (83, 77, 'nhan-cap-targa', 'tproduct');
INSERT INTO `base_tindex` VALUES (84, 63, 'd.net', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (85, 64, 'dune-hd', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (86, 78, 'nhan-cap-true-love-3', 'tproduct');
INSERT INTO `base_tindex` VALUES (87, 79, 'nhan-cap-loving', 'tproduct');
INSERT INTO `base_tindex` VALUES (88, 80, 'nhan-cap-passo-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (89, 81, 'nhan-cap-future-3', 'tproduct');
INSERT INTO `base_tindex` VALUES (90, 82, '128gb-corsair-sata3-bh-08-2017', 'tproduct');
INSERT INTO `base_tindex` VALUES (91, 83, 'nhan-cap-loving-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (92, 84, 'nhan-cap-ring-hearts-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (93, 85, 'nhan-cap-amor', 'tproduct');
INSERT INTO `base_tindex` VALUES (94, 86, 'nhan-cap-true-love-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (95, 87, 'hdd-1tb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (96, 88, 'nhan-cap-fiesta', 'tproduct');
INSERT INTO `base_tindex` VALUES (97, 54, 'bo-chua-o-cung', 'tcat_products');
INSERT INTO `base_tindex` VALUES (98, 55, 'o-cung-mang', 'tcat_products');
INSERT INTO `base_tindex` VALUES (99, 89, 'hd-6670-asus-bh-07-2017', 'tproduct');
INSERT INTO `base_tindex` VALUES (100, 90, 'gt630-zotac-bh-02-2019', 'tproduct');
INSERT INTO `base_tindex` VALUES (101, 91, 'nhan-cap-funny', 'tproduct');
INSERT INTO `base_tindex` VALUES (102, 92, 'acbel-300w', 'tproduct');
INSERT INTO `base_tindex` VALUES (103, 93, 'nhan-cap-vesta', 'tproduct');
INSERT INTO `base_tindex` VALUES (104, 94, 'nhan-cap-strong-couple', 'tproduct');
INSERT INTO `base_tindex` VALUES (105, 95, 'nhan-cap-the-same', 'tproduct');
INSERT INTO `base_tindex` VALUES (106, 96, 'nhan-cap-with-me-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (107, 97, 'vga-gtx650ti-asus(bh-09-2016)', 'tproduct');
INSERT INTO `base_tindex` VALUES (108, 98, 'nhan-cap-future-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (109, 99, 'may-bo-core-i5-2400', 'tproduct');
INSERT INTO `base_tindex` VALUES (110, 100, 'may-bo-core-i5-2400', 'tproduct');
INSERT INTO `base_tindex` VALUES (111, 101, 'may-bo-g850(-max-setting-lol...', 'tproduct');
INSERT INTO `base_tindex` VALUES (112, 102, 'may-bo-q9300(max-setting-lol,-fifa2...', 'tproduct');
INSERT INTO `base_tindex` VALUES (113, 103, 'vga-asus-gtx980', 'tproduct');
INSERT INTO `base_tindex` VALUES (114, 104, 'may-bo-g850', 'tproduct');
INSERT INTO `base_tindex` VALUES (115, 105, 'nhan-cap-nice-couple-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (116, 106, 'nhan-cap-with-me', 'tproduct');
INSERT INTO `base_tindex` VALUES (117, 107, 'may-bo-dell-780-sff', 'tproduct');
INSERT INTO `base_tindex` VALUES (118, 108, 'may-bo-hp-6200-pro', 'tproduct');
INSERT INTO `base_tindex` VALUES (119, 109, 'hdd-4tb-wd-dong-re', 'tproduct');
INSERT INTO `base_tindex` VALUES (120, 110, 'testes', 'tproduct');
INSERT INTO `base_tindex` VALUES (121, 111, 'nhan-cap-love-days', 'tproduct');
INSERT INTO `base_tindex` VALUES (122, 112, 'main-b75-hieu-asus(-b75m-a)', 'tproduct');
INSERT INTO `base_tindex` VALUES (123, 113, 'nhan-cap-manh-ghep', 'tproduct');
INSERT INTO `base_tindex` VALUES (124, 114, 'may-bo-hp-6200-pro(cpu-g850)', 'tproduct');
INSERT INTO `base_tindex` VALUES (125, 115, 'ssd-500gb-samsung-850-evo', 'tproduct');
INSERT INTO `base_tindex` VALUES (126, 116, 'may-bo-dell-optiplex-780', 'tproduct');
INSERT INTO `base_tindex` VALUES (127, 117, 'may-bo-dell-optiplex-780(-core-quad-q8400)', 'tproduct');
INSERT INTO `base_tindex` VALUES (128, 56, 'keyboard', 'tcat_products');
INSERT INTO `base_tindex` VALUES (129, 118, 'may-bo-xeon-e3-1220-v2', 'tproduct');
INSERT INTO `base_tindex` VALUES (130, 119, 'may-bo-xeon-e3-1220-v2', 'tproduct');
INSERT INTO `base_tindex` VALUES (131, 120, 'dell-optiplex-780-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (132, 121, 'dell-optiplex-780-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (133, 122, 'dell-optiplex-780mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (134, 123, 'dell-optiplex-780mt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (135, 124, 'dell-optiplex-9010-dt', 'tproduct');
INSERT INTO `base_tindex` VALUES (136, 65, 'marantz', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (137, 66, 'denon', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (138, 67, 'primare', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (139, 125, 'dell-optiplex-990-dt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (140, 126, 'dell-optiplex-990-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (141, 127, 'dell-optiplex-9010-dt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (142, 128, 'dell-optiplex-9010-dt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (143, 129, 'dell-optiplex-3010mt', 'tproduct');
INSERT INTO `base_tindex` VALUES (144, 130, 'dell-optiplex-790-sff-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (145, 131, 'dell-optiplex-790-sff-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (146, 57, 'flower-sapa', 'tcat_products');
INSERT INTO `base_tindex` VALUES (147, 68, 'denon', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (148, 132, 'dell-optiplex-990-dt-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (149, 69, 'onkyo', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (150, 133, 'dell-optiplex-9010-dt-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (151, 134, 'dell-optiplex-790-mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (152, 135, 'hp-6000-pro-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (153, 136, 'hp-6000-pro-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (154, 137, 'hp-6000-pro-mt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (155, 138, 'hp-6000-pro-mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (156, 70, 'western-digital', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (157, 1, 'nhan-doi-ware-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (158, 22, 'test', 'tproduct');
INSERT INTO `base_tindex` VALUES (159, 1, 'nhan-doi-ware-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (160, 27, 'nhan-cap-nice-couple1', 'tproduct');
INSERT INTO `base_tindex` VALUES (161, 28, 'phong-ngu-thpn03', 'tproduct');
INSERT INTO `base_tindex` VALUES (162, 29, 'tu-ao-thta01', 'tproduct');
INSERT INTO `base_tindex` VALUES (163, 30, 'tu-ao-thta02', 'tproduct');
INSERT INTO `base_tindex` VALUES (164, 31, 'nhan-cap-air-love-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (165, 32, 'tu-ao-thta03', 'tproduct');
INSERT INTO `base_tindex` VALUES (166, 33, 'cpu-core-i3-2130(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (167, 34, 'ke-tivi-thtv02', 'tproduct');
INSERT INTO `base_tindex` VALUES (168, 35, 'ke-tivi-thtv03', 'tproduct');
INSERT INTO `base_tindex` VALUES (169, 36, 'nhan-cap-love-u', 'tproduct');
INSERT INTO `base_tindex` VALUES (170, 37, 'nhan-cap-air-blade', 'tproduct');
INSERT INTO `base_tindex` VALUES (171, 38, 'noi-that-cafe-thcf01', 'tproduct');
INSERT INTO `base_tindex` VALUES (172, 39, 'cafe-san-vuon-thcf02', 'tproduct');
INSERT INTO `base_tindex` VALUES (173, 40, 'cafe-san-vuon-thcf03', 'tproduct');
INSERT INTO `base_tindex` VALUES (174, 41, 'noi-that-nha-hang-thnh01', 'tproduct');
INSERT INTO `base_tindex` VALUES (175, 42, 'cpu-core-i5-3330(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (176, 43, 'cpu-core-i5-3450(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (177, 44, 'cpu-core-i5-3470(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (178, 45, 'cpu-core-i5-3570s(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (179, 46, 'cpu-core-i5-3570(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (180, 47, 'cpu-core-i5-3570k(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (181, 48, 'tu-bep-thtb02', 'tproduct');
INSERT INTO `base_tindex` VALUES (182, 49, 'nhan-cap-sharing', 'tproduct');
INSERT INTO `base_tindex` VALUES (183, 50, 'nhan-cap-couple-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (184, 51, 'nhan-cap-endless-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (185, 52, 'nhan-cap-love-story', 'tproduct');
INSERT INTO `base_tindex` VALUES (186, 53, 'nhan-cap-love-story-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (187, 54, 'nhan-cap-infinity', 'tproduct');
INSERT INTO `base_tindex` VALUES (188, 55, 'nhan-cap-love-forever', 'tproduct');
INSERT INTO `base_tindex` VALUES (189, 56, 'nhan-cap-infinity-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (190, 57, 'nhan-cap-posato', 'tproduct');
INSERT INTO `base_tindex` VALUES (191, 58, 'nhan-cap-one-you', 'tproduct');
INSERT INTO `base_tindex` VALUES (192, 59, 'nhan-cap-deluxe', 'tproduct');
INSERT INTO `base_tindex` VALUES (193, 60, 'nhan-cap-power-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (194, 61, 'nhan-cap-teana', 'tproduct');
INSERT INTO `base_tindex` VALUES (195, 62, 'nhan-cap-love-story-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (196, 63, 'cpu-core-i7-4790k(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (197, 64, 'main-h61-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (198, 65, 'main-h61-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (199, 66, 'main-h61-hieu-asus', 'tproduct');
INSERT INTO `base_tindex` VALUES (200, 67, 'main-h61-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (201, 68, 'nhan-cap-king-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (202, 69, 'nhan-cap-my-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (203, 70, 'main-h61-hieu-asrock', 'tproduct');
INSERT INTO `base_tindex` VALUES (204, 71, 'nhan-cap-key-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (205, 72, 'nhan-cap-love-valley', 'tproduct');
INSERT INTO `base_tindex` VALUES (206, 73, 'nhan-cap-nice-dream', 'tproduct');
INSERT INTO `base_tindex` VALUES (207, 74, 'nhan-cap-eternal', 'tproduct');
INSERT INTO `base_tindex` VALUES (208, 75, 'nhan-cap-ware-love', 'tproduct');
INSERT INTO `base_tindex` VALUES (209, 76, 'nhan-cap-nice-couple', 'tproduct');
INSERT INTO `base_tindex` VALUES (210, 77, 'nhan-cap-targa', 'tproduct');
INSERT INTO `base_tindex` VALUES (211, 78, 'nhan-cap-true-love-3', 'tproduct');
INSERT INTO `base_tindex` VALUES (212, 79, 'nhan-cap-loving', 'tproduct');
INSERT INTO `base_tindex` VALUES (213, 80, 'nhan-cap-passo-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (214, 81, 'nhan-cap-future-3', 'tproduct');
INSERT INTO `base_tindex` VALUES (215, 82, '128gb-corsair-sata3-bh-08-2017', 'tproduct');
INSERT INTO `base_tindex` VALUES (216, 83, 'nhan-cap-loving-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (217, 84, 'nhan-cap-ring-hearts-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (218, 85, 'nhan-cap-amor', 'tproduct');
INSERT INTO `base_tindex` VALUES (219, 86, 'nhan-cap-true-love-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (220, 87, 'hdd-1tb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (221, 88, 'nhan-cap-fiesta', 'tproduct');
INSERT INTO `base_tindex` VALUES (222, 89, 'hd-6670-asus-bh-07-2017', 'tproduct');
INSERT INTO `base_tindex` VALUES (223, 90, 'gt630-zotac-bh-02-2019', 'tproduct');
INSERT INTO `base_tindex` VALUES (224, 91, 'nhan-cap-funny', 'tproduct');
INSERT INTO `base_tindex` VALUES (225, 92, 'acbel-300w', 'tproduct');
INSERT INTO `base_tindex` VALUES (226, 93, 'nhan-cap-vesta', 'tproduct');
INSERT INTO `base_tindex` VALUES (227, 94, 'nhan-cap-strong-couple', 'tproduct');
INSERT INTO `base_tindex` VALUES (228, 95, 'nhan-cap-the-same', 'tproduct');
INSERT INTO `base_tindex` VALUES (229, 96, 'nhan-cap-with-me-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (230, 97, 'vga-gtx650ti-asus(bh-09-2016)', 'tproduct');
INSERT INTO `base_tindex` VALUES (231, 98, 'nhan-cap-future-1', 'tproduct');
INSERT INTO `base_tindex` VALUES (232, 99, 'may-bo-core-i5-2400', 'tproduct');
INSERT INTO `base_tindex` VALUES (233, 100, 'may-bo-core-i5-2400', 'tproduct');
INSERT INTO `base_tindex` VALUES (234, 101, 'may-bo-g850(-max-setting-lol...', 'tproduct');
INSERT INTO `base_tindex` VALUES (235, 102, 'may-bo-q9300(max-setting-lol,-fifa2...', 'tproduct');
INSERT INTO `base_tindex` VALUES (236, 103, 'vga-asus-gtx980', 'tproduct');
INSERT INTO `base_tindex` VALUES (237, 104, 'may-bo-g850', 'tproduct');
INSERT INTO `base_tindex` VALUES (238, 105, 'nhan-cap-nice-couple-2', 'tproduct');
INSERT INTO `base_tindex` VALUES (239, 106, 'nhan-cap-with-me', 'tproduct');
INSERT INTO `base_tindex` VALUES (240, 107, 'may-bo-dell-780-sff', 'tproduct');
INSERT INTO `base_tindex` VALUES (241, 108, 'may-bo-hp-6200-pro', 'tproduct');
INSERT INTO `base_tindex` VALUES (242, 109, 'hdd-4tb-wd-dong-re', 'tproduct');
INSERT INTO `base_tindex` VALUES (243, 110, 'nhan-cap-amor-dia', 'tproduct');
INSERT INTO `base_tindex` VALUES (244, 111, 'nhan-cap-love-days', 'tproduct');
INSERT INTO `base_tindex` VALUES (245, 112, 'main-b75-hieu-asus(-b75m-a)', 'tproduct');
INSERT INTO `base_tindex` VALUES (246, 113, 'nhan-cap-manh-ghep', 'tproduct');
INSERT INTO `base_tindex` VALUES (247, 114, 'may-bo-hp-6200-pro(cpu-g850)', 'tproduct');
INSERT INTO `base_tindex` VALUES (248, 115, 'ssd-500gb-samsung-850-evo', 'tproduct');
INSERT INTO `base_tindex` VALUES (249, 116, 'may-bo-dell-optiplex-780', 'tproduct');
INSERT INTO `base_tindex` VALUES (250, 117, 'may-bo-dell-optiplex-780(-core-quad-q8400)', 'tproduct');
INSERT INTO `base_tindex` VALUES (251, 118, 'may-bo-xeon-e3-1220-v2', 'tproduct');
INSERT INTO `base_tindex` VALUES (252, 119, 'may-bo-xeon-e3-1220-v2', 'tproduct');
INSERT INTO `base_tindex` VALUES (253, 120, 'dell-optiplex-780-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (254, 121, 'dell-optiplex-780-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (255, 122, 'dell-optiplex-780mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (256, 123, 'dell-optiplex-780mt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (257, 124, 'dell-optiplex-9010-dt', 'tproduct');
INSERT INTO `base_tindex` VALUES (258, 125, 'dell-optiplex-990-dt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (259, 126, 'dell-optiplex-990-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (260, 127, 'dell-optiplex-9010-dt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (261, 128, 'dell-optiplex-9010-dt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (262, 129, 'dell-optiplex-3010mt', 'tproduct');
INSERT INTO `base_tindex` VALUES (263, 130, 'dell-optiplex-790-sff-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (264, 131, 'dell-optiplex-790-sff-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (265, 132, 'dell-optiplex-990-dt-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (266, 133, 'dell-optiplex-9010-dt-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (267, 134, 'dell-optiplex-790-mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (268, 135, 'hp-6000-pro-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (269, 136, 'hp-6000-pro-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (270, 137, 'hp-6000-pro-mt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (271, 138, 'hp-6000-pro-mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (272, 139, 'hp-pavilion-500-501x', 'tproduct');
INSERT INTO `base_tindex` VALUES (273, 140, 'hp-6200-pro-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (274, 141, 'hp-6200-pro-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (275, 142, 'hp-6200-pro-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (276, 143, 'nec-ml-b-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (277, 144, 'fujitsu-fmv-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (278, 145, 'lenovo-m91p-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (279, 146, 'lenovo-m91p-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (280, 147, 'fujitsu-fmv-ch1-g860', 'tproduct');
INSERT INTO `base_tindex` VALUES (281, 148, 'fujitsu-fmv-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (282, 149, 'may-do-hoa-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (283, 150, 'may-do-hoa-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (284, 151, 'lcd-dell-20-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (285, 152, 'lcd-lg-samsung-17-inch', 'tproduct');
INSERT INTO `base_tindex` VALUES (286, 153, 'lcd-aoc-20-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (287, 154, 'lcd-hp-compad-20-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (288, 155, 'lcd-dell-22-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (289, 156, 'lcd-dell-19-inch', 'tproduct');
INSERT INTO `base_tindex` VALUES (290, 157, 'lcd-dell-19-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (291, 158, 'dell-24-inch-e2414h', 'tproduct');
INSERT INTO `base_tindex` VALUES (292, 159, 'laptop-hp-8470p', 'tproduct');
INSERT INTO `base_tindex` VALUES (293, 160, 'laptop-hp-elitebook-8440p', 'tproduct');
INSERT INTO `base_tindex` VALUES (294, 161, 'laptop-hp-probook-4530s-core-i5', 'tproduct');
INSERT INTO `base_tindex` VALUES (295, 162, 'laptop-hp-probook-6460b-core-i5', 'tproduct');
INSERT INTO `base_tindex` VALUES (296, 163, 'laptop-hp-probook-6470b', 'tproduct');
INSERT INTO `base_tindex` VALUES (297, 164, 'laptop-dell-e6420', 'tproduct');
INSERT INTO `base_tindex` VALUES (298, 165, 'laptop-dell-latitude-3330-ca543', 'tproduct');
INSERT INTO `base_tindex` VALUES (299, 166, 'laptop-dell-latitude-e6230', 'tproduct');
INSERT INTO `base_tindex` VALUES (300, 167, 'laptop-dell-latitude-e4310', 'tproduct');
INSERT INTO `base_tindex` VALUES (301, 168, 'laptop-dell-latitude-e5430', 'tproduct');
INSERT INTO `base_tindex` VALUES (302, 169, 'giuong-ngu-thgn04', 'tproduct');
INSERT INTO `base_tindex` VALUES (303, 170, 'giuong-ngu-thgn13', 'tproduct');
INSERT INTO `base_tindex` VALUES (304, 171, 'tu-ruou-phong-khach-thpk06', 'tproduct');
INSERT INTO `base_tindex` VALUES (305, 172, 'tu-ruou-phong-khach-thpk07', 'tproduct');
INSERT INTO `base_tindex` VALUES (306, 173, 'tu-ao-thta06', 'tproduct');
INSERT INTO `base_tindex` VALUES (307, 174, 'tu-ao-thta07', 'tproduct');
INSERT INTO `base_tindex` VALUES (308, 175, 'ke-tivi-thtv14', 'tproduct');
INSERT INTO `base_tindex` VALUES (309, 176, 'ke-tivi-thtv07', 'tproduct');
INSERT INTO `base_tindex` VALUES (310, 177, 'tu-bep-thtb06', 'tproduct');
INSERT INTO `base_tindex` VALUES (311, 178, 'tu-bep-thtb14', 'tproduct');
INSERT INTO `base_tindex` VALUES (312, 179, 'phong-ngu-thpn12', 'tproduct');
INSERT INTO `base_tindex` VALUES (313, 180, 'phong-ngu-thpn07', 'tproduct');
INSERT INTO `base_tindex` VALUES (314, 181, 'giuong-ngu-thgn06', 'tproduct');
INSERT INTO `base_tindex` VALUES (315, 182, 'giuong-ngu-thgn07', 'tproduct');
INSERT INTO `base_tindex` VALUES (316, 183, 'tu-ao-thta08', 'tproduct');
INSERT INTO `base_tindex` VALUES (317, 184, 'tu-ao-thta09', 'tproduct');
INSERT INTO `base_tindex` VALUES (318, 185, 'tu-ao-thta10', 'tproduct');
INSERT INTO `base_tindex` VALUES (319, 186, 'ke-tivi-thtv08', 'tproduct');
INSERT INTO `base_tindex` VALUES (320, 187, 'ke-tivi-thtv09', 'tproduct');
INSERT INTO `base_tindex` VALUES (321, 188, 'ke-tivi-thtv10', 'tproduct');
INSERT INTO `base_tindex` VALUES (322, 189, 'tu-bep-thtb14', 'tproduct');
INSERT INTO `base_tindex` VALUES (323, 190, 'tu-bep-thtb12', 'tproduct');
INSERT INTO `base_tindex` VALUES (324, 191, 'tu-bep-thtb13', 'tproduct');
INSERT INTO `base_tindex` VALUES (325, 192, 'phong-ngu-thpn08', 'tproduct');
INSERT INTO `base_tindex` VALUES (326, 193, 'phong-ngu-thpn06', 'tproduct');
INSERT INTO `base_tindex` VALUES (327, 194, 'phong-ngu-thpn15', 'tproduct');
INSERT INTO `base_tindex` VALUES (328, 195, 'giuong-ngu-thgn08', 'tproduct');
INSERT INTO `base_tindex` VALUES (329, 196, 'giuong-ngu-thgn05', 'tproduct');
INSERT INTO `base_tindex` VALUES (330, 197, 'giuong-ngu-thgn10', 'tproduct');
INSERT INTO `base_tindex` VALUES (331, 198, 'phong-khach-thpk08', 'tproduct');
INSERT INTO `base_tindex` VALUES (332, 199, 'phong-khach-thpk14', 'tproduct');
INSERT INTO `base_tindex` VALUES (333, 200, 'phong-khach-thpk10', 'tproduct');
INSERT INTO `base_tindex` VALUES (334, 201, 'phong-khach-thpk11', 'tproduct');
INSERT INTO `base_tindex` VALUES (335, 202, 'phong-khach-thpk12', 'tproduct');
INSERT INTO `base_tindex` VALUES (336, 203, 'phong-khach-thpk13', 'tproduct');
INSERT INTO `base_tindex` VALUES (337, 204, 'tu-ao-thta11', 'tproduct');
INSERT INTO `base_tindex` VALUES (338, 205, 'tu-ao-thta12', 'tproduct');
INSERT INTO `base_tindex` VALUES (339, 206, 'tu-ao-thta13', 'tproduct');
INSERT INTO `base_tindex` VALUES (340, 207, 'ke-tivi-thtv11', 'tproduct');
INSERT INTO `base_tindex` VALUES (341, 208, 'ke-tivi-thtv12', 'tproduct');
INSERT INTO `base_tindex` VALUES (342, 209, 'ke-tivi-thtv13', 'tproduct');
INSERT INTO `base_tindex` VALUES (343, 210, 'tu-bep-thtb08', 'tproduct');
INSERT INTO `base_tindex` VALUES (344, 211, 'tu-bep-thtb09', 'tproduct');
INSERT INTO `base_tindex` VALUES (345, 212, 'tu-bep-thtb10', 'tproduct');
INSERT INTO `base_tindex` VALUES (346, 213, 'phong-ngu-thpn11', 'tproduct');
INSERT INTO `base_tindex` VALUES (347, 214, 'phong-ngu-thpn09', 'tproduct');
INSERT INTO `base_tindex` VALUES (348, 215, 'phong-ngu-thpn13', 'tproduct');
INSERT INTO `base_tindex` VALUES (349, 216, 'giuong-ngu-thgn11', 'tproduct');
INSERT INTO `base_tindex` VALUES (350, 217, 'phong-ngu-thpn59', 'tproduct');
INSERT INTO `base_tindex` VALUES (351, 218, 'giuong-ngu-thgn09', 'tproduct');
INSERT INTO `base_tindex` VALUES (352, 219, 'phong-ngu-thpn07', 'tproduct');
INSERT INTO `base_tindex` VALUES (353, 220, 'phong-ngu-thpn04', 'tproduct');
INSERT INTO `base_tindex` VALUES (354, 221, 'phong-ngu-thpn14', 'tproduct');
INSERT INTO `base_tindex` VALUES (355, 222, 'phong-ngu-thpn11', 'tproduct');
INSERT INTO `base_tindex` VALUES (356, 223, 'phong-ngu-thpn10', 'tproduct');
INSERT INTO `base_tindex` VALUES (357, 224, 'tu-bep-thtb07', 'tproduct');
INSERT INTO `base_tindex` VALUES (358, 225, 'ke-tivi-thtv06', 'tproduct');
INSERT INTO `base_tindex` VALUES (359, 226, 'phong-khach-thpk12', 'tproduct');
INSERT INTO `base_tindex` VALUES (360, 227, 'phong-khach-thpk09', 'tproduct');
INSERT INTO `base_tindex` VALUES (361, 228, 'phong-khach-thpk15', 'tproduct');
INSERT INTO `base_tindex` VALUES (362, 229, 'phong-khach-thpk13', 'tproduct');
INSERT INTO `base_tindex` VALUES (363, 230, 'tu-bep-thtb03', 'tproduct');
INSERT INTO `base_tindex` VALUES (364, 231, 'tu-bep-thtb06', 'tproduct');
INSERT INTO `base_tindex` VALUES (365, 232, 'ke-tivi-thtv15', 'tproduct');
INSERT INTO `base_tindex` VALUES (366, 233, 'ke-tivi-thtv16', 'tproduct');
INSERT INTO `base_tindex` VALUES (367, 234, 'ke-tivi-thtv17', 'tproduct');
INSERT INTO `base_tindex` VALUES (368, 235, 'ke-tivi-thtv18', 'tproduct');
INSERT INTO `base_tindex` VALUES (369, 236, 'ke-tivi-thtv19', 'tproduct');
INSERT INTO `base_tindex` VALUES (370, 237, 'ke-tivi-thtv20', 'tproduct');
INSERT INTO `base_tindex` VALUES (371, 238, 'ke-tivi-thtv21', 'tproduct');
INSERT INTO `base_tindex` VALUES (372, 239, 'ke-tivi-thtv22', 'tproduct');
INSERT INTO `base_tindex` VALUES (373, 240, 'ke-tivi-thtv23', 'tproduct');
INSERT INTO `base_tindex` VALUES (374, 241, 'ke-tivi-thtv24', 'tproduct');
INSERT INTO `base_tindex` VALUES (375, 242, 'ke-tivi-thtv25', 'tproduct');
INSERT INTO `base_tindex` VALUES (376, 243, 'ke-tivi-thtv26', 'tproduct');
INSERT INTO `base_tindex` VALUES (377, 244, 'ke-tivi-thtv27', 'tproduct');
INSERT INTO `base_tindex` VALUES (378, 245, 'ke-tivi-thtv28', 'tproduct');
INSERT INTO `base_tindex` VALUES (379, 246, 'ke-tivi-thtv29', 'tproduct');
INSERT INTO `base_tindex` VALUES (380, 247, 'ke-tivi-thtv30', 'tproduct');
INSERT INTO `base_tindex` VALUES (381, 248, 'ke-tivi-thtv31', 'tproduct');
INSERT INTO `base_tindex` VALUES (382, 249, 'ke-tivi-thtv32', 'tproduct');
INSERT INTO `base_tindex` VALUES (383, 250, 'ke-tivi-thtv33', 'tproduct');
INSERT INTO `base_tindex` VALUES (384, 251, 'ke-tivi-thtv34', 'tproduct');
INSERT INTO `base_tindex` VALUES (385, 252, 'ke-tivi-thtv35', 'tproduct');
INSERT INTO `base_tindex` VALUES (386, 253, 'ke-tivi-thtv36', 'tproduct');
INSERT INTO `base_tindex` VALUES (387, 254, 'ke-tivi-thtv37', 'tproduct');
INSERT INTO `base_tindex` VALUES (388, 255, 'ke-tivi-thtv38', 'tproduct');
INSERT INTO `base_tindex` VALUES (389, 256, 'ke-tivi-thtv39', 'tproduct');
INSERT INTO `base_tindex` VALUES (390, 257, 'ke-tivi-thtv40', 'tproduct');
INSERT INTO `base_tindex` VALUES (391, 258, 'ke-tivi-thtv41', 'tproduct');
INSERT INTO `base_tindex` VALUES (392, 259, 'ke-tivi-thtv42', 'tproduct');
INSERT INTO `base_tindex` VALUES (393, 260, 'ke-tivi-thtv43', 'tproduct');
INSERT INTO `base_tindex` VALUES (394, 261, 'ke-tivi-thtv44', 'tproduct');
INSERT INTO `base_tindex` VALUES (395, 262, 'ke-tivi-thtv45', 'tproduct');
INSERT INTO `base_tindex` VALUES (396, 263, 'ke-tivi-thtv46', 'tproduct');
INSERT INTO `base_tindex` VALUES (397, 264, 'ke-tivi-thtv47', 'tproduct');
INSERT INTO `base_tindex` VALUES (398, 265, 'ke-tivi-thtv48', 'tproduct');
INSERT INTO `base_tindex` VALUES (399, 266, 'ke-tivi-thtv49', 'tproduct');
INSERT INTO `base_tindex` VALUES (400, 267, 'ke-tivi-thtv50', 'tproduct');
INSERT INTO `base_tindex` VALUES (401, 268, 'ke-tivi-thtv51', 'tproduct');
INSERT INTO `base_tindex` VALUES (402, 269, 'ke-tivi-thtv52', 'tproduct');
INSERT INTO `base_tindex` VALUES (403, 270, 'ke-tivi-thtv53', 'tproduct');
INSERT INTO `base_tindex` VALUES (404, 271, 'ke-tivi-thtv54', 'tproduct');
INSERT INTO `base_tindex` VALUES (405, 272, 'ke-tivi-thtv55', 'tproduct');
INSERT INTO `base_tindex` VALUES (406, 273, 'ke-tivi-thtv56', 'tproduct');
INSERT INTO `base_tindex` VALUES (407, 274, 'ke-tivi-thtv57', 'tproduct');
INSERT INTO `base_tindex` VALUES (408, 275, 'ke-tivi-thtv58', 'tproduct');
INSERT INTO `base_tindex` VALUES (409, 276, 'tu-bep-thtb15', 'tproduct');
INSERT INTO `base_tindex` VALUES (410, 277, 'tu-bep-thtb16', 'tproduct');
INSERT INTO `base_tindex` VALUES (411, 278, 'tu-bep-thtb17', 'tproduct');
INSERT INTO `base_tindex` VALUES (412, 279, 'tu-bep-thtb19', 'tproduct');
INSERT INTO `base_tindex` VALUES (413, 280, 'tu-bep-thtb18', 'tproduct');
INSERT INTO `base_tindex` VALUES (414, 281, 'tu-bep-thtb20', 'tproduct');
INSERT INTO `base_tindex` VALUES (415, 282, 'tu-bep-thtb16', 'tproduct');
INSERT INTO `base_tindex` VALUES (416, 283, 'tu-bep-thtb15', 'tproduct');
INSERT INTO `base_tindex` VALUES (417, 284, 'tu-bep-thtb12', 'tproduct');
INSERT INTO `base_tindex` VALUES (418, 285, 'tu-bep-thtb24', 'tproduct');
INSERT INTO `base_tindex` VALUES (419, 286, 'tu-bep-thtb22', 'tproduct');
INSERT INTO `base_tindex` VALUES (420, 287, 'tu-bep-thtb26', 'tproduct');
INSERT INTO `base_tindex` VALUES (421, 288, 'tu-bep-thtb27', 'tproduct');
INSERT INTO `base_tindex` VALUES (422, 289, 'tu-bep-thtb28', 'tproduct');
INSERT INTO `base_tindex` VALUES (423, 290, 'tu-bep-thtb29', 'tproduct');
INSERT INTO `base_tindex` VALUES (424, 291, 'tu-bep-thtb30', 'tproduct');
INSERT INTO `base_tindex` VALUES (425, 292, 'tu-bep-thtb31', 'tproduct');
INSERT INTO `base_tindex` VALUES (426, 293, 'tu-bep-thtb32', 'tproduct');
INSERT INTO `base_tindex` VALUES (427, 294, 'tu-bep-thtb33', 'tproduct');
INSERT INTO `base_tindex` VALUES (428, 295, 'tu-bep-thtb34', 'tproduct');
INSERT INTO `base_tindex` VALUES (429, 296, 'tu-bep-thtb35', 'tproduct');
INSERT INTO `base_tindex` VALUES (430, 297, 'tu-bep-thtb36', 'tproduct');
INSERT INTO `base_tindex` VALUES (431, 298, 'tu-bep-thtb37', 'tproduct');
INSERT INTO `base_tindex` VALUES (432, 299, 'tu-bep-thtb38', 'tproduct');
INSERT INTO `base_tindex` VALUES (433, 300, 'tu-bep-thtb39', 'tproduct');
INSERT INTO `base_tindex` VALUES (434, 301, 'tu-bep-thtb40', 'tproduct');
INSERT INTO `base_tindex` VALUES (435, 302, 'tu-bep-thtb41', 'tproduct');
INSERT INTO `base_tindex` VALUES (436, 303, 'tu-bep-thtb42', 'tproduct');
INSERT INTO `base_tindex` VALUES (437, 304, 'tu-bep-thtb43', 'tproduct');
INSERT INTO `base_tindex` VALUES (438, 305, 'tu-bep-thtb44', 'tproduct');
INSERT INTO `base_tindex` VALUES (439, 306, 'tu-bep-thtb11', 'tproduct');
INSERT INTO `base_tindex` VALUES (440, 307, 'tu-bep-thtb46', 'tproduct');
INSERT INTO `base_tindex` VALUES (441, 308, 'tu-bep-thtb47', 'tproduct');
INSERT INTO `base_tindex` VALUES (442, 309, 'tu-bep-thtb48', 'tproduct');
INSERT INTO `base_tindex` VALUES (443, 310, 'tu-bep-thtb49', 'tproduct');
INSERT INTO `base_tindex` VALUES (444, 311, 'tu-bep-thtb21', 'tproduct');
INSERT INTO `base_tindex` VALUES (445, 312, 'tu-bep-thtb51', 'tproduct');
INSERT INTO `base_tindex` VALUES (446, 313, 'tu-bep-thtb52', 'tproduct');
INSERT INTO `base_tindex` VALUES (447, 314, 'tu-bep-thtb53', 'tproduct');
INSERT INTO `base_tindex` VALUES (448, 315, 'tu-bep-thtb54', 'tproduct');
INSERT INTO `base_tindex` VALUES (449, 316, 'tu-bep-thtb55', 'tproduct');
INSERT INTO `base_tindex` VALUES (450, 317, 'tu-bep-thtb54', 'tproduct');
INSERT INTO `base_tindex` VALUES (451, 318, 'tu-bep-thtb56', 'tproduct');
INSERT INTO `base_tindex` VALUES (452, 319, 'tu-bep-thtb20', 'tproduct');
INSERT INTO `base_tindex` VALUES (453, 320, 'tu-bep-thtb45', 'tproduct');
INSERT INTO `base_tindex` VALUES (454, 321, 'phong-khach-thpk14', 'tproduct');
INSERT INTO `base_tindex` VALUES (455, 322, 'phong-khach-thpk15', 'tproduct');
INSERT INTO `base_tindex` VALUES (456, 323, 'phong-khach-thpk16', 'tproduct');
INSERT INTO `base_tindex` VALUES (457, 324, 'phong-khach-thpk17', 'tproduct');
INSERT INTO `base_tindex` VALUES (458, 325, 'phong-khach-thpk18', 'tproduct');
INSERT INTO `base_tindex` VALUES (459, 326, 'phong-khach-thpk19', 'tproduct');
INSERT INTO `base_tindex` VALUES (460, 327, 'phong-khach-thpk20', 'tproduct');
INSERT INTO `base_tindex` VALUES (461, 328, 'phong-khach-thpk21', 'tproduct');
INSERT INTO `base_tindex` VALUES (462, 329, 'phong-khach-thpk22', 'tproduct');
INSERT INTO `base_tindex` VALUES (463, 330, 'phong-khach-thpk23', 'tproduct');
INSERT INTO `base_tindex` VALUES (464, 331, 'phong-khach-thpk24', 'tproduct');
INSERT INTO `base_tindex` VALUES (465, 332, 'phong-khach-thpk25', 'tproduct');
INSERT INTO `base_tindex` VALUES (466, 333, 'phong-khach-thpk26', 'tproduct');
INSERT INTO `base_tindex` VALUES (467, 334, 'phong-khach-thpk27', 'tproduct');
INSERT INTO `base_tindex` VALUES (468, 335, 'phong-khach-thpk28', 'tproduct');
INSERT INTO `base_tindex` VALUES (469, 336, 'phong-khach-thpk29', 'tproduct');
INSERT INTO `base_tindex` VALUES (470, 337, 'phong-khach-thpk30', 'tproduct');
INSERT INTO `base_tindex` VALUES (471, 338, 'phong-khach-thpk31', 'tproduct');
INSERT INTO `base_tindex` VALUES (472, 339, 'phong-khach-thpk32', 'tproduct');
INSERT INTO `base_tindex` VALUES (473, 340, 'phong-khach-thpk33', 'tproduct');
INSERT INTO `base_tindex` VALUES (474, 341, 'phong-khach-thpk34', 'tproduct');
INSERT INTO `base_tindex` VALUES (475, 342, 'phong-khach-thpk35', 'tproduct');
INSERT INTO `base_tindex` VALUES (476, 343, 'phong-khach-thpk36', 'tproduct');
INSERT INTO `base_tindex` VALUES (477, 344, 'phong-khach-thpk37', 'tproduct');
INSERT INTO `base_tindex` VALUES (478, 345, 'phong-khach-thpk38', 'tproduct');
INSERT INTO `base_tindex` VALUES (479, 346, 'phong-khach-thpk39', 'tproduct');
INSERT INTO `base_tindex` VALUES (480, 347, 'phong-ngu-thpn16', 'tproduct');
INSERT INTO `base_tindex` VALUES (481, 348, 'phong-ngu-thpn17', 'tproduct');
INSERT INTO `base_tindex` VALUES (482, 349, 'phong-ngu-thpn18', 'tproduct');
INSERT INTO `base_tindex` VALUES (483, 350, 'phong-ngu-thpn20', 'tproduct');
INSERT INTO `base_tindex` VALUES (484, 351, 'phong-ngu-thpn21', 'tproduct');
INSERT INTO `base_tindex` VALUES (485, 352, 'phong-ngu-thpn22', 'tproduct');
INSERT INTO `base_tindex` VALUES (486, 353, 'phong-ngu-thpn23', 'tproduct');
INSERT INTO `base_tindex` VALUES (487, 354, 'phong-ngu-thpn24', 'tproduct');
INSERT INTO `base_tindex` VALUES (488, 355, 'phong-ngu-thpn25', 'tproduct');
INSERT INTO `base_tindex` VALUES (489, 356, 'phong-ngu-thpn26', 'tproduct');
INSERT INTO `base_tindex` VALUES (490, 357, 'phong-ngu-thpn27', 'tproduct');
INSERT INTO `base_tindex` VALUES (491, 358, 'phong-ngu-thpn28', 'tproduct');
INSERT INTO `base_tindex` VALUES (492, 359, 'phong-ngu-thpn29', 'tproduct');
INSERT INTO `base_tindex` VALUES (493, 360, 'phong-ngu-thpn30', 'tproduct');
INSERT INTO `base_tindex` VALUES (494, 361, 'phong-ngu-thpn31', 'tproduct');
INSERT INTO `base_tindex` VALUES (495, 362, 'phong-ngu-thpn32', 'tproduct');
INSERT INTO `base_tindex` VALUES (496, 363, 'phong-ngu-thpn33', 'tproduct');
INSERT INTO `base_tindex` VALUES (497, 364, 'phong-ngu-thpn34', 'tproduct');
INSERT INTO `base_tindex` VALUES (498, 365, 'phong-ngu-thpn35', 'tproduct');
INSERT INTO `base_tindex` VALUES (499, 366, 'phong-ngu-thpn36', 'tproduct');
INSERT INTO `base_tindex` VALUES (500, 367, 'phong-ngu-thpn37', 'tproduct');
INSERT INTO `base_tindex` VALUES (501, 368, 'phong-ngu-thpn38', 'tproduct');
INSERT INTO `base_tindex` VALUES (502, 369, 'phong-ngu-thpn39', 'tproduct');
INSERT INTO `base_tindex` VALUES (503, 370, 'phong-ngu-thpn40', 'tproduct');
INSERT INTO `base_tindex` VALUES (504, 371, 'phong-ngu-thpn41', 'tproduct');
INSERT INTO `base_tindex` VALUES (505, 372, 'phong-ngu-thpn42', 'tproduct');
INSERT INTO `base_tindex` VALUES (506, 373, 'phong-ngu-thpn43', 'tproduct');
INSERT INTO `base_tindex` VALUES (507, 374, 'phong-ngu-thpn44', 'tproduct');
INSERT INTO `base_tindex` VALUES (508, 375, 'giuong-ngu-thgn14', 'tproduct');
INSERT INTO `base_tindex` VALUES (509, 376, 'phong-ngu-thpn60', 'tproduct');
INSERT INTO `base_tindex` VALUES (510, 377, 'phong-ngu-thpn61', 'tproduct');
INSERT INTO `base_tindex` VALUES (511, 378, 'giuong-ngu-thgn17', 'tproduct');
INSERT INTO `base_tindex` VALUES (512, 379, 'giuong-ngu-thgn18', 'tproduct');
INSERT INTO `base_tindex` VALUES (513, 380, 'giuong-ngu-thgn19', 'tproduct');
INSERT INTO `base_tindex` VALUES (514, 381, 'giuong-ngu-thgn20', 'tproduct');
INSERT INTO `base_tindex` VALUES (515, 382, 'giuong-ngu-thgn21', 'tproduct');
INSERT INTO `base_tindex` VALUES (516, 383, 'giuong-ngu-thgn22', 'tproduct');
INSERT INTO `base_tindex` VALUES (517, 384, 'giuong-ngu-thgn23', 'tproduct');
INSERT INTO `base_tindex` VALUES (518, 385, 'giuong-ngu-thgn24', 'tproduct');
INSERT INTO `base_tindex` VALUES (519, 386, 'giuong-ngu-thgn25', 'tproduct');
INSERT INTO `base_tindex` VALUES (520, 387, 'giuong-ngu-thgn26', 'tproduct');
INSERT INTO `base_tindex` VALUES (521, 388, 'giuong-ngu-thgn27', 'tproduct');
INSERT INTO `base_tindex` VALUES (522, 389, 'giuong-ngu-thgn28', 'tproduct');
INSERT INTO `base_tindex` VALUES (523, 390, 'giuong-ngu-thgn29', 'tproduct');
INSERT INTO `base_tindex` VALUES (524, 391, 'giuong-ngu-thgn30', 'tproduct');
INSERT INTO `base_tindex` VALUES (525, 392, 'giuong-ngu-thgn31', 'tproduct');
INSERT INTO `base_tindex` VALUES (526, 393, 'giuong-ngu-thgn32', 'tproduct');
INSERT INTO `base_tindex` VALUES (527, 394, 'giuong-ngu-thgn33', 'tproduct');
INSERT INTO `base_tindex` VALUES (528, 395, 'giuong-ngu-thgn34', 'tproduct');
INSERT INTO `base_tindex` VALUES (529, 396, 'giuong-ngu-thgn35', 'tproduct');
INSERT INTO `base_tindex` VALUES (530, 397, 'giuong-ngu-thgn36', 'tproduct');
INSERT INTO `base_tindex` VALUES (531, 398, 'giuong-ngu-thgn37', 'tproduct');
INSERT INTO `base_tindex` VALUES (532, 399, 'giuong-ngu-thgn38', 'tproduct');
INSERT INTO `base_tindex` VALUES (533, 400, 'giuong-ngu-thgn39', 'tproduct');
INSERT INTO `base_tindex` VALUES (534, 401, 'giuong-ngu-thgn40', 'tproduct');
INSERT INTO `base_tindex` VALUES (535, 402, 'giuong-ngu-thgn41', 'tproduct');
INSERT INTO `base_tindex` VALUES (536, 403, 'giuong-ngu-thgn42', 'tproduct');
INSERT INTO `base_tindex` VALUES (537, 404, 'giuong-ngu-thgn43', 'tproduct');
INSERT INTO `base_tindex` VALUES (538, 405, 'giuong-ngu-thgn44', 'tproduct');
INSERT INTO `base_tindex` VALUES (539, 406, 'giuong-ngu-thgn45', 'tproduct');
INSERT INTO `base_tindex` VALUES (540, 407, 'giuong-ngu-thgn46', 'tproduct');
INSERT INTO `base_tindex` VALUES (541, 408, 'giuong-ngu-thgn47', 'tproduct');
INSERT INTO `base_tindex` VALUES (542, 409, 'giuong-ngu-thgn48', 'tproduct');
INSERT INTO `base_tindex` VALUES (543, 410, 'giuong-ngu-thgn49', 'tproduct');
INSERT INTO `base_tindex` VALUES (544, 411, 'giuong-ngu-thgn50', 'tproduct');
INSERT INTO `base_tindex` VALUES (545, 412, 'giuong-ngu-thgn51', 'tproduct');
INSERT INTO `base_tindex` VALUES (546, 413, 'giuong-ngu-thgn52', 'tproduct');
INSERT INTO `base_tindex` VALUES (547, 414, 'giuong-ngu-thgn53', 'tproduct');
INSERT INTO `base_tindex` VALUES (548, 415, 'giuong-ngu-thgn54', 'tproduct');
INSERT INTO `base_tindex` VALUES (549, 416, 'giuong-ngu-thgn55', 'tproduct');
INSERT INTO `base_tindex` VALUES (550, 417, 'giuong-ngu-thgn56', 'tproduct');
INSERT INTO `base_tindex` VALUES (551, 418, 'giuong-ngu-thgn57', 'tproduct');
INSERT INTO `base_tindex` VALUES (552, 419, 'giuong-ngu-thgn58', 'tproduct');
INSERT INTO `base_tindex` VALUES (553, 420, 'giuong-ngu-thgn59', 'tproduct');
INSERT INTO `base_tindex` VALUES (554, 421, 'giuong-ngu-thgn60', 'tproduct');
INSERT INTO `base_tindex` VALUES (555, 422, 'giuong-ngu-thgn61', 'tproduct');
INSERT INTO `base_tindex` VALUES (556, 423, 'giuong-ngu-thgn62', 'tproduct');
INSERT INTO `base_tindex` VALUES (557, 424, 'tu-ao-thta14', 'tproduct');
INSERT INTO `base_tindex` VALUES (558, 425, 'tu-ao-thta15', 'tproduct');
INSERT INTO `base_tindex` VALUES (559, 426, 'tu-ao-thta16', 'tproduct');
INSERT INTO `base_tindex` VALUES (560, 427, 'tu-ao-thta17', 'tproduct');
INSERT INTO `base_tindex` VALUES (561, 428, 'tu-ao-thta18', 'tproduct');
INSERT INTO `base_tindex` VALUES (562, 429, 'tu-ao-thta19', 'tproduct');
INSERT INTO `base_tindex` VALUES (563, 430, 'tu-ao-thta20', 'tproduct');
INSERT INTO `base_tindex` VALUES (564, 431, 'tu-ao-thta21', 'tproduct');
INSERT INTO `base_tindex` VALUES (565, 432, 'tu-ao-thta22', 'tproduct');
INSERT INTO `base_tindex` VALUES (566, 433, 'tu-ao-thta23', 'tproduct');
INSERT INTO `base_tindex` VALUES (567, 434, 'tu-ao-thta24', 'tproduct');
INSERT INTO `base_tindex` VALUES (568, 435, 'tu-ao-thta25', 'tproduct');
INSERT INTO `base_tindex` VALUES (569, 436, 'tu-ao-thta26', 'tproduct');
INSERT INTO `base_tindex` VALUES (570, 437, 'tu-ao-thta27', 'tproduct');
INSERT INTO `base_tindex` VALUES (571, 438, 'tu-ao-thta28', 'tproduct');
INSERT INTO `base_tindex` VALUES (572, 439, 'tu-ao-thta29', 'tproduct');
INSERT INTO `base_tindex` VALUES (573, 440, 'tu-ao-thta30', 'tproduct');
INSERT INTO `base_tindex` VALUES (574, 441, 'tu-ao-thta31', 'tproduct');
INSERT INTO `base_tindex` VALUES (575, 442, 'tu-ao-thta32', 'tproduct');
INSERT INTO `base_tindex` VALUES (576, 443, 'tu-ao-thta33', 'tproduct');
INSERT INTO `base_tindex` VALUES (577, 444, 'tu-ao-thta34', 'tproduct');
INSERT INTO `base_tindex` VALUES (578, 445, 'tu-ao-thta35', 'tproduct');
INSERT INTO `base_tindex` VALUES (579, 446, 'tu-ao-thta36', 'tproduct');
INSERT INTO `base_tindex` VALUES (580, 447, 'tu-ao-thta37', 'tproduct');
INSERT INTO `base_tindex` VALUES (581, 448, 'tu-ao-thta38', 'tproduct');
INSERT INTO `base_tindex` VALUES (582, 449, 'tu-ao-thta39', 'tproduct');
INSERT INTO `base_tindex` VALUES (583, 450, 'tu-ao-thta40', 'tproduct');
INSERT INTO `base_tindex` VALUES (584, 451, 'tu-ao-thta38', 'tproduct');
INSERT INTO `base_tindex` VALUES (585, 452, 'tu-ao-thta40', 'tproduct');
INSERT INTO `base_tindex` VALUES (586, 453, 'tu-ao-thta41', 'tproduct');
INSERT INTO `base_tindex` VALUES (587, 454, 'tu-ao-thta42', 'tproduct');
INSERT INTO `base_tindex` VALUES (588, 455, 'tu-ao-thta36', 'tproduct');
INSERT INTO `base_tindex` VALUES (589, 456, 'tu-ao-thta46', 'tproduct');
INSERT INTO `base_tindex` VALUES (590, 457, 'tu-ao-thta25', 'tproduct');
INSERT INTO `base_tindex` VALUES (591, 458, 'tu-ao-thta15', 'tproduct');
INSERT INTO `base_tindex` VALUES (592, 459, 'tu-ao-thta11', 'tproduct');
INSERT INTO `base_tindex` VALUES (593, 460, 'tu-ao-thta11', 'tproduct');
INSERT INTO `base_tindex` VALUES (594, 461, 'tu-ao-thta511', 'tproduct');
INSERT INTO `base_tindex` VALUES (595, 462, 'tu-ao-thta36', 'tproduct');
INSERT INTO `base_tindex` VALUES (596, 463, 'tu-ao-thta53', 'tproduct');
INSERT INTO `base_tindex` VALUES (597, 464, 'tu-ao-thta32', 'tproduct');
INSERT INTO `base_tindex` VALUES (598, 465, 'tu-ao-thta55', 'tproduct');
INSERT INTO `base_tindex` VALUES (599, 466, 'tu-ao-thta27', 'tproduct');
INSERT INTO `base_tindex` VALUES (600, 467, 'tu-bep-thtb50', 'tproduct');
INSERT INTO `base_tindex` VALUES (601, 468, 'tu-bep-thtb42', 'tproduct');
INSERT INTO `base_tindex` VALUES (602, 469, 'phong-khach-thpk40', 'tproduct');
INSERT INTO `base_tindex` VALUES (603, 470, 'phong-khach-thpk35', 'tproduct');
INSERT INTO `base_tindex` VALUES (604, 471, 'phong-khach-thpk20', 'tproduct');
INSERT INTO `base_tindex` VALUES (605, 472, 'giuong-ngu-thgn63', 'tproduct');
INSERT INTO `base_tindex` VALUES (606, 473, 'phong-ngu-thpn67', 'tproduct');
INSERT INTO `base_tindex` VALUES (607, 474, 'ke-tivi-thtv52', 'tproduct');
INSERT INTO `base_tindex` VALUES (608, 475, 'ke-tivi-thtv16', 'tproduct');
INSERT INTO `base_tindex` VALUES (609, 476, 'ke-tivi-thtv61', 'tproduct');
INSERT INTO `base_tindex` VALUES (610, 477, 'phong-ngu-thpn45', 'tproduct');
INSERT INTO `base_tindex` VALUES (611, 478, 'phong-ngu-thpn46', 'tproduct');
INSERT INTO `base_tindex` VALUES (612, 479, 'tu-bep-thtb57', 'tproduct');
INSERT INTO `base_tindex` VALUES (613, 480, 'ke-tivi-thtv61', 'tproduct');
INSERT INTO `base_tindex` VALUES (614, 481, 'tu-bep-thtb55', 'tproduct');
INSERT INTO `base_tindex` VALUES (615, 482, 'tu-bep-thtb51', 'tproduct');
INSERT INTO `base_tindex` VALUES (616, 483, 'tu-bep-thtb29', 'tproduct');
INSERT INTO `base_tindex` VALUES (617, 484, 'tu-bep-thtb61', 'tproduct');
INSERT INTO `base_tindex` VALUES (618, 485, 'tu-bep-thtb15', 'tproduct');
INSERT INTO `base_tindex` VALUES (619, 486, 'tu-bep-thtb14', 'tproduct');
INSERT INTO `base_tindex` VALUES (620, 487, 'phong-khach-thpk41', 'tproduct');
INSERT INTO `base_tindex` VALUES (621, 488, 'phong-ngu-thpn07', 'tproduct');
INSERT INTO `base_tindex` VALUES (622, 489, 'phong-khach-thpk42', 'tproduct');
INSERT INTO `base_tindex` VALUES (623, 490, 'phong-khach-thpk43', 'tproduct');
INSERT INTO `base_tindex` VALUES (624, 491, 'phong-khach-thpk44', 'tproduct');
INSERT INTO `base_tindex` VALUES (625, 492, 'phong-khach-thpk45', 'tproduct');
INSERT INTO `base_tindex` VALUES (626, 493, 'phong-khach-thpk46', 'tproduct');
INSERT INTO `base_tindex` VALUES (627, 494, 'phong-khach-thpk47', 'tproduct');
INSERT INTO `base_tindex` VALUES (628, 495, 'phong-khach-thpk45', 'tproduct');
INSERT INTO `base_tindex` VALUES (629, 496, 'phong-khach-thpk49', 'tproduct');
INSERT INTO `base_tindex` VALUES (630, 497, 'phong-khach-thpk42', 'tproduct');
INSERT INTO `base_tindex` VALUES (631, 498, 'phong-khach-thpk47', 'tproduct');
INSERT INTO `base_tindex` VALUES (632, 499, 'phong-khach-thpk44', 'tproduct');
INSERT INTO `base_tindex` VALUES (633, 500, 'phong-khach-thpk43', 'tproduct');
INSERT INTO `base_tindex` VALUES (634, 501, 'tu-bep-thtb19', 'tproduct');
INSERT INTO `base_tindex` VALUES (635, 502, 'tu-bep-thtb37', 'tproduct');
INSERT INTO `base_tindex` VALUES (636, 503, 'tu-bep-thtb66', 'tproduct');
INSERT INTO `base_tindex` VALUES (637, 504, 'tu-bep-thtb16', 'tproduct');
INSERT INTO `base_tindex` VALUES (638, 505, 'tu-bep-thtb68', 'tproduct');
INSERT INTO `base_tindex` VALUES (639, 506, 'tu-bep-thtb69', 'tproduct');
INSERT INTO `base_tindex` VALUES (640, 507, 'tu-bep-thtb70', 'tproduct');
INSERT INTO `base_tindex` VALUES (641, 508, 'tu-bep-thtb71', 'tproduct');
INSERT INTO `base_tindex` VALUES (642, 509, 'tu-bep-thtb56', 'tproduct');
INSERT INTO `base_tindex` VALUES (643, 510, 'tu-bep-thtb43', 'tproduct');
INSERT INTO `base_tindex` VALUES (644, 511, 'tu-bep-thtb42', 'tproduct');
INSERT INTO `base_tindex` VALUES (645, 512, 'tu-bep-thtb38', 'tproduct');
INSERT INTO `base_tindex` VALUES (646, 513, 'tu-bep-thtb76', 'tproduct');
INSERT INTO `base_tindex` VALUES (647, 514, 'tu-bep-thtb77', 'tproduct');
INSERT INTO `base_tindex` VALUES (648, 515, 'tu-bep-thtb78', 'tproduct');
INSERT INTO `base_tindex` VALUES (649, 516, 'tu-bep-thtb79', 'tproduct');
INSERT INTO `base_tindex` VALUES (650, 517, 'tu-bep-thtb80', 'tproduct');
INSERT INTO `base_tindex` VALUES (651, 518, 'tu-bep-thtb45', 'tproduct');
INSERT INTO `base_tindex` VALUES (652, 519, 'tu-bep-thtb41', 'tproduct');
INSERT INTO `base_tindex` VALUES (653, 520, 'tu-bep-thtb80', 'tproduct');
INSERT INTO `base_tindex` VALUES (654, 521, 'tu-bep-thtb84', 'tproduct');
INSERT INTO `base_tindex` VALUES (655, 522, 'tu-bep-thtb27', 'tproduct');
INSERT INTO `base_tindex` VALUES (656, 523, 'tu-bep-thtb28', 'tproduct');
INSERT INTO `base_tindex` VALUES (657, 524, 'tu-bep-thtb37', 'tproduct');
INSERT INTO `base_tindex` VALUES (658, 525, 'tu-bep-thtb31', 'tproduct');
INSERT INTO `base_tindex` VALUES (659, 526, 'tu-bep-thtb25', 'tproduct');
INSERT INTO `base_tindex` VALUES (660, 527, 'phong-ngu-thpn47', 'tproduct');
INSERT INTO `base_tindex` VALUES (661, 528, 'phong-ngu-thpn48', 'tproduct');
INSERT INTO `base_tindex` VALUES (662, 529, 'phong-ngu-thpn49', 'tproduct');
INSERT INTO `base_tindex` VALUES (663, 530, 'phong-ngu-thpn50', 'tproduct');
INSERT INTO `base_tindex` VALUES (664, 531, 'phong-ngu-thpn51', 'tproduct');
INSERT INTO `base_tindex` VALUES (665, 532, 'phong-ngu-thpn52', 'tproduct');
INSERT INTO `base_tindex` VALUES (666, 533, 'phong-ngu-thpn53', 'tproduct');
INSERT INTO `base_tindex` VALUES (667, 534, 'phong-ngu-thpn54', 'tproduct');
INSERT INTO `base_tindex` VALUES (668, 535, 'phong-ngu-thpn55', 'tproduct');
INSERT INTO `base_tindex` VALUES (669, 536, 'phong-ngu-thpn56', 'tproduct');
INSERT INTO `base_tindex` VALUES (670, 537, 'phong-ngu-thpn57', 'tproduct');
INSERT INTO `base_tindex` VALUES (671, 538, 'phong-ngu-thpn58', 'tproduct');
INSERT INTO `base_tindex` VALUES (672, 539, 'phong-ngu-thpn52', 'tproduct');
INSERT INTO `base_tindex` VALUES (673, 540, 'phong-ngu-thpn37', 'tproduct');
INSERT INTO `base_tindex` VALUES (674, 541, 'phong-ngu-thpn34', 'tproduct');
INSERT INTO `base_tindex` VALUES (675, 542, 'phong-ngu-thpn31', 'tproduct');
INSERT INTO `base_tindex` VALUES (676, 543, 'giuong-ngu-thgn65', 'tproduct');
INSERT INTO `base_tindex` VALUES (677, 544, 'giuong-ngu-thgn58', 'tproduct');
INSERT INTO `base_tindex` VALUES (678, 545, 'giuong-ngu-thgn62', 'tproduct');
INSERT INTO `base_tindex` VALUES (679, 546, 'giuong-ngu-thgn57', 'tproduct');
INSERT INTO `base_tindex` VALUES (680, 547, 'giuong-ngu-thgn57', 'tproduct');
INSERT INTO `base_tindex` VALUES (681, 548, 'giuong-ngu-thgn57', 'tproduct');
INSERT INTO `base_tindex` VALUES (682, 549, 'giuong-ngu-thgn42', 'tproduct');
INSERT INTO `base_tindex` VALUES (683, 550, 'giuong-ngu-thgn56', 'tproduct');
INSERT INTO `base_tindex` VALUES (684, 551, 'giuong-ngu-thgn44', 'tproduct');
INSERT INTO `base_tindex` VALUES (685, 552, 'giuong-ngu-thgn32', 'tproduct');
INSERT INTO `base_tindex` VALUES (686, 553, 'giuong-ngu-thgn30', 'tproduct');
INSERT INTO `base_tindex` VALUES (687, 554, 'giuong-ngu-thgn20', 'tproduct');
INSERT INTO `base_tindex` VALUES (688, 555, 'phong-ngu-thpn62', 'tproduct');
INSERT INTO `base_tindex` VALUES (689, 556, 'giuong-ngu-thgn17', 'tproduct');
INSERT INTO `base_tindex` VALUES (690, 557, 'giuong-ngu-thgn16', 'tproduct');
INSERT INTO `base_tindex` VALUES (691, 558, 'giuong-ngu-thgn15', 'tproduct');
INSERT INTO `base_tindex` VALUES (692, 559, 'giuong-ngu-thgn12', 'tproduct');
INSERT INTO `base_tindex` VALUES (693, 560, 'giuong-ngu-thgn58', 'tproduct');
INSERT INTO `base_tindex` VALUES (694, 561, 'giuong-ngu-thgn61', 'tproduct');
INSERT INTO `base_tindex` VALUES (695, 562, 'tu-bep-thtb28', 'tproduct');
INSERT INTO `base_tindex` VALUES (696, 563, 'phong-ngu-thpn64', 'tproduct');
INSERT INTO `base_tindex` VALUES (697, 564, 'phong-ngu-thpn65', 'tproduct');
INSERT INTO `base_tindex` VALUES (698, 565, 'phong-ngu-thpn66', 'tproduct');
INSERT INTO `base_tindex` VALUES (699, 566, 'tu-bep-thtb26', 'tproduct');
INSERT INTO `base_tindex` VALUES (700, 567, 'phong-khach-thpk49', 'tproduct');
INSERT INTO `base_tindex` VALUES (701, 568, 'ke-tivi-thtv59', 'tproduct');
INSERT INTO `base_tindex` VALUES (702, 569, 'tu-bep-thtb34', 'tproduct');
INSERT INTO `base_tindex` VALUES (703, 570, 'phong-ngu-thpn68', 'tproduct');
INSERT INTO `base_tindex` VALUES (704, 571, 'phong-ngu-thpn34', 'tproduct');
INSERT INTO `base_tindex` VALUES (705, 572, 'giuong-ngu-thgn63', 'tproduct');
INSERT INTO `base_tindex` VALUES (706, 573, 'giuong-ngu-thgn64', 'tproduct');
INSERT INTO `base_tindex` VALUES (707, 574, 'giuong-ngu-thgn65', 'tproduct');
INSERT INTO `base_tindex` VALUES (708, 575, 'giuong-ngu-thgn66', 'tproduct');
INSERT INTO `base_tindex` VALUES (709, 576, 'giuong-ngu-thgn67', 'tproduct');
INSERT INTO `base_tindex` VALUES (710, 577, 'giuong-ngu-thgn68', 'tproduct');
INSERT INTO `base_tindex` VALUES (711, 578, 'giuong-ngu-thgn69', 'tproduct');
INSERT INTO `base_tindex` VALUES (712, 579, 'giuong-ngu-thgn70', 'tproduct');
INSERT INTO `base_tindex` VALUES (713, 580, 'giuong-ngu-thgn71', 'tproduct');
INSERT INTO `base_tindex` VALUES (714, 581, 'ke-tivi-thtv60', 'tproduct');
INSERT INTO `base_tindex` VALUES (715, 582, 'phong-khach-thpk48', 'tproduct');
INSERT INTO `base_tindex` VALUES (716, 583, 'phong-khach-thpk49', 'tproduct');
INSERT INTO `base_tindex` VALUES (717, 584, 'phong-khach-thpk50', 'tproduct');
INSERT INTO `base_tindex` VALUES (718, 585, 'phong-khach-thpk51', 'tproduct');
INSERT INTO `base_tindex` VALUES (719, 586, 'phong-khach-thpk52', 'tproduct');
INSERT INTO `base_tindex` VALUES (720, 587, 'phong-khach-thpk53', 'tproduct');
INSERT INTO `base_tindex` VALUES (721, 588, 'phong-khach-thpk54', 'tproduct');
INSERT INTO `base_tindex` VALUES (722, 589, 'phong-khach-thpk55', 'tproduct');
INSERT INTO `base_tindex` VALUES (723, 590, 'phong-khach-thpk56', 'tproduct');
INSERT INTO `base_tindex` VALUES (724, 591, 'phong-khach-thpk57', 'tproduct');
INSERT INTO `base_tindex` VALUES (725, 592, 'phong-khach-thpk58', 'tproduct');
INSERT INTO `base_tindex` VALUES (726, 593, 'phong-khach-thpk59', 'tproduct');
INSERT INTO `base_tindex` VALUES (727, 594, 'phong-khach-thpk52', 'tproduct');
INSERT INTO `base_tindex` VALUES (728, 595, 'tu-ao-thta43', 'tproduct');
INSERT INTO `base_tindex` VALUES (729, 596, 'tu-ao-thta44', 'tproduct');
INSERT INTO `base_tindex` VALUES (730, 597, 'tu-ao-thta45', 'tproduct');
INSERT INTO `base_tindex` VALUES (731, 598, 'tu-ao-thta46', 'tproduct');
INSERT INTO `base_tindex` VALUES (732, 599, 'tu-ao-thta47', 'tproduct');
INSERT INTO `base_tindex` VALUES (733, 600, 'tu-ao-thta48', 'tproduct');
INSERT INTO `base_tindex` VALUES (734, 601, 'tu-ao-thta49', 'tproduct');
INSERT INTO `base_tindex` VALUES (735, 602, 'tu-ao-thta50', 'tproduct');
INSERT INTO `base_tindex` VALUES (736, 603, 'tu-ao-thta51', 'tproduct');
INSERT INTO `base_tindex` VALUES (737, 604, 'tu-ao-thta52', 'tproduct');
INSERT INTO `base_tindex` VALUES (738, 605, 'tu-ao-thta53', 'tproduct');
INSERT INTO `base_tindex` VALUES (739, 606, 'tu-ao-thta54', 'tproduct');
INSERT INTO `base_tindex` VALUES (740, 607, 'tu-ao-thta55', 'tproduct');
INSERT INTO `base_tindex` VALUES (741, 608, 'tu-ao-thta56', 'tproduct');
INSERT INTO `base_tindex` VALUES (742, 609, 'tu-ao-thta57', 'tproduct');
INSERT INTO `base_tindex` VALUES (743, 610, 'tu-ao-thta58', 'tproduct');
INSERT INTO `base_tindex` VALUES (744, 611, 'tu-ao-thta59', 'tproduct');
INSERT INTO `base_tindex` VALUES (745, 612, 'tu-ao-thta60', 'tproduct');
INSERT INTO `base_tindex` VALUES (746, 613, 'tu-ao-thta61', 'tproduct');
INSERT INTO `base_tindex` VALUES (747, 614, 'tu-ao-thta58', 'tproduct');
INSERT INTO `base_tindex` VALUES (748, 615, 'tu-ao-thta58', 'tproduct');
INSERT INTO `base_tindex` VALUES (749, 616, 'phong-ngu-thpn69', 'tproduct');
INSERT INTO `base_tindex` VALUES (750, 617, 'phong-ngu-thpn70', 'tproduct');
INSERT INTO `base_tindex` VALUES (751, 618, 'ke-tivi-thtv61', 'tproduct');
INSERT INTO `base_tindex` VALUES (752, 619, 'giuong-ngu-thgn21', 'tproduct');
INSERT INTO `base_tindex` VALUES (753, 620, 'ke-tivi-thtv62', 'tproduct');
INSERT INTO `base_tindex` VALUES (754, 621, 'phong-khach-thpk60', 'tproduct');
INSERT INTO `base_tindex` VALUES (755, 622, 'phong-khach-thpk61', 'tproduct');
INSERT INTO `base_tindex` VALUES (756, 623, 'phong-khach-thpk62', 'tproduct');
INSERT INTO `base_tindex` VALUES (757, 624, 'phong-khach-thpk63', 'tproduct');
INSERT INTO `base_tindex` VALUES (758, 625, 'phong-khach-thpk64', 'tproduct');
INSERT INTO `base_tindex` VALUES (759, 626, 'phong-khach-thpk46', 'tproduct');
INSERT INTO `base_tindex` VALUES (760, 627, 'phong-khach-thpk62', 'tproduct');
INSERT INTO `base_tindex` VALUES (761, 628, 'phong-khach-thpk62', 'tproduct');
INSERT INTO `base_tindex` VALUES (762, 629, 'phong-khach-thpk61', 'tproduct');
INSERT INTO `base_tindex` VALUES (763, 630, 'phong-khach-thpk57', 'tproduct');
INSERT INTO `base_tindex` VALUES (764, 631, 'giuong-ngu-thgn12', 'tproduct');
INSERT INTO `base_tindex` VALUES (765, 632, 'phong-ngu-thpn71', 'tproduct');
INSERT INTO `base_tindex` VALUES (766, 633, 'phong-ngu-thpn72', 'tproduct');
INSERT INTO `base_tindex` VALUES (767, 634, 'phong-ngu-thpn73', 'tproduct');
INSERT INTO `base_tindex` VALUES (768, 635, 'giuong-ngu-thgn70', 'tproduct');
INSERT INTO `base_tindex` VALUES (769, 636, 'giuong-ngu-thgn70', 'tproduct');
INSERT INTO `base_tindex` VALUES (770, 637, 'giuong-ngu-thgn67', 'tproduct');
INSERT INTO `base_tindex` VALUES (771, 638, 'giuong-ngu-thgn65', 'tproduct');
INSERT INTO `base_tindex` VALUES (772, 639, 'ke-tivi-thtv63', 'tproduct');
INSERT INTO `base_tindex` VALUES (773, 640, 'phong-khach-thpk62', 'tproduct');
INSERT INTO `base_tindex` VALUES (774, 641, 'phong-khach-thpk63', 'tproduct');
INSERT INTO `base_tindex` VALUES (775, 642, 'phong-khach-thpk64', 'tproduct');
INSERT INTO `base_tindex` VALUES (776, 643, 'phong-khach-thpk65', 'tproduct');
INSERT INTO `base_tindex` VALUES (777, 644, 'phong-khach-thpk66', 'tproduct');
INSERT INTO `base_tindex` VALUES (778, 645, 'phong-khach-thpk67', 'tproduct');
INSERT INTO `base_tindex` VALUES (779, 646, 'tu-bep-thtb02', 'tproduct');
INSERT INTO `base_tindex` VALUES (780, 647, 'phong-ngu-thpn74', 'tproduct');
INSERT INTO `base_tindex` VALUES (781, 648, 'phong-ngu-thpn75', 'tproduct');
INSERT INTO `base_tindex` VALUES (782, 649, 'phong-ngu-thpn76', 'tproduct');
INSERT INTO `base_tindex` VALUES (783, 650, 'phong-ngu-thpn77', 'tproduct');
INSERT INTO `base_tindex` VALUES (784, 651, 'phong-ngu-thpn78', 'tproduct');
INSERT INTO `base_tindex` VALUES (785, 652, 'ke-tivi-thtv64', 'tproduct');
INSERT INTO `base_tindex` VALUES (786, 653, 'ke-tivi-thtv65', 'tproduct');
INSERT INTO `base_tindex` VALUES (787, 654, 'ke-tivi-thtv66', 'tproduct');
INSERT INTO `base_tindex` VALUES (788, 655, 'ke-tivi-thtv67', 'tproduct');
INSERT INTO `base_tindex` VALUES (789, 656, 'ke-tivi-thtv68', 'tproduct');
INSERT INTO `base_tindex` VALUES (790, 657, 'ke-tivi-thtv69', 'tproduct');
INSERT INTO `base_tindex` VALUES (791, 658, 'ke-tivi-thtv70', 'tproduct');
INSERT INTO `base_tindex` VALUES (792, 659, 'giuong-ngu-thgn72', 'tproduct');
INSERT INTO `base_tindex` VALUES (793, 660, 'giuong-ngu-thgn73', 'tproduct');
INSERT INTO `base_tindex` VALUES (794, 661, 'giuong-ngu-thgn74', 'tproduct');
INSERT INTO `base_tindex` VALUES (795, 662, 'giuong-ngu-thgn75', 'tproduct');
INSERT INTO `base_tindex` VALUES (796, 663, 'giuong-ngu-thgn75', 'tproduct');
INSERT INTO `base_tindex` VALUES (797, 664, 'tu-bep-thtb24', 'tproduct');
INSERT INTO `base_tindex` VALUES (798, 665, 'tu-bep-thtb83', 'tproduct');
INSERT INTO `base_tindex` VALUES (799, 666, 'phong-khach-thpk68', 'tproduct');
INSERT INTO `base_tindex` VALUES (800, 667, 'phong-ngu-thpn79', 'tproduct');
INSERT INTO `base_tindex` VALUES (801, 668, 'phong-ngu-thpn63', 'tproduct');
INSERT INTO `base_tindex` VALUES (802, 669, 'phong-ngu-thpn79', 'tproduct');
INSERT INTO `base_tindex` VALUES (803, 670, 'ke-tivi-thtv71', 'tproduct');
INSERT INTO `base_tindex` VALUES (804, 671, 'ke-tivi-thtv72', 'tproduct');
INSERT INTO `base_tindex` VALUES (805, 672, 'ke-tivi-thtv73', 'tproduct');
INSERT INTO `base_tindex` VALUES (806, 673, 'phong-khach-thpk69', 'tproduct');
INSERT INTO `base_tindex` VALUES (807, 674, 'phong-khach-thpk26', 'tproduct');
INSERT INTO `base_tindex` VALUES (808, 675, 'phong-khach-thpk21', 'tproduct');
INSERT INTO `base_tindex` VALUES (809, 676, 'phong-khach-thpk72', 'tproduct');
INSERT INTO `base_tindex` VALUES (810, 677, 'phong-khach-thpk66', 'tproduct');
INSERT INTO `base_tindex` VALUES (811, 678, 'phong-khach-thpk23', 'tproduct');
INSERT INTO `base_tindex` VALUES (812, 679, 'tu-ao-thta32', 'tproduct');
INSERT INTO `base_tindex` VALUES (813, 680, 'phong-ngu-thpn77', 'tproduct');
INSERT INTO `base_tindex` VALUES (814, 681, 'ke-tivi-thtv74', 'tproduct');
INSERT INTO `base_tindex` VALUES (815, 682, 'ke-tivi-thtv75', 'tproduct');
INSERT INTO `base_tindex` VALUES (816, 683, 'ke-tivi-thtv76', 'tproduct');
INSERT INTO `base_tindex` VALUES (817, 684, 'ke-tivi-thtv77', 'tproduct');
INSERT INTO `base_tindex` VALUES (818, 685, 'ke-tivi-thtv78', 'tproduct');
INSERT INTO `base_tindex` VALUES (819, 686, 'ke-tivi-thtv79', 'tproduct');
INSERT INTO `base_tindex` VALUES (820, 687, 'ke-tivi-thtv80', 'tproduct');
INSERT INTO `base_tindex` VALUES (821, 688, 'ke-tivi-thtv81', 'tproduct');
INSERT INTO `base_tindex` VALUES (822, 689, 'ke-tivi-thtv82', 'tproduct');
INSERT INTO `base_tindex` VALUES (823, 690, 'ke-tivi-thtv83', 'tproduct');
INSERT INTO `base_tindex` VALUES (824, 691, 'ke-tivi-thtv84', 'tproduct');
INSERT INTO `base_tindex` VALUES (825, 692, 'ke-tivi-thtv85', 'tproduct');
INSERT INTO `base_tindex` VALUES (826, 693, 'ke-tivi-thtv86', 'tproduct');
INSERT INTO `base_tindex` VALUES (827, 694, 'ke-tivi-thtv87', 'tproduct');
INSERT INTO `base_tindex` VALUES (828, 695, 'ke-tivi-thtv88', 'tproduct');
INSERT INTO `base_tindex` VALUES (829, 696, 'ke-tivi-thtv89', 'tproduct');
INSERT INTO `base_tindex` VALUES (830, 697, 'ke-tivi-thtv90', 'tproduct');
INSERT INTO `base_tindex` VALUES (831, 698, 'ke-tivi-thtv91', 'tproduct');
INSERT INTO `base_tindex` VALUES (832, 699, 'ke-tivi-thtv92', 'tproduct');
INSERT INTO `base_tindex` VALUES (833, 700, 'ke-tivi-thtv93', 'tproduct');
INSERT INTO `base_tindex` VALUES (834, 701, 'ke-tivi-thtv94', 'tproduct');
INSERT INTO `base_tindex` VALUES (835, 702, 'ke-tivi-thtv95', 'tproduct');
INSERT INTO `base_tindex` VALUES (836, 703, 'ke-tivi-thtv96', 'tproduct');
INSERT INTO `base_tindex` VALUES (837, 704, 'ke-tivi-thtv97', 'tproduct');
INSERT INTO `base_tindex` VALUES (838, 705, 'ke-tivi-thtv98', 'tproduct');
INSERT INTO `base_tindex` VALUES (839, 706, 'ke-tivi-thtv99', 'tproduct');
INSERT INTO `base_tindex` VALUES (840, 707, 'ghj', 'tproduct');
INSERT INTO `base_tindex` VALUES (841, 708, 'ke-tivi-thtv100', 'tproduct');
INSERT INTO `base_tindex` VALUES (842, 709, 'ke-tivi-thtv101', 'tproduct');
INSERT INTO `base_tindex` VALUES (843, 710, 'ke-tivi-thtv102', 'tproduct');
INSERT INTO `base_tindex` VALUES (844, 711, 'ke-tivi-thtv103', 'tproduct');
INSERT INTO `base_tindex` VALUES (845, 712, 'ke-tivi-thtv97', 'tproduct');
INSERT INTO `base_tindex` VALUES (846, 713, 'ke-tivi-thtv94', 'tproduct');
INSERT INTO `base_tindex` VALUES (847, 714, 'ke-tivi-thtv88', 'tproduct');
INSERT INTO `base_tindex` VALUES (848, 715, 'ke-tivi-thtv84', 'tproduct');
INSERT INTO `base_tindex` VALUES (849, 716, 'ke-tivi-thtv83', 'tproduct');
INSERT INTO `base_tindex` VALUES (850, 717, 'ke-tivi-thtv81', 'tproduct');
INSERT INTO `base_tindex` VALUES (851, 718, 'ke-tivi-thtv72', 'tproduct');
INSERT INTO `base_tindex` VALUES (852, 719, 'tu-bep-thtb23', 'tproduct');
INSERT INTO `base_tindex` VALUES (853, 720, 'phong-ngu-thpn15', 'tproduct');
INSERT INTO `base_tindex` VALUES (854, 721, 'ke-tivi-thtv99', 'tproduct');
INSERT INTO `base_tindex` VALUES (855, 722, 'phong-ngu-thpn80', 'tproduct');
INSERT INTO `base_tindex` VALUES (856, 723, 'tu-bep-thtb54', 'tproduct');
INSERT INTO `base_tindex` VALUES (857, 724, 'tu-bep-thtb11', 'tproduct');
INSERT INTO `base_tindex` VALUES (858, 725, 'noi-that-co-dien-thcd01', 'tproduct');
INSERT INTO `base_tindex` VALUES (859, 726, 'noi-that-co-dien-thcd02', 'tproduct');
INSERT INTO `base_tindex` VALUES (860, 727, 'noi-that-co-dien-thcd03', 'tproduct');
INSERT INTO `base_tindex` VALUES (861, 728, 'noi-that-co-dien-thcd04', 'tproduct');
INSERT INTO `base_tindex` VALUES (862, 729, 'noi-that-co-dien-thcd05', 'tproduct');
INSERT INTO `base_tindex` VALUES (863, 730, 'noi-that-co-dien-thcd06', 'tproduct');
INSERT INTO `base_tindex` VALUES (864, 731, 'noi-that-co-dien-thcd07', 'tproduct');
INSERT INTO `base_tindex` VALUES (865, 732, 'noi-that-co-dien-thcd08', 'tproduct');
INSERT INTO `base_tindex` VALUES (866, 733, 'noi-that-co-dien-thcd09', 'tproduct');
INSERT INTO `base_tindex` VALUES (867, 734, 'noi-that-co-dien-thcd10', 'tproduct');
INSERT INTO `base_tindex` VALUES (868, 735, 'noi-that-co-dien-thcd11', 'tproduct');
INSERT INTO `base_tindex` VALUES (869, 736, 'noi-that-co-dien-thcd09', 'tproduct');
INSERT INTO `base_tindex` VALUES (870, 737, 'noi-that-co-dien-thcd13', 'tproduct');
INSERT INTO `base_tindex` VALUES (871, 738, 'noi-that-co-dien-thcd12', 'tproduct');
INSERT INTO `base_tindex` VALUES (872, 739, 'noi-that-co-dien-thcd13', 'tproduct');
INSERT INTO `base_tindex` VALUES (873, 740, 'noi-that-co-dien-thcd14', 'tproduct');
INSERT INTO `base_tindex` VALUES (874, 741, 'noi-that-co-dien-thcd15', 'tproduct');
INSERT INTO `base_tindex` VALUES (875, 742, 'noi-that-co-dien-thcd16', 'tproduct');
INSERT INTO `base_tindex` VALUES (876, 743, 'noi-that-co-dien-thcd17', 'tproduct');
INSERT INTO `base_tindex` VALUES (877, 744, 'noi-that-co-dien-thcd18', 'tproduct');
INSERT INTO `base_tindex` VALUES (878, 745, 'noi-that-co-dien-thcd19', 'tproduct');
INSERT INTO `base_tindex` VALUES (879, 746, 'noi-that-co-dien-thcd20', 'tproduct');
INSERT INTO `base_tindex` VALUES (880, 747, 'noi-that-co-dien-thcd21', 'tproduct');
INSERT INTO `base_tindex` VALUES (881, 748, 'noi-that-co-dien-thcd22', 'tproduct');
INSERT INTO `base_tindex` VALUES (882, 749, 'noi-that-co-dien-thcd23', 'tproduct');
INSERT INTO `base_tindex` VALUES (883, 750, 'noi-that-co-dien-thcd24', 'tproduct');
INSERT INTO `base_tindex` VALUES (884, 751, 'noi-that-co-dien-thcd25', 'tproduct');
INSERT INTO `base_tindex` VALUES (885, 752, 'noi-that-co-dien-thcd26', 'tproduct');
INSERT INTO `base_tindex` VALUES (886, 753, 'noi-that-co-dien-thcd20', 'tproduct');
INSERT INTO `base_tindex` VALUES (887, 754, 'noi-that-co-dien-thcd20', 'tproduct');
INSERT INTO `base_tindex` VALUES (888, 755, 'phong-ngu-thpn81', 'tproduct');
INSERT INTO `base_tindex` VALUES (889, 756, 'phong-ngu-thpn82', 'tproduct');
INSERT INTO `base_tindex` VALUES (890, 757, 'phong-ngu-thpn83', 'tproduct');
INSERT INTO `base_tindex` VALUES (891, 758, 'phong-ngu-thpn84', 'tproduct');
INSERT INTO `base_tindex` VALUES (892, 759, 'ke-tivi-thtv104', 'tproduct');
INSERT INTO `base_tindex` VALUES (893, 760, 'ke-tivi-thtv105', 'tproduct');
INSERT INTO `base_tindex` VALUES (894, 761, 'giuong-ngu-thgn76', 'tproduct');
INSERT INTO `base_tindex` VALUES (895, 762, 'giuong-ngu-thgn77', 'tproduct');
INSERT INTO `base_tindex` VALUES (896, 763, 'giuong-ngu-thgn78', 'tproduct');
INSERT INTO `base_tindex` VALUES (897, 764, 'phong-ngu-thpn85', 'tproduct');
INSERT INTO `base_tindex` VALUES (898, 765, 'phong-khach-thpk69', 'tproduct');
INSERT INTO `base_tindex` VALUES (899, 766, 'phong-khach-thpk70', 'tproduct');
INSERT INTO `base_tindex` VALUES (900, 767, 'ke-tivi-thtv106', 'tproduct');
INSERT INTO `base_tindex` VALUES (901, 768, 'giuong-ngu-thgn79', 'tproduct');
INSERT INTO `base_tindex` VALUES (902, 769, 'tu-bep-thtb10', 'tproduct');
INSERT INTO `base_tindex` VALUES (903, 770, 'phong-ngu-thpn86', 'tproduct');
INSERT INTO `base_tindex` VALUES (904, 771, 'phong-ngu-thpn87', 'tproduct');
INSERT INTO `base_tindex` VALUES (905, 772, 'tu-bep-thtb18', 'tproduct');
INSERT INTO `base_tindex` VALUES (906, 773, 'giuong-ngu-thgn80', 'tproduct');
INSERT INTO `base_tindex` VALUES (907, 774, 'giuong-ngu-thgn81', 'tproduct');
INSERT INTO `base_tindex` VALUES (908, 775, 'phong-ngu-thpn88', 'tproduct');
INSERT INTO `base_tindex` VALUES (909, 776, 'giuong-ngu-thgn82', 'tproduct');
INSERT INTO `base_tindex` VALUES (910, 777, 'ke-tivi-thtv107', 'tproduct');
INSERT INTO `base_tindex` VALUES (911, 778, 'phong-khach-thpk56', 'tproduct');
INSERT INTO `base_tindex` VALUES (912, 779, 'tu-bep-thtb12', 'tproduct');
INSERT INTO `base_tindex` VALUES (913, 780, 'phong-ngu-thpn66', 'tproduct');
INSERT INTO `base_tindex` VALUES (914, 781, 'phong-ngu-thpn63', 'tproduct');
INSERT INTO `base_tindex` VALUES (915, 782, 'tu-bep-thtb06', 'tproduct');
INSERT INTO `base_tindex` VALUES (916, 783, 'tu-bep-thtb54', 'tproduct');
INSERT INTO `base_tindex` VALUES (917, 784, 'phong-khach-thpk40', 'tproduct');
INSERT INTO `base_tindex` VALUES (918, 785, 'phong-ngu-thpn89', 'tproduct');
INSERT INTO `base_tindex` VALUES (919, 786, 'phong-ngu-thpn90', 'tproduct');
INSERT INTO `base_tindex` VALUES (920, 787, 'phong-ngu-thpn91', 'tproduct');
INSERT INTO `base_tindex` VALUES (921, 1, '123', 'tproduct');
INSERT INTO `base_tindex` VALUES (922, 2, 'core-i5-4440(haswell)', 'tproduct');
INSERT INTO `base_tindex` VALUES (923, 3, 'core-i5-4440(haswell)', 'tproduct');
INSERT INTO `base_tindex` VALUES (924, 4, 'cpu-i5-4440(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (925, 5, 'cpu-i5-4440(-sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (926, 6, 'cpu-g860(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (927, 7, 'cpu-i5-4430(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (928, 8, 'cpu-i5-446(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (929, 9, 'cpu-i5-4570(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (930, 10, 'cpu-i5-4590(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (931, 11, 'cpu-i7-2600(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (932, 12, 'cpu-core-i7-3770(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (933, 13, 'cpu-i7-3770k(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (934, 14, 'cpu-core-i3-540(sk-1156)', 'tproduct');
INSERT INTO `base_tindex` VALUES (935, 15, 'cpu-g540(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (936, 16, 'cpu-g550(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (937, 17, 'cpu-g1610(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (938, 18, 'cpu-g1630(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (939, 19, 'cpu-g620(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (940, 20, 'cpu-g630(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (941, 21, 'cpu-g640(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (942, 22, 'cpu-g645(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (943, 23, 'cpu-g840(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (944, 24, 'cpu-g850(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (945, 25, 'cpu-g860(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (946, 26, 'cpu-g2010(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (947, 27, 'cpu-g2020(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (948, 28, 'cpu-g2030(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (949, 29, 'cpu-g2120(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (950, 30, 'cpu-g2130(-sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (951, 31, 'cpu-core-i3-2100(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (952, 32, 'cpu-core-i3-2120(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (953, 33, 'cpu-core-i3-2130(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (954, 34, 'cpu-core-i3-3210(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (955, 35, 'cpu-core-i3-3220(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (956, 36, 'cpu-core-i3-3240(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (957, 37, 'cpu-core-i5-2300(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (958, 38, 'cpu-core-i5-2320(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (959, 39, 'cpu-core-i5-2400(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (960, 40, 'cpu-core-i5-2500(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (961, 41, 'cpu-core-i5-2500k(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (962, 42, 'cpu-core-i5-3330(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (963, 43, 'cpu-core-i5-3450(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (964, 44, 'cpu-core-i5-3470(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (965, 45, 'cpu-core-i5-3570s(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (966, 46, 'cpu-core-i5-3570(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (967, 47, 'cpu-core-i5-3570k(sk-1155)', 'tproduct');
INSERT INTO `base_tindex` VALUES (968, 48, 'cpu-g1830(-sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (969, 49, 'cpu-g1840(-sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (970, 50, 'cpu-g3220(-sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (971, 51, 'cpu-g3240(-sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (972, 52, 'cpu-g3420(-sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (973, 53, 'cpu-core-i3-4130(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (974, 54, 'cpu-core-i3-4150(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (975, 55, 'cpu-core-i3-4160(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (976, 56, 'cpu-core-i5-4690(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (977, 57, 'cpu-core-i5-4690k(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (978, 58, 'cpu-core-i7-4770t(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (979, 59, 'cpu-core-i7-4770(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (980, 60, 'cpu-core-i7-4770k(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (981, 61, 'cpu-core-i7-4790t(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (982, 62, 'cpu-core-i7-4790(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (983, 63, 'cpu-core-i7-4790k(sk-1150)', 'tproduct');
INSERT INTO `base_tindex` VALUES (984, 64, 'main-h61-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (985, 65, 'main-h61-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (986, 66, 'main-h61-hieu-asus', 'tproduct');
INSERT INTO `base_tindex` VALUES (987, 67, 'main-h61-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (988, 68, 'main-h61-hieu-intel', 'tproduct');
INSERT INTO `base_tindex` VALUES (989, 69, 'main-h61-hieu-msi', 'tproduct');
INSERT INTO `base_tindex` VALUES (990, 70, 'main-h61-hieu-asrock', 'tproduct');
INSERT INTO `base_tindex` VALUES (991, 71, 'main-b75-hieu-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (992, 72, 'main-z77-hieu-asus', 'tproduct');
INSERT INTO `base_tindex` VALUES (993, 73, 'main-b85-hieu-asus', 'tproduct');
INSERT INTO `base_tindex` VALUES (994, 74, 'main-b75-hieu-asrock', 'tproduct');
INSERT INTO `base_tindex` VALUES (995, 75, 'main-z87-hieu-msi', 'tproduct');
INSERT INTO `base_tindex` VALUES (996, 76, 'ddr2-1gb-bus-667-800', 'tproduct');
INSERT INTO `base_tindex` VALUES (997, 77, 'ddr2-2gb-bus-667-800', 'tproduct');
INSERT INTO `base_tindex` VALUES (998, 78, 'ddr3-1gb-bus-1066-1333', 'tproduct');
INSERT INTO `base_tindex` VALUES (999, 79, 'ddr3-2gb-bus-1333-1600', 'tproduct');
INSERT INTO `base_tindex` VALUES (1000, 80, 'ddr3-4gb-bus-1333-1600', 'tproduct');
INSERT INTO `base_tindex` VALUES (1001, 81, 'ddr3-8gb-bus-1333-1600', 'tproduct');
INSERT INTO `base_tindex` VALUES (1002, 82, '128gb-corsair-sata3-bh-08-2017', 'tproduct');
INSERT INTO `base_tindex` VALUES (1003, 83, 'ssd-120gb-kingston-v300-bh-01-2019', 'tproduct');
INSERT INTO `base_tindex` VALUES (1004, 84, 'hdd-160gb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (1005, 85, 'hdd-250gb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (1006, 86, 'hdd-500gb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (1007, 87, 'hdd-1tb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (1008, 88, 'hdd-2tb-sata', 'tproduct');
INSERT INTO `base_tindex` VALUES (1009, 89, 'hd-6670-asus-bh-07-2017', 'tproduct');
INSERT INTO `base_tindex` VALUES (1010, 90, 'gt630-zotac-bh-02-2019', 'tproduct');
INSERT INTO `base_tindex` VALUES (1011, 91, 'vga-r9-280x-his', 'tproduct');
INSERT INTO `base_tindex` VALUES (1012, 92, 'acbel-300w', 'tproduct');
INSERT INTO `base_tindex` VALUES (1013, 93, 'seasonic-400w', 'tproduct');
INSERT INTO `base_tindex` VALUES (1014, 94, 'vga-hd-6950-his', 'tproduct');
INSERT INTO `base_tindex` VALUES (1015, 95, 'vga-gt630-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (1016, 96, 'vga-gt630-asus(bh-06-2017)', 'tproduct');
INSERT INTO `base_tindex` VALUES (1017, 97, 'vga-gtx650ti-asus(bh-09-2016)', 'tproduct');
INSERT INTO `base_tindex` VALUES (1018, 98, 'vga-hd-5570-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (1019, 99, 'may-bo-core-i5-2400', 'tproduct');
INSERT INTO `base_tindex` VALUES (1020, 100, 'may-bo-core-i5-2400', 'tproduct');
INSERT INTO `base_tindex` VALUES (1021, 101, 'may-bo-g850(-max-setting-lol...', 'tproduct');
INSERT INTO `base_tindex` VALUES (1022, 102, 'may-bo-q9300(max-setting-lol,-fifa2...', 'tproduct');
INSERT INTO `base_tindex` VALUES (1023, 103, 'vga-asus-gtx980', 'tproduct');
INSERT INTO `base_tindex` VALUES (1024, 104, 'may-bo-g850', 'tproduct');
INSERT INTO `base_tindex` VALUES (1025, 105, 'main-h81-asus', 'tproduct');
INSERT INTO `base_tindex` VALUES (1026, 106, 'main-h81-gigabyte', 'tproduct');
INSERT INTO `base_tindex` VALUES (1027, 107, 'may-bo-dell-780-sff', 'tproduct');
INSERT INTO `base_tindex` VALUES (1028, 108, 'may-bo-hp-6200-pro', 'tproduct');
INSERT INTO `base_tindex` VALUES (1029, 109, 'hdd-4tb-wd-dong-re', 'tproduct');
INSERT INTO `base_tindex` VALUES (1030, 110, 'ssd-256gb-samsung-new-99%', 'tproduct');
INSERT INTO `base_tindex` VALUES (1031, 111, 'hdd-4tb-seagate-dong-constellation-es.3', 'tproduct');
INSERT INTO `base_tindex` VALUES (1032, 112, 'main-b75-hieu-asus(-b75m-a)', 'tproduct');
INSERT INTO `base_tindex` VALUES (1033, 113, 'vga-gtx750-hieu-zotac', 'tproduct');
INSERT INTO `base_tindex` VALUES (1034, 114, 'may-bo-hp-6200-pro(cpu-g850)', 'tproduct');
INSERT INTO `base_tindex` VALUES (1035, 115, 'ssd-500gb-samsung-850-evo', 'tproduct');
INSERT INTO `base_tindex` VALUES (1036, 116, 'may-bo-dell-optiplex-780', 'tproduct');
INSERT INTO `base_tindex` VALUES (1037, 117, 'may-bo-dell-optiplex-780(-core-quad-q8400)', 'tproduct');
INSERT INTO `base_tindex` VALUES (1038, 118, 'may-bo-xeon-e3-1220-v2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1039, 119, 'may-bo-xeon-e3-1220-v2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1040, 120, 'dell-optiplex-780-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1041, 121, 'dell-optiplex-780-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1042, 122, 'dell-optiplex-780mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1043, 123, 'dell-optiplex-780mt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1044, 124, 'dell-optiplex-9010-dt', 'tproduct');
INSERT INTO `base_tindex` VALUES (1045, 125, 'dell-optiplex-990-dt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1046, 126, 'dell-optiplex-990-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1047, 127, 'dell-optiplex-9010-dt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1048, 128, 'dell-optiplex-9010-dt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1049, 129, 'dell-optiplex-3010mt', 'tproduct');
INSERT INTO `base_tindex` VALUES (1050, 130, 'dell-optiplex-790-sff-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1051, 131, 'dell-optiplex-790-sff-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1052, 132, 'dell-optiplex-990-dt-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (1053, 133, 'dell-optiplex-9010-dt-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (1054, 134, 'dell-optiplex-790-mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1055, 135, 'hp-6000-pro-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1056, 136, 'hp-6000-pro-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1057, 137, 'hp-6000-pro-mt-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1058, 138, 'hp-6000-pro-mt-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1059, 139, 'hp-pavilion-500-501x', 'tproduct');
INSERT INTO `base_tindex` VALUES (1060, 140, 'hp-6200-pro-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1061, 141, 'hp-6200-pro-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1062, 142, 'hp-6200-pro-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (1063, 143, 'nec-ml-b-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1064, 144, 'fujitsu-fmv-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1065, 145, 'lenovo-m91p-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1066, 146, 'lenovo-m91p-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1067, 147, 'fujitsu-fmv-ch1-g860', 'tproduct');
INSERT INTO `base_tindex` VALUES (1068, 148, 'fujitsu-fmv-ch3', 'tproduct');
INSERT INTO `base_tindex` VALUES (1069, 149, 'may-do-hoa-ch1', 'tproduct');
INSERT INTO `base_tindex` VALUES (1070, 150, 'may-do-hoa-ch2', 'tproduct');
INSERT INTO `base_tindex` VALUES (1071, 151, 'lcd-dell-20-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (1072, 152, 'lcd-lg-samsung-17-inch', 'tproduct');
INSERT INTO `base_tindex` VALUES (1073, 153, 'lcd-aoc-20-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (1074, 154, 'lcd-hp-compad-20-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (1075, 155, 'lcd-dell-22-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (1076, 156, 'lcd-dell-19-inch', 'tproduct');
INSERT INTO `base_tindex` VALUES (1077, 157, 'lcd-dell-19-inch-led', 'tproduct');
INSERT INTO `base_tindex` VALUES (1078, 158, 'dell-24-inch-e2414h', 'tproduct');
INSERT INTO `base_tindex` VALUES (1079, 159, 'laptop-hp-8470p', 'tproduct');
INSERT INTO `base_tindex` VALUES (1080, 160, 'laptop-hp-elitebook-8440p', 'tproduct');
INSERT INTO `base_tindex` VALUES (1081, 161, 'laptop-hp-probook-4530s-core-i5', 'tproduct');
INSERT INTO `base_tindex` VALUES (1082, 162, 'laptop-hp-probook-6460b-core-i5', 'tproduct');
INSERT INTO `base_tindex` VALUES (1083, 163, 'laptop-hp-probook-6470b', 'tproduct');
INSERT INTO `base_tindex` VALUES (1084, 164, 'laptop-dell-e6420', 'tproduct');
INSERT INTO `base_tindex` VALUES (1085, 165, 'laptop-dell-latitude-3330-ca543', 'tproduct');
INSERT INTO `base_tindex` VALUES (1086, 166, 'laptop-dell-latitude-e6230', 'tproduct');
INSERT INTO `base_tindex` VALUES (1087, 167, 'laptop-dell-latitude-e4310', 'tproduct');
INSERT INTO `base_tindex` VALUES (1088, 168, 'laptop-dell-latitude-e5430', 'tproduct');
INSERT INTO `base_tindex` VALUES (1089, 9, 'bioderma', 'tbrand_products');
INSERT INTO `base_tindex` VALUES (1090, 10, 'anessa', 'tbrand_products');

-- ----------------------------
-- Table structure for base_tmaterial_products
-- ----------------------------
DROP TABLE IF EXISTS `base_tmaterial_products`;
CREATE TABLE `base_tmaterial_products`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cmaterial_products` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `eng_cmaterial_products` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_365` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cicon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cnote_365` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT 1,
  `nspecial` int NULL DEFAULT 0,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT 1,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT '2026-09-16',
  `ddate02` date NULL DEFAULT NULL,
  `cproduct_fb` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbanner1` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbanner2` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbanner3` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clink_banner1` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clink_banner2` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clink_banner3` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_group` int NULL DEFAULT 0,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tmaterial_products
-- ----------------------------

-- ----------------------------
-- Table structure for base_tmenu
-- ----------------------------
DROP TABLE IF EXISTS `base_tmenu`;
CREATE TABLE `base_tmenu`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_parent` int NOT NULL,
  `cmenu` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cicon_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnode` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `csystem` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1',
  `nid_function` int NULL DEFAULT NULL,
  `cindex` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '999',
  `cbasic` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `cnote` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cstatus` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `cdel` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `niduser01` int NOT NULL DEFAULT 1,
  `niduser02` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tmenu
-- ----------------------------
INSERT INTO `base_tmenu` VALUES (6, 2, 'mnu.DMNhanVien', 'class=\"icon-16-user_list\"', NULL, '1', 2, '0001.0001.0009.', '0', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (7, 4, 'mnu.PhanQUyenChucNang', 'class=\"icon-16-default\"', NULL, '1', 5, '0001.0005.0001.', '0', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (10, 1, 'mnu.DoiMatKhau', 'class=\"icon-16-user\"', NULL, '1', 8, '0001.0009.', '1', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (1, 1, 'mnu.HeThong', '', '', '1', 0, '0001.', '1', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (2, 1, 'mnu.DMHeThong', 'class=\"icon-16-config\"', '0', '1', 0, '0001.0001.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (8, 1, '', '', '', '1', 0, '0001.0008.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (4, 1, 'mnu.PhanQuyen', 'class=\"icon-16-user\"', '0', '1', 2, '0001.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (9, 1, 'mnu.DMConFig', 'class=\"icon-16-config\"', '', '1', 0, '0001.0008.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (11, 11, 'mnu.TinTuc', 'class=\"icon-16-notebook\"', '', '1', 0, '0002.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (12, 11, 'mnu.DMNhomTin', 'class=\"icon-16-notebook\"', '', '1', 11, '0002.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (13, 11, 'mnu.DMTintuc', 'class=\"icon-16-notebook\"', '', '1', 10, '0002.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (14, 14, 'mnu.SanPham', 'class=\"icon-16-default\"', '', '1', 0, '0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (15, 14, 'mnu.DMNhomChatLieu', 'class=\"icon-16-default\"', '', '1', 41, '0005.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (16, 14, 'mnu.DMNhomSanPham', 'class=\"icon-16-default\"', '', '1', 40, '0005.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (17, 14, 'mnu.DMSanPham', 'class=\"icon-16-default\"', '', '1', 42, '0005.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (18, 18, 'mnu.Order', 'class=\"icon-16-menu\"', '', '1', 0, '0010.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (19, 18, 'mnu.DMKhachHang', 'class=\"icon-16-menu\"', '', '1', 43, '0010.0005.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (20, 18, 'mnu.DMTrangThaiHoaDon', 'class=\"icon-16-menu\"', '', '1', 44, '0010.0010.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (21, 18, 'mnu.QLOrder', 'class=\"icon-16-menu\"', '', '1', 45, '0010.0015.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (22, 22, 'mnu.ChucNang', 'class=\"icon-16-config\"', '', '1', 0, '0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (23, 22, 'mnu.DMSupportOnline', 'class=\"icon-16-system\"', '', '1', 28, '0015.0001.', '0', '', '0', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (24, 24, 'mnu.TroGiup', 'class=\"icon-16-help\"', '', '1', 0, '0020.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (25, 24, 'mnu.HuongDanSuDung', 'class=\"icon-16-help\"', '', '1', 46, '0020.0001.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (26, 24, 'mnu.CauTrucWebsite', 'class=\"icon-16-help\"', '', '1', 47, '0020.0005.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (27, 11, 'mnu.DMLoaiTin', 'class=\"icon-16-notebook\"', '', '1', 100, '0002.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (29, 22, 'mnu.DMModule', 'class=\"icon-16-system\"', '', '1', 101, '0015.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (30, 22, 'mnu.DMFaq', 'class=\"icon-16-system\"', '', '1', 102, '0008.0010.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (31, 22, 'mnu.DMRecruit', 'class=\"icon-16-system\"', '', '1', 103, '0015.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (32, 22, 'mnu.DMWeblink', 'class=\"icon-16-system\"', '', '1', 104, '0015.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (33, 22, 'mnu.DMbanner_images', 'class=\"icon-16-system\"', '', '1', 105, '0015.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (34, 22, 'mnu.DMemail_manager', 'class=\"icon-16-system\"', '', '1', 106, '0015.0035.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (35, 22, 'mnu.DMcomment_manager', 'class=\"icon-16-system\"', '', '1', 107, '0015.0030.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (36, 14, 'mnu.NganhNghe', 'class=\"icon-16-default\"', '', '1', 0, '0004.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (37, 14, 'mnu.DMNhomChatLieuNganhNghe', 'class=\"icon-16-default\"', '', '1', 110, '0004.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (38, 14, 'mnu.DMNhomNganhNghe', 'class=\"icon-16-default\"', '', '1', 109, '0004.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (39, 14, 'mnu.DMNganhNghe', 'class=\"icon-16-default\"', '', '1', 108, '0004.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (40, 14, 'mnu.FAQ', 'class=\"icon-16-default\"', '', '1', 0, '0008.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (41, 22, 'mnu.DMCatFaq', 'class=\"icon-16-system\"', '', '1', 111, '0008.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);
INSERT INTO `base_tmenu` VALUES (42, 22, 'Image manage', 'class=\"icon-16-system\"', '', '1', 112, '0015.0006.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);

-- ----------------------------
-- Table structure for base_tmenu_frontend
-- ----------------------------
DROP TABLE IF EXISTS `base_tmenu_frontend`;
CREATE TABLE `base_tmenu_frontend`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cmenu` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_function_frontend` int NULL DEFAULT NULL,
  `id_item` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cwidth` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `nindex` int NULL DEFAULT NULL,
  `nid_parent` int NULL DEFAULT NULL,
  `ccat_index` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nbasic` int NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tmenu_frontend
-- ----------------------------
INSERT INTO `base_tmenu_frontend` VALUES (1, '001', 'Trang chủ', 8, '', '110', 'khong co con', 1, 1, 0, '0001.', 0, 746, 2, '2011-06-01', '0000-00-00');
INSERT INTO `base_tmenu_frontend` VALUES (4, NULL, 'Liên hệ', 4, '', '110', '', 1, 20, 0, '0005.', 0, 746, NULL, '2011-06-02', NULL);
INSERT INTO `base_tmenu_frontend` VALUES (5, NULL, 'Hỏi đáp', 9, '', '110', '2', 1, 9, 4, '0005.0005.', NULL, 1, NULL, '2010-12-24', NULL);
INSERT INTO `base_tmenu_frontend` VALUES (6, NULL, 'Tin tức-Sự kiện', 7, '6', '150', '', 1, 1, 5, '0015.0005.0005.', NULL, 746, NULL, '2011-06-02', NULL);
INSERT INTO `base_tmenu_frontend` VALUES (15, NULL, 'Giới thiệu', 7, '7', '110', '', 1, 2, 6, '0015.0005.0005.', NULL, 746, NULL, '2011-06-01', NULL);
INSERT INTO `base_tmenu_frontend` VALUES (16, NULL, 'Tuyển Dụng', 8, '38', '110', '', 1, 7, 0, '0025.', NULL, 1, NULL, '2010-12-24', NULL);
INSERT INTO `base_tmenu_frontend` VALUES (17, NULL, 'Thư viện ảnh', 14, '', '134', '', 1, 8, 0, '0030.', NULL, 1, NULL, '2010-12-23', NULL);

-- ----------------------------
-- Table structure for base_tmodule
-- ----------------------------
DROP TABLE IF EXISTS `base_tmodule`;
CREATE TABLE `base_tmodule`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cmodule` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `eng_cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `clink` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tmodule
-- ----------------------------
INSERT INTO `base_tmodule` VALUES (1, 'partner_logo', 'VIETCERAMICS', 'Đối tác gạch', '', '', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (2, 'partner_logo', 'ĐỒNG TÂM', 'Đối tác gạch', '', '', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (3, 'partner_logo', 'PRIME GROUP', 'Đối tác gạch', '', '', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (4, 'partner_logo', 'VIGLACERA', 'Đối tác gạch', '', '', NULL, 1, '4', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (5, 'partner_logo', 'SIKA PARTNER', 'Đối tác hóa chất', '', '', NULL, 1, '5', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (6, 'partner_logo', 'XÂY DỰNG VIỆT', 'Nhà thầu xây dựng', '', '', NULL, 1, '6', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (7, 'testimonial', 'Anh Minh Hoàng', 'Chủ căn hộ • Quận 7, TP.HCM', 'MH', '“Nhà tắm nhà mình trước đây ron xi măng đen kịt và hay bong. Sau khi đổi sang keo Epoxy BASC và thuê đội thợ làm lại, đường ron trắng bóng như mới suốt 2 năm nay.”', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (8, 'testimonial', 'KTS. Trần Tuấn', 'Giám đốc thi công • TP. Thủ Đức', 'TT', '“Là nhà thầu hoàn thiện nội thất, mình nhập keo chà ron BASC cho hơn 20 công trình biệt thự. Keo dẻo, dễ miết, bảng màu cực chuẩn và giao hàng rất đúng hẹn.”', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (9, 'testimonial', 'Chị Lan Ngọc', 'Khách hàng mua vật tư • Bình Thạnh', 'LN', '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (10, 'brand_benefit', 'Công Nghệ Epoxy 2 Thành Phần Thế Hệ Mới', 'fa-fill-drip', '', 'Không chứa dung môi độc hại, không co ngót, chịu nhiệt và hóa chất tẩy rửa gia dụng cực tốt.', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (11, 'brand_benefit', 'Đội Ngũ Thợ Chuyên Nghiệp – Sạch Gọn Trong Ngày', 'fa-users-gear', '', 'Quy trình mài ron cũ bằng máy hút bụi chuyên dụng, không bụi bẩn, bàn giao mặt sàn sáng bóng ngay trong ngày.', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (12, 'brand_benefit', 'Giá Tận Xưởng – Bảo Hành Chính Hãng 10 Năm', 'fa-certificate', '', 'Chiết khấu hấp dẫn cho nhà thầu và đại lý. Cam kết đổi trả miễn phí nếu sản phẩm không đạt chuẩn.', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (13, 'ugc_gallery', 'Chà ron gạch khổ lớn 120x120', 'Biệt thự Q.2', 'ugc1.jpg', 'Hình ảnh cận cảnh mạch ron gạch porcelain khổ lớn', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (14, 'ugc_gallery', 'Thay ron cũ mốc đen sau 3 giờ', 'Nhà tắm', 'ugc2.jpg', 'Xử lý sàn nhà tắm ẩm ướt sạch bóng', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (15, 'ugc_gallery', 'Ron Epoxy chống bám dầu mỡ', 'Phòng bếp', 'ugc3.jpg', 'Khu vực bếp nấu đảo bếp sạch tinh tươm', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (16, 'ugc_gallery', 'Keo ron chuyên dụng chịu clo', 'Hồ bơi', 'ugc4.jpg', 'Hồ bơi biệt thự chống rêu nấm mốc', NULL, 1, '4', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (17, 'ugc_gallery', 'Cách tự bắn ron chuẩn thợ tại nhà', 'Hướng dẫn', 'ugc5.jpg', 'Video hướng dẫn thao tác tự thi công', NULL, 1, '5', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (18, 'about_metric', '10+ Năm', 'Kinh nghiệm ngành vật tư & thi công hoàn thiện', '', '', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (19, 'about_metric', '3.500+', 'Công trình nhà ở, biệt thự & khách sạn đã bàn giao', '', '', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (20, 'about_metric', '24+ Màu', 'Bảng màu keo ron đa dạng, phối hợp mọi vân gạch', '', '', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (21, 'about_metric', '99.2%', 'Khách hàng hài lòng và giới thiệu người thân', '', '', NULL, 1, '4', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (22, 'faq', 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?', '', '', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (23, 'faq', 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?', '', '', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (24, 'faq', '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?', '', '', 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (25, 'faq', 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?', '', '', 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.', NULL, 1, '4', 1, NULL, '2026-11-16', NULL, NULL);
INSERT INTO `base_tmodule` VALUES (26, 'faq', 'Chính sách bảo hành đường ron tại BASC như thế nào?', '', '', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.', NULL, 1, '5', 1, NULL, '2026-11-16', NULL, NULL);

-- ----------------------------
-- Table structure for base_tnews
-- ----------------------------
DROP TABLE IF EXISTS `base_tnews`;
CREATE TABLE `base_tnews`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_section_news` int NULL DEFAULT NULL,
  `nid_cat_news` int NOT NULL,
  `ccode` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctitle` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cview` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cauthor` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nhit` int NULL DEFAULT NULL,
  `nimg` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `alwcmt` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cshort_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `ccontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cimage_height` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_fb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_iphone` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nactive` int NULL DEFAULT NULL,
  `nstatus` int NULL DEFAULT NULL,
  `chome` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ctime` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  `cmphq` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `cmp365` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cdate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cproduct_str_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tnews
-- ----------------------------
INSERT INTO `base_tnews` VALUES (1, NULL, 2, 'thi-cong-ron-nha-o-dan-dung-biet-thu', 'Nhà Ở Dân Dụng & Biệt Thự', 'fa-h', NULL, 'Nhà phố,Chung cư,Biệt thự', NULL, NULL, NULL, 'Thi công chà ron toàn bộ sàn và tường cho nhà phố, nhà cấp 4, căn hộ chung cư, biệt thự cao cấp với đường ron đều, phẳng mịn.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (2, NULL, 2, 'thi-cong-ron-phong-tam-bep-am-uot', 'Phòng Tắm, Bếp & Khu Ẩm Ướt', 'fa-b', NULL, 'Nhà vệ sinh,Phòng bếp,Ban công', NULL, NULL, NULL, 'Chống thấm tuyệt đối cho nhà vệ sinh, phòng tắm, khu bếp nấu, ban công, sân thượng và hồ bơi – ngăn ố vàng & nấm mốc.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (3, NULL, 2, 'cao-ron-cu-phuc-hoi-ron-moi', 'Cạo Ron Cũ & Phục Hồi Ron Mới', 'fa-b', NULL, 'Nhà đang ở,Không bụi,Xử lý ố đen', NULL, NULL, NULL, 'Dùng máy cắt ron kết hợp hút bụi làm sạch lớp xi măng cũ bị đen, bong tróc và bắn lại keo Epoxy mới sáng bóng trong ngày.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (4, NULL, 2, 'cha-ron-cong-trinh-moi-op-lat', 'Chà Ron Công Trình Mới Ốp Lát', 'fa-b', NULL, 'Porcelain,Granite,Gạch khổ lớn', NULL, NULL, NULL, 'Thi công chuẩn kỹ thuật cho mọi dòng gạch Ceramic, Porcelain, Granite, gạch khổ lớn, gạch giả gỗ và gạch Mosaic.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (101, 6, 2, 'thi-cong-keo-cha-ron-tron-goi', 'Thi Công Keo Chà Ron Trọn Gói', 'fa-h', 'Đội thợ BASC', 'Nhà mới xây, Biệt thự, Căn hộ', NULL, NULL, NULL, 'Áp dụng cho nhà mới xây hoặc biệt thự, căn hộ vừa hoàn thiện phần gạch ốp lát. Đường ron đều đẹp, bóng mịn chuẩn thợ.', 'Dịch vụ thi công chà ron gạch trọn gói chuyên nghiệp sử dụng keo Epoxy BASC hai thành phần...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (102, 6, 2, 'cai-tao-thay-the-ron-cu-o-moc', 'Cải Tạo & Thay Thế Ron Cũ Ố Mốc', 'fa-r', 'Đội thợ BASC', 'Nhà cải tạo, Nạo vét ron cũ, Sạch bụi', NULL, NULL, NULL, 'Dùng máy nạo vét ron chuyên dụng hút bụi sạch sẽ, không ồn không bụi, xử lý dứt điểm mạch ron xi măng ố vàng, đen bẩn.', 'Quy trình cạo sạch ron xi măng cũ bằng máy cắt rãnh hút bụi, sau đó châm keo men sứ chống bẩn vĩnh viễn...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (103, 6, 2, 'cha-ron-chong-tham-nha-tam-toilet', 'Chà Ron Chống Thấm Nhà Tắm & Toilet', 'fa-d', 'Đội thợ BASC', 'Nhà tắm, Toilet, Chống thấm 100%', NULL, NULL, NULL, 'Khu vực ẩm ướt thường xuyên tiếp xúc xà phòng, hóa chất tẩy rửa. Kháng khuẩn 100%, ngăn mùi hôi và ẩm mốc chân tường.', 'Keo chà ron Epoxy chống thấm đặc dụng kháng hóa chất cho sàn và vách đứng toilet, nhà vệ sinh...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (104, 6, 2, 'cha-ron-ho-boi-san-thuong-ngoai-troi', 'Chà Ron Hồ Bơi & Sân Thượng Ngoài Trời', 'fa-s', 'Đội thợ BASC', 'Hồ bơi, Sân thượng, Chống tia UV', NULL, NULL, NULL, 'Chịu được clo hồ bơi, kháng tia UV nắng mưa khắc nghiệt. Độ giãn nở đàn hồi cao, không nứt vỡ mạch ron ngoài trời.', 'Chuyên dụng cho bể bơi, ban công, sân thượng chịu nắng mưa khắc nghiệt không co ngót rạn nứt...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (105, 6, 3, 'cha-ron-gach-kho-lon-120x120', 'Chà ron gạch khổ lớn 120x120', 'fa-p', 'Biệt thự Q.2', 'Biệt thự Q.2', NULL, NULL, NULL, 'Quy trình chà ron mạch 2mm cho gạch bóng kiếng Tây Ban Nha khổ lớn tại biệt thự Thảo Điền.', 'Cận cảnh thi công đường ron siêu mảnh 2mm cho biệt thự cao cấp...', NULL, 'ugc1.jpg', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (106, 6, 3, 'thay-ron-cu-moc-den-sau-3-gio', 'Thay ron cũ mốc đen sau 3 giờ', 'fa-p', 'Nhà tắm', 'Nhà tắm', NULL, NULL, NULL, 'Nạo sạch mạch xi măng đen và bắn keo men sứ trắng sáng tinh tế, khô se sau 3 giờ.', 'Hình ảnh thực tế cải tạo ron sàn nhà tắm sau 3 giờ thi công...', NULL, 'ugc2.jpg', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (107, 6, 3, 'ron-epoxy-chong-bam-dau-mo', 'Ron Epoxy chống bám dầu mỡ', 'fa-p', 'Phòng bếp', 'Phòng bếp', NULL, NULL, NULL, 'Khu vực bàn đảo và bếp nấu lau sạch dầu mỡ chỉ bằng khăn ẩm, không ố vàng.', 'Khu vực ốp tường bếp chiên xào dầu mỡ lau chùi dễ dàng...', NULL, 'ugc3.jpg', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (108, 6, 3, 'keo-ron-chuyen-dung-chiu-clo', 'Keo ron chuyên dụng chịu clo', 'fa-p', 'Hồ bơi', 'Hồ bơi', NULL, NULL, NULL, 'Mạch ron bền bỉ dưới nước hồ bơi gia đình, không mọc rêu phong.', 'Hồ bơi biệt thự sử dụng keo Epoxy kháng hóa chất clo ngâm nước...', NULL, 'ugc4.jpg', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (109, 6, 3, 'cach-tu-ban-ron-chuan-tho-tai-nha', 'Cách tự bắn ron chuẩn thợ tại nhà', 'fa-p', 'Hướng dẫn', 'Hướng dẫn', NULL, NULL, NULL, 'Video hướng dẫn từng bước lắp súng, gắn vòi xoắn và miết bi cầu đẹp phẳng mịn.', 'Video hướng dẫn chi tiết cách tự thi công mạch ron chuẩn thợ...', NULL, 'ugc5.jpg', NULL, NULL, NULL, 1, '1', NULL, '5', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (110, 6, 4, 'anh-hoang-nam', 'Anh Hoàng Nam', '', 'Biệt thự Lakeview, TP. Thủ Đức', 'Gia chủ biệt thự', NULL, NULL, NULL, '“Đội ngũ BASC làm việc rất cẩn thận, mài mạch ron cũ bằng máy hút bụi nên nhà không bị bụi bặm. Ron làm xong phẳng mịn, nước bắn vào trượt đi ngay.”', '', NULL, 'HN', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (111, 6, 4, 'chi-thu-huong', 'Chị Thu Hương', '', 'Căn hộ Vinhomes Grand Park, Q.9', 'Khách hàng căn hộ', NULL, NULL, NULL, '“Sàn nhà tắm trước đây cứ bị đen ron dù lau chùi cỡ nào, từ ngày thợ BASC làm lại bằng keo Epoxy thì sạch bóng hẳn, không còn mùi ẩm mốc nữa.”', '', NULL, 'TH', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (112, 6, 4, 'kts-minh-tri', 'KTS. Minh Trí', '', 'Công ty Thiết kế Kiến trúc TM', 'Đối tác nhà thầu', NULL, NULL, NULL, '“Màu sắc keo BASC rất tiệp với gạch men cao cấp, đặc biệt dòng ánh kim tuyến lên đèn buổi tối rất sang. Mình tin tưởng chỉ định cho các dự án villa.”', '', NULL, 'MT', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (113, 6, 4, 'chi-lan-ngoc', 'Chị Lan Ngọc', '', 'Khách hàng mua vật tư • Bình Thạnh', 'Tự thi công tại nhà', NULL, NULL, NULL, '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”', '', NULL, 'LN', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (114, 6, 5, 'keo-cha-ron-epoxy-basc-kho-hoan-toan-trong-bao-lau', 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?', '', 'Kỹ thuật viên BASC', 'Thời gian khô', NULL, NULL, NULL, 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (115, 6, 5, 'nha-da-lat-gach-cu-bi-den-ron-co-thi-cong-lai-duoc-khong', 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?', '', 'Kỹ thuật viên BASC', 'Cải tạo ron cũ', NULL, NULL, NULL, 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (116, 6, 5, '1-tuyp-keo-cha-ron-400ml-dung-duoc-cho-bao-nhieu-m2', '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?', '', 'Kỹ thuật viên BASC', 'Định mức thi công', NULL, NULL, NULL, 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.', 'Tùy vào kích thước gạch và độ rộng khe ron...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (117, 6, 5, 'basc-co-giao-hang-toan-quoc-va-ho-tro-tho-thi-cong-khong', 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?', '', 'Kỹ thuật viên BASC', 'Giao hàng & Thi công', NULL, NULL, NULL, 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.', 'BASC giao hàng hỏa tốc toàn quốc và có đội ngũ thợ trực tiếp...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);
INSERT INTO `base_tnews` VALUES (118, 6, 5, 'chinh-sach-bao-hanh-duong-ron-tai-basc-nhu-the-nao', 'Chính sách bảo hành đường ron tại BASC như thế nào?', '', 'Kỹ thuật viên BASC', 'Bảo hành 10 năm', NULL, NULL, NULL, 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử 10 năm...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '5', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_torder
-- ----------------------------

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_torder_detail
-- ----------------------------

-- ----------------------------
-- Table structure for base_torder_status
-- ----------------------------
DROP TABLE IF EXISTS `base_torder_status`;
CREATE TABLE `base_torder_status`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `corder_status` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_torder_status
-- ----------------------------
INSERT INTO `base_torder_status` VALUES (1, '001', 'Mới nhận', 'Mới nhận', 1, '1', 2, NULL, '2010-07-23', NULL);
INSERT INTO `base_torder_status` VALUES (2, '002', 'Đang giao hàng', NULL, 1, '2', 2, NULL, '2010-07-23', NULL);
INSERT INTO `base_torder_status` VALUES (3, '003', 'Hoàn tất', NULL, 1, '3', 2, NULL, '2010-07-23', NULL);
INSERT INTO `base_torder_status` VALUES (4, '004', 'Đã hủy', 'Đã hủy đơn hàng', 1, '4', 2, NULL, '2010-07-23', '0000-00-00');

-- ----------------------------
-- Table structure for base_tpermission
-- ----------------------------
DROP TABLE IF EXISTS `base_tpermission`;
CREATE TABLE `base_tpermission`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_user_type` int NULL DEFAULT NULL,
  `nid_access` int NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 616 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of base_tpermission
-- ----------------------------
INSERT INTO `base_tpermission` VALUES (503, 6, 44);
INSERT INTO `base_tpermission` VALUES (615, 4, 32);
INSERT INTO `base_tpermission` VALUES (547, 3, 43);
INSERT INTO `base_tpermission` VALUES (546, 3, 42);
INSERT INTO `base_tpermission` VALUES (545, 3, 41);
INSERT INTO `base_tpermission` VALUES (544, 3, 45);
INSERT INTO `base_tpermission` VALUES (543, 3, 40);
INSERT INTO `base_tpermission` VALUES (542, 3, 39);
INSERT INTO `base_tpermission` VALUES (541, 3, 38);
INSERT INTO `base_tpermission` VALUES (540, 3, 46);
INSERT INTO `base_tpermission` VALUES (539, 3, 37);
INSERT INTO `base_tpermission` VALUES (538, 3, 36);
INSERT INTO `base_tpermission` VALUES (537, 3, 35);
INSERT INTO `base_tpermission` VALUES (536, 3, 33);
INSERT INTO `base_tpermission` VALUES (535, 3, 32);
INSERT INTO `base_tpermission` VALUES (534, 3, 31);
INSERT INTO `base_tpermission` VALUES (533, 3, 24);
INSERT INTO `base_tpermission` VALUES (532, 3, 23);
INSERT INTO `base_tpermission` VALUES (531, 3, 22);
INSERT INTO `base_tpermission` VALUES (530, 3, 30);
INSERT INTO `base_tpermission` VALUES (529, 3, 21);
INSERT INTO `base_tpermission` VALUES (528, 3, 20);
INSERT INTO `base_tpermission` VALUES (527, 3, 19);
INSERT INTO `base_tpermission` VALUES (526, 3, 29);
INSERT INTO `base_tpermission` VALUES (525, 3, 18);
INSERT INTO `base_tpermission` VALUES (524, 3, 17);
INSERT INTO `base_tpermission` VALUES (166, 1, 16);
INSERT INTO `base_tpermission` VALUES (165, 1, 7);
INSERT INTO `base_tpermission` VALUES (614, 4, 18);
INSERT INTO `base_tpermission` VALUES (613, 4, 17);
INSERT INTO `base_tpermission` VALUES (612, 4, 16);
INSERT INTO `base_tpermission` VALUES (611, 4, 15);
INSERT INTO `base_tpermission` VALUES (610, 4, 14);
INSERT INTO `base_tpermission` VALUES (609, 4, 13);
INSERT INTO `base_tpermission` VALUES (52, 2, 19);
INSERT INTO `base_tpermission` VALUES (53, 2, 20);
INSERT INTO `base_tpermission` VALUES (54, 2, 21);
INSERT INTO `base_tpermission` VALUES (55, 2, 22);
INSERT INTO `base_tpermission` VALUES (56, 2, 23);
INSERT INTO `base_tpermission` VALUES (57, 2, 24);
INSERT INTO `base_tpermission` VALUES (523, 3, 16);
INSERT INTO `base_tpermission` VALUES (522, 3, 28);
INSERT INTO `base_tpermission` VALUES (521, 3, 15);
INSERT INTO `base_tpermission` VALUES (520, 3, 14);
INSERT INTO `base_tpermission` VALUES (519, 3, 13);
INSERT INTO `base_tpermission` VALUES (518, 3, 27);
INSERT INTO `base_tpermission` VALUES (517, 3, 12);
INSERT INTO `base_tpermission` VALUES (516, 3, 11);
INSERT INTO `base_tpermission` VALUES (515, 3, 10);
INSERT INTO `base_tpermission` VALUES (514, 3, 26);
INSERT INTO `base_tpermission` VALUES (513, 3, 9);
INSERT INTO `base_tpermission` VALUES (512, 3, 8);
INSERT INTO `base_tpermission` VALUES (511, 3, 7);
INSERT INTO `base_tpermission` VALUES (510, 3, 25);
INSERT INTO `base_tpermission` VALUES (509, 3, 6);
INSERT INTO `base_tpermission` VALUES (508, 3, 5);
INSERT INTO `base_tpermission` VALUES (507, 3, 4);
INSERT INTO `base_tpermission` VALUES (506, 3, 3);
INSERT INTO `base_tpermission` VALUES (505, 3, 2);
INSERT INTO `base_tpermission` VALUES (504, 3, 1);
INSERT INTO `base_tpermission` VALUES (608, 4, 9);
INSERT INTO `base_tpermission` VALUES (607, 4, 8);
INSERT INTO `base_tpermission` VALUES (548, 3, 44);
INSERT INTO `base_tpermission` VALUES (602, 7, 40);
INSERT INTO `base_tpermission` VALUES (601, 7, 39);
INSERT INTO `base_tpermission` VALUES (600, 7, 38);
INSERT INTO `base_tpermission` VALUES (599, 7, 36);
INSERT INTO `base_tpermission` VALUES (598, 7, 35);
INSERT INTO `base_tpermission` VALUES (597, 7, 31);
INSERT INTO `base_tpermission` VALUES (596, 7, 24);
INSERT INTO `base_tpermission` VALUES (595, 7, 23);
INSERT INTO `base_tpermission` VALUES (594, 7, 22);
INSERT INTO `base_tpermission` VALUES (593, 7, 20);
INSERT INTO `base_tpermission` VALUES (592, 7, 19);
INSERT INTO `base_tpermission` VALUES (560, 8, 19);
INSERT INTO `base_tpermission` VALUES (561, 8, 20);
INSERT INTO `base_tpermission` VALUES (562, 8, 22);
INSERT INTO `base_tpermission` VALUES (563, 8, 23);
INSERT INTO `base_tpermission` VALUES (564, 8, 35);
INSERT INTO `base_tpermission` VALUES (565, 8, 36);
INSERT INTO `base_tpermission` VALUES (566, 9, 19);
INSERT INTO `base_tpermission` VALUES (567, 9, 20);
INSERT INTO `base_tpermission` VALUES (568, 9, 22);
INSERT INTO `base_tpermission` VALUES (569, 9, 23);
INSERT INTO `base_tpermission` VALUES (570, 9, 35);
INSERT INTO `base_tpermission` VALUES (606, 4, 7);
INSERT INTO `base_tpermission` VALUES (603, 7, 45);
INSERT INTO `base_tpermission` VALUES (604, 7, 41);
INSERT INTO `base_tpermission` VALUES (605, 7, 42);

-- ----------------------------
-- Table structure for base_tproduct_images
-- ----------------------------
DROP TABLE IF EXISTS `base_tproduct_images`;
CREATE TABLE `base_tproduct_images`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_product` int NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cindex` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` datetime NULL DEFAULT NULL,
  `ddate02` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `nid`(`nid`, `nid_product`, `cimage`, `ddate01`, `ddate02`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tproduct_images
-- ----------------------------

-- ----------------------------
-- Table structure for base_tproducts
-- ----------------------------
DROP TABLE IF EXISTS `base_tproducts`;
CREATE TABLE `base_tproducts`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nid_material_products` int NULL DEFAULT NULL,
  `nid_cat_products` int NULL DEFAULT NULL,
  `nid_brand_products` int NULL DEFAULT NULL,
  `ctype` int NULL DEFAULT NULL,
  `ccode` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cproducts` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cloai_tin` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nview` int NULL DEFAULT 0,
  `fprice` float(12, 0) NULL DEFAULT NULL,
  `fprice_sale` float(12, 0) NULL DEFAULT NULL,
  `cdescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `fb_cdescription` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cgioi_thieu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cdia_diem` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nid_loai_tin` int NULL DEFAULT 0,
  `nid_loai_bds` int NULL DEFAULT 0,
  `nid_province` int NULL DEFAULT 0,
  `nid_district` int NULL DEFAULT 0,
  `nid_huong` int NULL DEFAULT NULL,
  `cdien_tich` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `eng_cdetail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cdetail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cproduct_fb` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage_resize` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nspecial_products` int NULL DEFAULT 0,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `eng_cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT 1,
  `ncheck` int NULL DEFAULT 1,
  `nhome` int NULL DEFAULT 0,
  `nnew` int NULL DEFAULT 1,
  `cindex` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT 1,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT '2026-09-16',
  `ddate02` date NULL DEFAULT NULL,
  `ctime_update` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cphong_an` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `cnha_bep` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `csan_thuong` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `ccho_de_xe` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `cchinh_chu` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `cchieu_ngang` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `cchieu_dai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cso_lau` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cso_phong_ngu` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cphap_ly` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cduong_truoc_nha` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nspecial` int NULL DEFAULT 0,
  `ccode_product` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ckeyword` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tproducts
-- ----------------------------
INSERT INTO `base_tproducts` VALUES (1, 1, 1, NULL, NULL, 'keo-cha-ron-epoxy-2-thanh-phan-basc-pro', 'Keo Chà Ron Epoxy 2 Thành Phần BASC Pro (400ml)', '4', 'Bán chạy #1', 0, 230000, 185000, 'Chai đôi A+B tỷ lệ chuẩn, chống thấm 100%, bề mặt bóng mịn như men sứ, không đen ron.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-fill-drip', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '1', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy');
INSERT INTO `base_tproducts` VALUES (2, 1, 1, NULL, NULL, 'keo-ron-epoxy-chong-tham-nha-tam-ho-boi', 'Keo Ron Epoxy Chống Thấm Nhà Tắm & Hồ Bơi', '4', 'Chống thấm', 0, 260000, 210000, 'Chuyên dụng khu vực ẩm ướt, ban công, sân thượng, kháng hóa chất tẩy rửa & rêu mốc.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-droplet-slash', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '2', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy');
INSERT INTO `base_tproducts` VALUES (3, 1, 1, NULL, NULL, 'keo-ron-epoxy-kim-tuyen-anh-vang-bac', 'Keo Ron Epoxy Kim Tuyến Ánh Vàng / Bạc', '4', 'Ánh kim sang trọng', 0, 275000, 225000, 'Hiệu ứng ánh nhũ sang trọng cho phòng khách, sảnh biệt thự, gạch granite & porcelain.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-gem', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '3', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy');
INSERT INTO `base_tproducts` VALUES (4, 2, 2, NULL, NULL, 'sung-ban-keo-2-thanh-phan-hop-kim-tro-luc', 'Súng Bắn Keo 2 Thành Phần Hợp Kim Trợ Lực', '4', 'Chuyên dụng', 0, 210000, 165000, 'Thiết kế 2 piston đẩy song song ép đều 2 ống keo A & B, cò bóp nhẹ, độ bền cao.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-gun', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '4', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'tools');
INSERT INTO `base_tproducts` VALUES (5, 2, 2, NULL, NULL, 'bo-bi-cau-miet-ron-dao-sui-keo-thua', 'Bộ Bi Cầu Miết Ron & Dao Sủi Keo Thừa', '4', 'Combo chuẩn thợ', 0, 130000, 95000, 'Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-toolbox', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '5', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'tools');
INSERT INTO `base_tproducts` VALUES (6, 2, 2, NULL, NULL, 'bo-voi-tron-xoan-vit-cao-mach-ron-cu', 'Bộ Vòi Trộn Xoắn & Vít Cạo Mạch Ron Cũ', '4', 'Phụ kiện thiết yếu', 0, 90000, 65000, 'Vòi trộn xoắn ốc giúp hòa quyện đều 2 thành phần keo + vít cạo sạch xi măng khe gạch.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-screwdriver-wrench', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '6', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'tools');
INSERT INTO `base_tproducts` VALUES (7, 2, 2, NULL, NULL, 'may-cat-ranh-ron-mini-luoi-cat-chuyen-dung', 'Máy Cắt Rãnh Ron Mini & Lưỡi Cắt Chuyên Dụng', '4', 'Cải tạo ron cũ', 0, 550000, 450000, 'Hỗ trợ nạo vét ron xi măng cũ nhanh chóng, đường cắt chuẩn 1.5–3mm không mẻ cạnh gạch.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-compact-disc', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '7', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'tools');
INSERT INTO `base_tproducts` VALUES (8, 1, 1, NULL, NULL, 'combo-tu-thi-cong-2-keo-epoxy-sung-bi-dao-sui', 'Combo Tự Thi Công: 2 Keo Epoxy + Súng + Bi + Dao Sủi', '4', 'Trọn bộ tự làm', 0, 620000, 490000, 'Đủ dụng cụ tự chà ron cho ~25–30m² sàn gạch tại nhà, kèm hướng dẫn chi tiết.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-box-open', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '8', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy');

-- ----------------------------
-- Table structure for base_tschedule
-- ----------------------------
DROP TABLE IF EXISTS `base_tschedule`;
CREATE TABLE `base_tschedule`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `cfullname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cservice` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `careas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ddate_booking` date NULL DEFAULT NULL,
  `ctime_booking` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `nstatus` int NOT NULL DEFAULT 0 COMMENT '0: Mới nhận, 1: Đã liên hệ, 2: Đã khảo sát, 3: Đã thi công, 4: Đã hủy',
  `ddate01` datetime NOT NULL DEFAULT current_timestamp,
  `ddate02` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tschedule
-- ----------------------------
INSERT INTO `base_tschedule` VALUES (1, 'Admin test', '0945769112', '111 Quận 1, TPHCM', 'Chống thấm ron phòng tắm & toilet', '', '2026-11-16', '11:08:11', '', 0, '2026-11-16 11:08:11', NULL);

-- ----------------------------
-- Table structure for base_tsection_news
-- ----------------------------
DROP TABLE IF EXISTS `base_tsection_news`;
CREATE TABLE `base_tsection_news`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `csection_news` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cicon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `nstatus` int NULL DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `ddate01` date NULL DEFAULT NULL,
  `ddate02` date NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tsection_news
-- ----------------------------

-- ----------------------------
-- Table structure for base_tsession
-- ----------------------------
DROP TABLE IF EXISTS `base_tsession`;
CREATE TABLE `base_tsession`  (
  `cid_session` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nid_user` int NULL DEFAULT 0,
  `dsession_date` datetime NOT NULL,
  `cstatus` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid_session`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tsession
-- ----------------------------

-- ----------------------------
-- Table structure for base_tuser
-- ----------------------------
DROP TABLE IF EXISTS `base_tuser`;
CREATE TABLE `base_tuser`  (
  `nid` int NOT NULL AUTO_INCREMENT,
  `ccode` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cuserid` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cpassword` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cemail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `chandphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cfirstname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cmiddlename` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cisadmin` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `nid_language` int NULL DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cstatus` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1',
  `cdel` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `ddate01` datetime NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NULL DEFAULT '1977-01-01 00:00:00',
  `niduser01` int NULL DEFAULT NULL,
  `niduser02` int NULL DEFAULT NULL,
  `cphone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cbirthday` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cgender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cinfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `ctype` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cngan_hang` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cso_tai_khoan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cchi_nhanh` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cavatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clevel` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1',
  `csum` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `ctime` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 788 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_tuser
-- ----------------------------
INSERT INTO `base_tuser` VALUES (1, 'aspoon', 'aspoon', '858fc9840b60a5eaea85b7e1c9a4b77c', 'info@gmail.com', NULL, 'Quản Trị', NULL, 'Hệ Thống', '3', 1, 'khong huy duoc', '1', '0', '1977-01-01 00:00:00', '2009-12-07 00:00:00', 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `base_tuser` VALUES (748, '', 'admin', 'e9e7e7f4605e4af089dad0349637cbf0', 'info@gmail.com', NULL, 'Quản Trị', '_', 'Viên', '3', NULL, 'admin12#$', '1', '0', '2013-08-03 00:00:00', '2025-04-14 00:00:00', 746, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
