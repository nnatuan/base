-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2026 at 08:44 AM
-- Server version: 10.5.29-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_taccess`
--

CREATE TABLE `base_taccess` (
  `nid` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `ccontroller` varchar(100) DEFAULT NULL,
  `cfunction` varchar(100) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `nid_group` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_taccess`
--

INSERT INTO `base_taccess` (`nid`, `cname`, `ccontroller`, `cfunction`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `nid_group`) VALUES
(1, 'Xem DS cấu hình', 'do_config_listview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Thêm cấu hình', 'do_config', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Sửa cấu hình', 'do_config', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Xem DS người dùng', 'do_employee_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(5, 'Thêm người dùng', 'do_employee', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(6, 'Sửa người dùng', 'do_employee', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(7, 'Xem DS slider', 'do_banner_images_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(8, 'Thêm slider', 'do_banner_images', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(9, 'Sửa slider', 'do_banner_images', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(10, 'Xem DS module', 'do_module_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(11, 'Thêm module', 'do_module', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(12, 'Sửa module', 'do_module', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(13, 'Xem DS bài viết', 'do_article_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 5),
(14, 'Thêm bài viết', 'do_article', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 5),
(15, 'Sửa bài viết', 'do_article', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 5),
(16, 'Xem DS tin tức', 'do_news_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 6),
(17, 'Thêm tin tức', 'do_news', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 6),
(18, 'Sửa tin tức', 'do_news', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 6),
(19, 'Xem DS nhóm SP', 'do_cat_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 7),
(20, 'Thêm nhóm SP', 'do_cat_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 7),
(21, 'Sửa nhóm SP', 'do_cat_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 7),
(22, 'Xem DS sản phẩm', 'do_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 8),
(23, 'Thêm sản phẩm', 'do_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 8),
(24, 'Sửa sản phẩm', 'do_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 8),
(25, 'Xóa người dùng', 'do_employee_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(26, 'Xóa slider', 'do_banner_images_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(27, 'Xóa module', 'do_module_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(29, 'Xóa tin tức', 'do_news_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 6),
(28, 'Xóa bài viết', 'do_article_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 5),
(30, 'Xóa nhóm SP', 'do_cat_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 7),
(31, 'Xóa sản phẩm', 'do_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 8),
(32, 'Xem đơn hàng', 'do_order_listview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9),
(33, 'Cập nhật đơn hàng', 'do_order_listview', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 9),
(35, 'Xem DS phân loại SP', 'do_material_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 10),
(36, 'Thêm phân loại SP', 'do_material_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 10),
(37, 'Sửa phân loại SP', 'do_material_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 10),
(38, 'Xem DS thương hiệu', 'do_brand_products_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 11),
(39, 'Thêm thương hiệu', 'do_brand_products', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 11),
(40, 'Sửa thương hiệu', 'do_brand_products', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 11),
(41, 'Xem DS mã giảm giá', 'do_code_sale_listview', '', NULL, NULL, NULL, NULL, NULL, NULL, 12),
(42, 'Thêm mã giảm giá', 'do_code_sale', 'f_add', NULL, NULL, NULL, NULL, NULL, NULL, 12),
(43, 'Sửa mã giảm giá', 'do_code_sale', 'f_edit', NULL, NULL, NULL, NULL, NULL, NULL, 12),
(44, 'Xóa mã giảm giá', 'do_code_sale', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 12),
(45, 'Xóa thương hiệu', 'do_brand_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 11),
(46, 'Xóa phân loại SP', 'do_material_products_listview', 'f_del', NULL, NULL, NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `base_tarticle`
--

CREATE TABLE `base_tarticle` (
  `nid` int(11) NOT NULL,
  `nid_type` int(11) DEFAULT NULL,
  `ctitle` varchar(500) DEFAULT NULL,
  `ctag` varchar(400) NOT NULL,
  `eng_ctitle` varchar(500) DEFAULT NULL,
  `alwcmt` char(1) DEFAULT NULL,
  `cshort_content` text DEFAULT NULL,
  `eng_cshort_content` text DEFAULT NULL,
  `ccontent` text DEFAULT NULL,
  `eng_ccontent` text DEFAULT NULL,
  `cimage_thumb` varchar(200) DEFAULT NULL,
  `ctype` char(1) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cishome` char(1) DEFAULT NULL,
  `cno_delete` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `dtime02` time DEFAULT NULL,
  `dtime01` time DEFAULT NULL,
  `cproduct` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tarticle`
--

INSERT INTO `base_tarticle` (`nid`, `nid_type`, `ctitle`, `ctag`, `eng_ctitle`, `alwcmt`, `cshort_content`, `eng_cshort_content`, `ccontent`, `eng_ccontent`, `cimage_thumb`, `ctype`, `nstatus`, `cishome`, `cno_delete`, `cindex`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `dtime02`, `dtime01`, `cproduct`) VALUES
(1, NULL, 'Giới thiệu về BASE - Chuyên Vật Tư & Thi Công Ron Gạch', 'gioi-thieu, vat-tu-ron-gach, thi-cong-ron-gach, keo-epoxy-2-thanh-phan, base', '', '', 'BASE là đơn vị tiên phong hàng đầu chuyên cung cấp vật tư keo ron Epoxy cao cấp và dịch vụ thi công ron gạch trọn gói công nghệ Châu Âu, chống thấm tuyệt đối 100%, kháng rêu mốc vĩnh viễn và bảo hành độ bền lên đến 10 năm.', '', '<div class=\"intro-overview\">\r\n    <p class=\"lead-text\">\r\n        Chào mừng Quý khách đến với <strong>BASE</strong> – Đơn vị tiên phong hàng đầu tại Việt Nam trong lĩnh vực <strong>cung cấp vật tư keo ron cao cấp</strong> và <strong>dịch vụ thi công ron gạch trọn gói</strong> theo tiêu chuẩn công nghệ Châu Âu. Chúng tôi mang đến giải pháp bảo vệ sàn nhà và tường gạch hoàn hảo, chấm dứt hoàn toàn tình trạng ron gạch bị ố vàng, ẩm mốc, bong tróc hay rỉ nước thường gặp ở các vật liệu truyền thống.\r\n    </p>\r\n</div>\r\n\r\n<div class=\"about-highlights-grid\">\r\n    <div class=\"highlight-item\">\r\n        <div class=\"hl-icon\"><i class=\"fas fa-shield-alt\"></i></div>\r\n        <h4>Chống Thấm Tuyệt Đối 100%</h4>\r\n        <p>Liên kết phân tử Epoxy đa chiều ngăn chặn triệt để nước và hóa chất xâm nhập xuống nền sàn.</p>\r\n    </div>\r\n    <div class=\"highlight-item\">\r\n        <div class=\"hl-icon\"><i class=\"fas fa-sparkles\"></i></div>\r\n        <h4>Kháng Mốc & Bám Bẩn Vĩnh Viễn</h4>\r\n        <p>Bề mặt men gốm mịn màng, chống bám bụi dầu mỡ, dễ dàng lau chùi chỉ với khăn ẩm.</p>\r\n    </div>\r\n    <div class=\"highlight-item\">\r\n        <div class=\"hl-icon\"><i class=\"fas fa-palette\"></i></div>\r\n        <h4>Bảng Màu Phong Phú Đẳng Cấp</h4>\r\n        <p>Hơn 30+ gam màu cao cấp: trơn mịn, bóng mờ, kim tuyến ánh kim phù hợp với mọi loại đá và gạch men.</p>\r\n    </div>\r\n    <div class=\"highlight-item\">\r\n        <div class=\"hl-icon\"><i class=\"fas fa-medal\"></i></div>\r\n        <h4>Bảo Hành Độ Bền Đến 10 Năm</h4>\r\n        <p>Cam kết chất lượng bền bỉ không co ngót, không nứt nẻ và không phai màu theo thời gian.</p>\r\n    </div>\r\n</div>\r\n\r\n<h2>1. Về Chúng Tôi - Thương Hiệu BASE</h2>\r\n<p>\r\n    Trong kiến trúc hiện đại, đường ron gạch tuy chỉ chiếm 1-2% diện tích bề mặt nhưng lại quyết định đến 90% vẻ đẹp thẩm mỹ, tính vệ sinh và độ bền kết cấu của cả công trình. Các loại xi măng trắng hay keo chà ron gốc xi măng truyền thống thường nhanh chóng xuất hiện các vấn đề như bám bẩn ố đen, nấm mốc rêu xanh, nứt gãy và gây thấm nước ẩm sàn chỉ sau một thời gian ngắn đưa vào sử dụng.\r\n</p>\r\n<p>\r\n    Thấu hiểu những phiền toái đó, <strong>BASE</strong> ra đời với sứ mệnh mang đến giải pháp <strong>ron gạch thẩm mỹ thế hệ mới</strong>, ứng dụng công nghệ keo Epoxy 2 thành phần tiên tiến hàng đầu thế giới. Chúng tôi tự hào đồng hành cùng hàng ngàn công trình từ căn hộ, biệt thự cao cấp, khách sạn 5 sao, trung tâm thương mại đến bệnh viện, hồ bơi và khu nghỉ dưỡng trên toàn quốc.\r\n</p>\r\n\r\n<h2>2. Tầm Nhìn & Sứ Mệnh</h2>\r\n<div class=\"vision-mission-cards\">\r\n    <div class=\"vm-card\">\r\n        <h3><i class=\"fas fa-eye\"></i> Tầm Nhìn</h3>\r\n        <p>Trở thành biểu tượng thương hiệu uy tín số 1 Việt Nam về vật tư và giải pháp thi công ron gạch thẩm mỹ công nghệ cao, nâng tầm chuẩn mực không gian sống sang trọng cho người Việt.</p>\r\n    </div>\r\n    <div class=\"vm-card\">\r\n        <h3><i class=\"fas fa-bullseye\"></i> Sứ Mệnh</h3>\r\n        <p>Kiến tạo những đường ron sắc sảo, bền đẹp như gương, bảo vệ ngôi nhà bền vững trước mọi tác động ẩm mốc và thời tiết, mang lại sự tiện nghi và an tâm tuyệt đối cho khách hàng.</p>\r\n    </div>\r\n</div>\r\n\r\n<h2>3. Lĩnh Vực Hoạt Động Cốt Lõi</h2>\r\n<p>BASE tập trung vào 2 lĩnh vực mũi nhọn tạo nên hệ sinh thái toàn diện:</p>\r\n<ul class=\"feature-list\">\r\n    <li><strong>Phân phối vật tư keo ron chính hãng:</strong> Cung cấp các dòng keo chà ron Epoxy 2 thành phần, keo trám khe co giãn, dung dịch vệ sinh ron chuyên dụng và bộ dụng cụ thi công chuẩn quốc tế (súng bắn keo chuyên dụng, bi miết ron cầu, sủi mạch, dao cạo...).</li>\r\n    <li><strong>Dịch vụ thi công chà ron gạch công trình mới:</strong> Thi công đường ron tinh xảo cho biệt thự, nhà phố, căn hộ cao cấp, showroom, sảnh lễ tân với độ chính xác và phẳng mịn hoàn hảo.</li>\r\n    <li><strong>Dịch vụ phục hồi & thay mới ron gạch cũ:</strong> Cắt nạo vét đường ron xi măng ố đen bằng máy hút bụi công suất lớn <em>hoàn toàn không bụi bẩn</em>, tái tạo lại đường ron Epoxy mới bóng sáng tinh tươm.</li>\r\n    <li><strong>Xử lý chống thấm chuyên sâu:</strong> Thi công ron đặc chủng chống thấm nước và kháng axit clo cho phòng tắm, toilet, khu giặt, ban công sân thượng và hồ bơi.</li>\r\n</ul>\r\n\r\n<h2>4. Quy Trình Thi Công 6 Bước Tiêu Chuẩn Tại BASE</h2>\r\n<ol class=\"step-process\">\r\n    <li><strong>Bước 1 - Khảo sát & Tư vấn:</strong> Đánh giá hiện trạng mặt sàn, độ rộng mạch gạch, tư vấn chọn tone màu keo ron hài hòa với màu gạch và phong cách kiến trúc.</li>\r\n    <li><strong>Bước 2 - Vệ sinh & Nạo vét mạch:</strong> Sử dụng máy cắt ron chuyên dụng kết hợp máy hút bụi công nghiệp làm sạch rãnh ron sâu 3-5mm, không bụi, không ồn.</li>\r\n    <li><strong>Bước 3 - Xử lý khô & Hút bụi kiệt:</strong> Đảm bảo 100% khe ron khô ráo và sạch cát bụi trước khi bơm keo.</li>\r\n    <li><strong>Bước 4 - Bơm keo ron Epoxy chuẩn tỉ lệ:</strong> Bơm đều keo qua vòi trộn tĩnh, len lỏi lấp đầy toàn bộ khe hở.</li>\r\n    <li><strong>Bước 5 - Miết mạch & Tạo form:</strong> Dùng bi cầu miết ron tạo bề mặt bóng mịn, láng phẳng, liền mạch với mép gạch.</li>\r\n    <li><strong>Bước 6 - Bóc keo thừa & Nghiệm thu:</strong> Chờ keo khô ổn định (2-3 giờ), bóc tách phần keo thừa nhẹ nhàng và bàn giao mặt sàn sạch bóng cho gia chủ.</li>\r\n</ol>\r\n\r\n<blockquote>\r\n    \"Sự hài lòng của khách hàng và nét đẹp hoàn mỹ trên từng milimet đường ron chính là thước đo giá trị vững chắc nhất cho sự phát triển của thương hiệu BASE.\"\r\n</blockquote>', '', '', '1', 1, NULL, NULL, '', '', 1, 1, '2026-11-16', '2026-11-23', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_tbanner_images`
--

CREATE TABLE `base_tbanner_images` (
  `ccode` varchar(50) DEFAULT NULL,
  `cbanner_images` varchar(250) DEFAULT NULL,
  `ctag` text DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` longtext DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `cview` varchar(100) DEFAULT NULL,
  `nid_loc_banner` int(11) DEFAULT NULL,
  `cimage_mobile` varchar(250) DEFAULT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `base_tbanner_images`
--

INSERT INTO `base_tbanner_images` (`ccode`, `cbanner_images`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cview`, `nid_loc_banner`, `cimage_mobile`, `nid`) VALUES
('BASC • CHUẨN CÔNG NGHỆ ĐỨC', 'KEO CHÀ RON EPOXY <span>2 THÀNH PHẦN</span> CAO CẤP', 'san-pham', '', 'Đường ron sáng bóng như men sứ, chống thấm 100%, kháng nấm mốc & không ố vàng trọn đời. Đầy đủ 24+ màu sắc thời thượng cho mọi loại gạch đá.', 1, '1', 1, NULL, '2026-11-23', '2026-11-23', NULL, NULL, NULL, 1),
('DỊCH VỤ THI CÔNG TRỌN GÓI', 'CẢI TẠO & PHỤC HỒI <span>RON GẠCH CŨ</span> TRONG NGÀY', 'dich-vu', '', 'Nạo vét cắt rãnh hút bụi sạch sẽ không ồn không bụi mịn. Bắn keo mới chuẩn thợ cho nhà ở, biệt thự, căn hộ và hồ bơi. Bảo hành màu sắc lên đến 10 năm.', 1, '2', 1, NULL, '2026-11-23', '2026-11-23', NULL, NULL, NULL, 2),
('VẬT TƯ & DỤNG CỤ CHUYÊN DỤNG', 'TRỌN BỘ CÔNG CỤ <span>THI CÔNG RON</span> CHUẨN THỢ', 'san-pham', '', 'Cung cấp súng trợ lực đôi hợp kim, vòi trộn xoắn tự động 24 tầng, bộ bi cầu vê ron và dao cạo sủi ron cao cấp. Chiết khấu cao cho nhà thầu & đại lý.', 1, '3', 1, NULL, '2026-11-23', '2026-11-23', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `base_tbrand_products`
--

CREATE TABLE `base_tbrand_products` (
  `nid` int(11) NOT NULL,
  `nid_material_products` int(11) DEFAULT NULL,
  `nid_cat_products` int(11) DEFAULT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cbrand_products` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` int(11) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `cbanner` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tcat_news`
--

CREATE TABLE `base_tcat_news` (
  `nid` int(11) NOT NULL,
  `nid_section_news` int(11) DEFAULT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `ccat_news` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `nspecial` char(4) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tcat_news`
--

INSERT INTO `base_tcat_news` (`nid`, `nid_section_news`, `ccode`, `ccat_news`, `ctag`, `nspecial`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 6, 'tin-tuc', 'Tin tức', '', NULL, NULL, '', 1, '1', 1, 1, '2024-09-06', '2025-02-12'),
(2, 6, 'dich-vu-thi-cong', 'Dịch vụ thi công keo chà ron', 'service', '1', 'fa-helmet-safety', 'Nhóm dịch vụ thi công keo chà ron gạch chuyên nghiệp', 1, '2', 1, 1, '2024-09-06', '2025-04-03'),
(3, 6, 'hinh-anh-video-thuc-te', 'Hình ảnh & Video thực tế', 'ugc', '1', 'fa-video', 'Cận cảnh công trình thực tế và video hướng dẫn thi công', 1, '3', 1, 1, '2024-10-18', '2024-10-18'),
(4, 6, 'khach-hang-noi-gi', 'Khách hàng nói gì', 'testimonial', '1', 'fa-heart', 'Cảm nhận và đánh giá thực tế từ gia chủ, chủ thầu', 1, '4', 1, 1, '2024-10-18', '2024-10-18'),
(5, 6, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', 'faq', '1', 'fa-circle-question', 'Giải đáp thắc mắc về vật tư và dịch vụ thi công', 1, '5', 1, 1, '2024-10-18', '2025-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `base_tcat_products`
--

CREATE TABLE `base_tcat_products` (
  `nid` int(11) NOT NULL,
  `nid_material_products` int(11) DEFAULT NULL,
  `ccode` varchar(100) DEFAULT NULL,
  `ccat_products` varchar(250) DEFAULT NULL,
  `eng_ccat_products` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT 1,
  `cindex` int(11) DEFAULT NULL,
  `niduser01` int(11) DEFAULT 1,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT '2026-09-16',
  `ddate02` date DEFAULT NULL,
  `cproduct_fb` varchar(250) DEFAULT NULL,
  `fb_cdescription` text DEFAULT NULL,
  `nspecial` char(1) DEFAULT NULL,
  `cbanner1` varchar(200) DEFAULT NULL,
  `cbanner2` varchar(200) DEFAULT NULL,
  `cbanner3` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tcat_products`
--

INSERT INTO `base_tcat_products` (`nid`, `nid_material_products`, `ccode`, `ccat_products`, `eng_ccat_products`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cproduct_fb`, `fb_cdescription`, `nspecial`, `cbanner1`, `cbanner2`, `cbanner3`) VALUES
(1, 1, 'keo-ron-epoxy', 'Keo Ron Epoxy 2 Thành Phần', NULL, 'epoxy', 'fa-fill-drip', 'Nhóm keo chà ron Epoxy 2 thành phần chống thấm, chống nấm mốc', 1, 1, 1, NULL, '2026-11-16', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(2, 2, 'dung-cu-thi-cong', 'Công Cụ & Dụng Cụ Thi Công', NULL, 'tools', 'fa-toolbox', 'Nhóm dụng cụ máy móc chuyên dụng hỗ trợ thi công nạo vét và chà ron', 1, 2, 1, NULL, '2026-11-16', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(3, 1, 'keo-ron-anh-kim-tuyen', 'Keo Ron Ánh Kim Tuyến', NULL, 'epoxy', 'fa-gem', 'Keo chà ron ánh nhũ kim tuyến vàng/bạc cho biệt thự căn hộ cao cấp', 1, 3, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL),
(4, 2, 'sung-ban-keo-2-thanh-phan', 'Súng Bắn Keo 2 Thành Phần', NULL, 'tools', 'fa-gun', 'Súng bắn keo trợ lực đôi hợp kim thép sơn tĩnh điện', 1, 4, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL),
(5, 2, 'voi-tron-keo-xoan-oc', 'Vòi Trộn Keo Xoắn Ốc', NULL, 'tools', 'fa-tornado', 'Vòi trộn xoắn tự động 24 tầng hòa trộn keo tỷ lệ 1:1', 1, 5, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL),
(6, 2, 'bi-cau-miet-ve-ron', 'Bi Cầu Miết Vê Ron', NULL, 'tools', 'fa-circle-dot', 'Bộ bi cầu thép mạ crom miết ép mạch ron cong mịn bóng', 1, 6, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL),
(7, 2, 'dao-sui-vit-cao-ron', 'Dao Sủi & Vít Cạo Ron', NULL, 'tools', 'fa-screwdriver-wrench', 'Dao cạo sủi ron keo thừa và vít cạo ron xi măng cũ', 1, 7, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL),
(8, 2, 'may-cat-ron-mini', 'Máy Cắt Ron Mini', NULL, 'tools', 'fa-compact-disc', 'Máy cắt mạch ron mini hút bụi không ồn không bụi mẻ gạch', 1, 8, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL),
(9, 3, 'dich-vu-thi-cong-tron-goi', 'Dịch Vụ Thi Công Trọn Gói', NULL, 'service', 'fa-helmet-safety', 'Nhận thi công trọn gói nhà ở dân dụng biệt thự căn hộ', 1, 9, 1, NULL, '2026-11-16', NULL, NULL, NULL, '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_tcolor`
--

CREATE TABLE `base_tcolor` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `fprice` float(12,0) DEFAULT NULL,
  `fprice_sale` float(12,0) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` int(11) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `ccode_color` varchar(50) DEFAULT NULL,
  `cdescription` text DEFAULT NULL,
  `nremain` int(11) DEFAULT NULL,
  `cbarcode` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tconfig`
--

CREATE TABLE `base_tconfig` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cvalue` varchar(500) DEFAULT NULL,
  `cnote` varchar(25) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL,
  `cimage` varchar(500) DEFAULT NULL,
  `nstatus` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tconfig`
--

INSERT INTO `base_tconfig` (`nid`, `ccode`, `cname`, `cvalue`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cimage`, `nstatus`) VALUES
(1, '123', 'email contact page', 'lienhe@basc.vn', '', 713, 1, '2024-06-24 00:00:00', '2026-11-12 10:21:36', NULL, 1),
(2, 'fds', 'meta keyword global', 'basc, keo cha ron, keo cha ron epoxy, vat tu ron gach, thi cong ron gach, cha ron chong tham, keo dan gach', '', 741, 1, '2010-01-30 00:00:00', '2026-11-12 10:21:36', NULL, 1),
(3, 'gfd', 'title global', 'BASC – Chuyên Vật Tư & Thi Công Ron Gạch Cao Cấp', '', 741, 1, '2010-01-23 00:00:00', '2026-11-12 10:21:36', NULL, 1),
(4, NULL, 'meta description global', 'BASC chuyên cung cấp keo chà ron Epoxy 2 thành phần, dụng cụ ốp lát và dịch vụ thi công ron gạch chống thấm, chống nấm mốc, bảo hành 10 năm.', '', 746, 1, '2011-05-18 00:00:00', '2026-11-12 10:21:36', NULL, 1),
(7, NULL, 'Image FB', 'logo_20261116050613.svg', '', 1, 1, '2020-11-13 00:00:00', '2026-11-16 00:00:00', 'logo_20261116050613.svg', 1),
(8, NULL, 'Image logo', 'logo.svg', '', 1, 1, '2021-07-09 00:00:00', '2026-11-16 00:00:00', 'logo.svg', 1),
(9, NULL, 'Link FB', 'https://www.facebook.com/basc.rongach', '', 1, 1, '2021-08-24 00:00:00', '2026-11-12 10:21:36', '', 1),
(11, NULL, 'Link GG', 'https://maps.google.com/?q=TP.HCM', '', 1, 1, '2021-08-24 00:00:00', '2026-11-12 10:21:36', '', 1),
(12, NULL, 'Hotline', '0909 688 810', '', 1, 1, '2021-09-13 00:00:00', '2026-11-12 10:21:36', '', 1),
(14, NULL, 'Link Shopee', '#', '', 1, 1, '2021-09-14 00:00:00', '2026-11-12 17:20:00', '', 1),
(15, NULL, 'Link Tiktok', '#', '', 1, 1, '2022-10-27 00:00:00', '2026-11-12 17:20:00', '', 1),
(16, NULL, 'Link Lazada', '#', '', 1, 1, '2023-04-24 00:00:00', '2026-11-12 17:20:00', '', 1),
(17, NULL, 'Link chat Zalo', 'https://zalo.me/0909688810', '', 1, 1, '2023-04-25 00:00:00', '2026-11-12 10:21:36', '', 1),
(19, NULL, 'Chat Messenger', '#', '', 1, 1, '2024-06-24 00:00:00', '2026-11-12 17:20:00', '3336_20260125072526.php', 1),
(20, NULL, 'Địa chỉ trụ sở', 'TP. Hồ Chí Minh', '', 1, 1, '2024-06-27 00:00:00', '2026-11-12 10:21:36', '', 1),
(21, NULL, 'Văn phòng giao dịch', 'TP. Hồ Chí Minh', '', 1, 1, '2024-07-29 00:00:00', '2026-11-12 10:21:36', '', 1),
(23, 'slogan', 'Slogan', 'CHUYÊN VẬT TƯ & THI CÔNG RON GẠCH', '', 1, 1, '2026-11-11 07:40:22', '2026-11-12 10:21:36', '', 1),
(22, NULL, 'Tổng kho', 'Kho Vật Tư BASC – TP. Hồ Chí Minh', '', 1, 1, '2026-09-25 00:00:00', '2026-11-12 10:21:36', '', 1),
(24, 'hero_rating', 'Hero Rating', '4.9/5 từ 3.500+ công trình thực tế', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(25, 'hero_headline', 'Hero Headline', 'Đường Ron Gạch <span>Sáng Bóng Bền Đẹp</span> – Chống Thấm & Nấm Mốc 100%', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(26, 'hero_bullet_1', 'Hero Bullet 1', 'Keo chà ron Epoxy 2 thành phần cao cấp, không bong tróc, không ố vàng', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(27, 'hero_bullet_2', 'Hero Bullet 2', 'Thi công trọn gói sạch gọn trong ngày, bảo hành màu ron lên đến 10 năm', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(28, 'hero_bullet_3', 'Hero Bullet 3', 'Hơn 24 bảng màu thời thượng phù hợp mọi loại gạch men, đá hoa cương', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(29, 'hero_badge', 'Hero Badge', 'Chuẩn Đức', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(30, 'stat_1_num', 'Hero Stat 1 Num', '10 Năm', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(31, 'stat_1_lbl', 'Hero Stat 1 Label', 'Bảo hành màu ron', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(32, 'stat_2_num', 'Hero Stat 2 Num', '3.500+', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(33, 'stat_2_lbl', 'Hero Stat 2 Label', 'Công trình hoàn thiện', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(34, 'stat_3_num', 'Hero Stat 3 Num', '24 Giờ', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(35, 'stat_3_lbl', 'Hero Stat 3 Label', 'Khảo sát & thi công', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(36, 'hero_card_title', 'Hero Card Title', 'BASC Epoxy Pro Series', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1),
(37, 'hero_card_desc', 'Hero Card Desc', 'Độ bám dính vượt trội • Chống thấm tuyệt đối', '', 1, 1, '2026-11-16 09:10:08', '2026-11-16 09:10:08', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_tcookie`
--

CREATE TABLE `base_tcookie` (
  `nid` int(11) NOT NULL,
  `cid_session` varchar(50) DEFAULT NULL,
  `nid_user` int(11) DEFAULT NULL,
  `ckey` varchar(100) DEFAULT NULL,
  `cvalue` varchar(250) DEFAULT NULL,
  `cstatus` char(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tcookie`
--

INSERT INTO `base_tcookie` (`nid`, `cid_session`, `nid_user`, `ckey`, `cvalue`, `cstatus`) VALUES
(1, '2026_11_12_1794470866', 1, 'cookie_config_listview_m_orderby_clause', 'nid', '1'),
(2, '2026_11_12_1794470866', 1, 'cookie_config_listview_m_orderby_sort', 'asc', '1'),
(3, '2026_11_12_1794470866', 1, 'cookie_config_listview_txt_current_page', '2', '1'),
(4, '2026_11_16_1794794415', 1, 'cookie_module_listview_m_orderby_clause', 'nid', '1'),
(5, '2026_11_16_1794794415', 1, 'cookie_module_listview_m_orderby_sort', 'asc', '1'),
(6, '2026_11_16_1794794415', 1, 'cookie_module_listview_txt_current_page', '2', '1'),
(7, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_orderby_clause', 'nid', '1'),
(8, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_orderby_sort', 'asc', '1'),
(9, '2026_11_16_1794794415', 1, 'cookie_news_listview_txt_current_page', '1', '1'),
(10, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_m_orderby_clause', 'ccat_products', '1'),
(11, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_m_orderby_sort', 'asc', '1'),
(12, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txt_current_page', '1', '1'),
(13, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_m_chkf_ctag', '0', '1'),
(14, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_ddate01', '', '1'),
(15, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_cnote', '', '1'),
(16, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_ccode', '', '1'),
(17, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_cindex', '', '1'),
(18, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_ccat_products', '', '1'),
(19, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_txtf_nstatus', '', '1'),
(20, '2026_11_16_1794794415', 1, 'cookie_cat_product_listview_cbof_nid_material_products', '', '1'),
(21, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_cbof_nid_cat_news', '2', '1'),
(22, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_chkf_ctag', '0', '1'),
(23, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_nid', '', '1'),
(24, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_ctitle', '', '1'),
(25, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_cbof_nid_section_news', '', '1'),
(26, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_alwcmt', '', '1'),
(27, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_nstatus', '', '1'),
(28, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_nactive', '', '1'),
(29, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_txtf_ddate01', '', '1'),
(30, '2026_11_16_1794794415', 1, 'cookie_news_listview_m_cbof_language', '', '1'),
(31, '2026_11_16_1794794415', 1, 'cookie_product_listview_m_orderby_clause', 'cproducts', '1'),
(32, '2026_11_16_1794794415', 1, 'cookie_product_listview_m_orderby_sort', 'asc', '1'),
(33, '2026_11_16_1794794415', 1, 'cookie_product_listview_m_current_page', '1', '1'),
(34, '2026_11_16_1794794415', 1, 'cookie_banner_images_listview_m_orderby_clause', 'nid', '1'),
(35, '2026_11_16_1794794415', 1, 'cookie_banner_images_listview_m_orderby_sort', 'asc', '1'),
(36, '2026_11_16_1794794415', 1, 'cookie_banner_images_listview_txt_current_page', '1', '1'),
(37, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_orderby_clause', 'ctime', '1'),
(38, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_orderby_sort', 'desc', '1'),
(39, '2026_11_20_1795159976', 1, 'cookie_order_listview_txt_current_page', '1', '1'),
(40, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_ccode', '', '1'),
(41, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_caddress', '', '1'),
(42, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_cemail', '', '1'),
(43, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_cfullname', '', '1'),
(44, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_nphone', '', '1'),
(45, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_cnote', '', '1'),
(46, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_txtf_ddate01', '', '1'),
(47, '2026_11_20_1795159976', 1, 'cookie_order_listview_m_cbof_order_status', '', '1'),
(48, '2026_11_20_1795159976', 1, 'cookie_order_listview_cdate_from', '', '1'),
(49, '2026_11_20_1795159976', 1, 'cookie_order_listview_cdate_to', '', '1'),
(50, '2026_11_21_1795233969', 1, 'cookie_employee_listview_m_orderby_clause', 'ccode', '1'),
(51, '2026_11_21_1795233969', 1, 'cookie_employee_listview_m_orderby_sort', 'asc', '1'),
(52, '2026_11_20_1795159976', 1, 'cookie_employee_listview_m_current_page', '1', '1'),
(53, '2026_11_23_1795415724', 748, 'cookie_order_listview_m_orderby_clause', 'ctime', '1'),
(54, '2026_11_23_1795415724', 748, 'cookie_order_listview_m_orderby_sort', 'desc', '1'),
(55, '2026_11_23_1795415724', 748, 'cookie_order_listview_txt_current_page', '1', '1'),
(56, '2026_11_23_1795415724', 748, 'cookie_employee_listview_m_orderby_clause', 'ccode', '1'),
(57, '2026_11_23_1795415724', 748, 'cookie_employee_listview_m_orderby_sort', 'asc', '1'),
(58, '2026_11_23_1795415724', 748, 'cookie_employee_listview_m_current_page', '1', '1'),
(59, '2026_11_23_1795415724', 748, 'cookie_banner_images_listview_m_orderby_clause', 'nid', '1'),
(60, '2026_11_23_1795415724', 748, 'cookie_banner_images_listview_m_orderby_sort', 'asc', '1'),
(61, '2026_11_23_1795415724', 748, 'cookie_banner_images_listview_txt_current_page', '1', '1'),
(62, '2026_11_23_1795415724', 748, 'cookie_news_listview_m_orderby_clause', 'nid', '1'),
(63, '2026_11_23_1795415724', 748, 'cookie_news_listview_m_orderby_sort', 'asc', '1'),
(64, '2026_11_23_1795415724', 748, 'cookie_news_listview_txt_current_page', '1', '1'),
(65, '2026_11_23_1795415724', 748, 'cookie_module_listview_m_orderby_clause', 'nid', '1'),
(66, '2026_11_23_1795415724', 748, 'cookie_module_listview_m_orderby_sort', 'asc', '1'),
(67, '2026_11_23_1795415724', 748, 'cookie_module_listview_txt_current_page', '1', '1'),
(68, '2026_11_23_1795415724', 748, 'cookie_config_listview_m_orderby_clause', 'nid', '1'),
(69, '2026_11_23_1795415724', 748, 'cookie_config_listview_m_orderby_sort', 'asc', '1'),
(70, '2026_11_23_1795415724', 748, 'cookie_config_listview_txt_current_page', '1', '1'),
(71, '2026_11_23_1795415724', 748, 'cookie_cat_product_listview_m_orderby_clause', 'ccat_products', '1'),
(72, '2026_11_23_1795415724', 748, 'cookie_cat_product_listview_m_orderby_sort', 'asc', '1'),
(73, '2026_11_23_1795415724', 748, 'cookie_cat_product_listview_txt_current_page', '1', '1'),
(74, '2026_11_23_1795415724', 748, 'cookie_product_listview_m_orderby_clause', 'cproducts', '1'),
(75, '2026_11_23_1795415724', 748, 'cookie_product_listview_m_orderby_sort', 'asc', '1'),
(76, '2026_11_23_1795415724', 748, 'cookie_product_listview_m_current_page', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `base_tcustomer`
--

CREATE TABLE `base_tcustomer` (
  `nid` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `ccode` varchar(100) DEFAULT NULL,
  `ccode_group` varchar(100) DEFAULT NULL,
  `cap_dung_uu_dai` varchar(100) DEFAULT NULL,
  `cemail` varchar(200) DEFAULT NULL,
  `cphone` varchar(100) DEFAULT NULL,
  `cngay_sinh` varchar(200) DEFAULT NULL,
  `cgender` varchar(50) DEFAULT NULL,
  `cwebsite` varchar(100) DEFAULT NULL,
  `cimage` varchar(500) DEFAULT NULL,
  `cma_so_thue` varchar(100) DEFAULT NULL,
  `cnote` varchar(150) DEFAULT NULL,
  `caddress` varchar(250) DEFAULT NULL,
  `nstatus` char(1) DEFAULT '1',
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tfunction`
--

CREATE TABLE `base_tfunction` (
  `nid` int(11) NOT NULL,
  `cfunction` varchar(150) DEFAULT NULL,
  `cnote` varchar(150) DEFAULT NULL,
  `cdel` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tfunction`
--

INSERT INTO `base_tfunction` (`nid`, `cfunction`, `cnote`, `cdel`) VALUES
(2, 'do_employee_listview', '0', '0'),
(5, 'do_menu_permission', '0', '0'),
(8, 'do_change_password', '0', '0'),
(10, 'do_news_listview', '0', '0'),
(11, 'do_cat_news_listview', '0', '0'),
(40, 'do_cat_product_listview', '0', '0'),
(28, 'do_sponline_listview', '0', '0'),
(113, '', 'no delete', '0'),
(41, 'do_material_product_listview', '0', '0'),
(32, 'do_inform_news_listview', '0', '0'),
(46, 'do_help', '0', '0'),
(45, 'do_order_listview', '0', '0'),
(42, 'do_product_listview', '0', '0'),
(43, 'do_customer_listview', '0', '0'),
(38, 'do_config_listview', '0', '0'),
(44, 'do_order_status_listview', '0', '0'),
(47, 'do_site_map', '0', '0'),
(100, 'do_section_news_listview', '0', '0'),
(101, 'do_module_listview', '0', '0'),
(102, 'do_faq_listview', '0', '0'),
(103, 'do_recruit_listview', '0', '0'),
(104, 'do_weblink_listview', '0', '0'),
(105, 'do_banner_images_listview', '0', '0'),
(106, 'do_email_manager_listview', '0', '0'),
(107, 'do_comment_manager_listview', '0', '0'),
(108, 'do_work_listview', '0', '0'),
(109, 'do_cat_work_listview', '0', '0'),
(110, 'do_material_work_listview', '0', '0'),
(111, 'do_cat_faq_listview', '0', '0'),
(112, 'do_help_listview', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `base_tfunction_frontend`
--

CREATE TABLE `base_tfunction_frontend` (
  `nid` int(11) NOT NULL,
  `cfunction` varchar(250) DEFAULT NULL,
  `clink` varchar(250) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tfunction_frontend`
--

INSERT INTO `base_tfunction_frontend` (`nid`, `cfunction`, `clink`, `nstatus`) VALUES
(1, 'Trang chủ', 'index.php', 1),
(3, 'Tin tức', 'news', 1),
(9, 'Hỏi đáp', 'faq', 0),
(4, 'Liên hệ', 'contact', 1),
(13, 'Chi tiết sản phẩm', '/san_pham/chi_tiet_sp/', 0),
(6, 'Loại tin', 'news/sec/', 1),
(7, 'Nhóm tin', 'news/cat/', 1),
(8, 'Bài viết', 'news/detail/', 1),
(11, 'Loại sản phẩm', 'san_pham/dssp_theo_chat_lieu/', 0),
(12, 'Nhóm sản phẩm', 'san_pham/ds_san_pham/', 0),
(10, 'Sản phẩm', 'san_pham', 0),
(14, 'Gallery', 'Gallery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `base_tgallery`
--

CREATE TABLE `base_tgallery` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `ctitle` varchar(250) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `nspecial` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tgallery_detail`
--

CREATE TABLE `base_tgallery_detail` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `cgallery_detail` varchar(250) DEFAULT NULL,
  `cimage_full` varchar(250) DEFAULT NULL,
  `cimage_thumb` varchar(250) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` char(1) DEFAULT '1',
  `nindex` char(4) DEFAULT NULL,
  `ctag` varchar(200) DEFAULT NULL,
  `ddate01` datetime DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tgallery_img`
--

CREATE TABLE `base_tgallery_img` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `cimg_color` varchar(250) DEFAULT NULL,
  `ctitle` varchar(250) DEFAULT NULL,
  `cimg` varchar(250) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `nhome` int(11) DEFAULT NULL,
  `cindex` int(11) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tgroup_product`
--

CREATE TABLE `base_tgroup_product` (
  `nid` int(11) NOT NULL,
  `cname` varchar(250) DEFAULT NULL,
  `ccode` varchar(250) DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `ctime` varchar(100) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` varchar(50) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tguest_online`
--

CREATE TABLE `base_tguest_online` (
  `nid` int(11) NOT NULL,
  `csession_id` char(100) DEFAULT NULL,
  `ctime_log` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `base_tguest_online`
--

INSERT INTO `base_tguest_online` (`nid`, `csession_id`, `ctime_log`) VALUES
(304571, 'u0ehf632n33cjjbodlfg0993b5', 1480738928);

-- --------------------------------------------------------

--
-- Table structure for table `base_tindex`
--

CREATE TABLE `base_tindex` (
  `nid` int(11) NOT NULL,
  `nid_detail` int(11) DEFAULT NULL,
  `clink` varchar(200) NOT NULL,
  `ctable` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tindex`
--

INSERT INTO `base_tindex` (`nid`, `nid_detail`, `clink`, `ctable`) VALUES
(1, 18, 'accessories', 'tmaterial_products'),
(2, 17, 'thiet-bi-luu-tru', 'tmaterial_products'),
(3, 16, 'laptop', 'tmaterial_products'),
(4, 15, 'projector', 'tmaterial_products'),
(5, 14, 'audio', 'tmaterial_products'),
(6, 13, 'hd-player', 'tmaterial_products'),
(7, 41, 'speaker', 'tcat_products'),
(8, 42, 'hd-projector', 'tcat_products'),
(9, 40, 'cd-player', 'tcat_products'),
(10, 39, 'flower--binh-duong', 'tcat_products'),
(11, 38, 'receiver', 'tcat_products'),
(12, 36, 'hd-media', 'tcat_products'),
(13, 37, 'flower--da-lat', 'tcat_products'),
(14, 43, 'flower-can-tho', 'tcat_products'),
(15, 44, 'asus-eee-pc', 'tcat_products'),
(16, 45, 'hp-lenovo-mini', 'tcat_products'),
(17, 46, 'hdd-gan-trong', 'tcat_products'),
(18, 47, 'hdd-gan-ngoai', 'tcat_products'),
(19, 48, 'box', 'tcat_products'),
(20, 49, 'dock', 'tcat_products'),
(21, 50, 'hdmi', 'tcat_products'),
(22, 51, 'opptical', 'tcat_products'),
(23, 52, 'miscellaneous', 'tcat_products'),
(24, 1, 'unilever', 'tbrand_products'),
(25, 36, 'dune-hd', 'tbrand_products'),
(26, 37, 'egreat', 'tbrand_products'),
(27, 39, 'hd-pro', 'tbrand_products'),
(28, 40, 'imaxhd', 'tbrand_products'),
(29, 41, 'mede8er', 'tbrand_products'),
(30, 42, 'popcon-hour', 'tbrand_products'),
(31, 43, 'powerzest-hd', 'tbrand_products'),
(32, 44, 'tvix', 'tbrand_products'),
(33, 45, 'optoma', 'tbrand_products'),
(34, 46, 'panasonic', 'tbrand_products'),
(35, 47, 'sony', 'tbrand_products'),
(36, 48, 'viewsonic', 'tbrand_products'),
(37, 49, 'wd', 'tbrand_products'),
(38, 50, 'hitachi', 'tbrand_products'),
(39, 51, 'western-digital', 'tbrand_products'),
(40, 46, 'cpu-core-i5-3570(sk-1155)', 'tproduct'),
(41, 47, 'cpu-core-i5-3570k(sk-1155)', 'tproduct'),
(42, 48, 'tu-bep-thtb02', 'tproduct'),
(43, 49, 'nhan-cap-sharing', 'tproduct'),
(44, 53, 'asdasd', 'tcat_products'),
(45, 52, 'imax3d', 'tbrand_products'),
(46, 53, 'hd-life', 'tbrand_products'),
(47, 54, 'vaudi', 'tbrand_products'),
(48, 55, 'himedia', 'tbrand_products'),
(49, 56, 'mede8er', 'tbrand_products'),
(50, 57, 'tyco', 'tbrand_products'),
(51, 58, 'xtreamer-prodigy', 'tbrand_products'),
(52, 59, 'optoma', 'tbrand_products'),
(53, 60, 'panasonic', 'tbrand_products'),
(54, 61, 'jvc', 'tbrand_products'),
(55, 62, 'sony', 'tbrand_products'),
(56, 50, 'd.net-r-7300-plus', 'tproduct'),
(57, 51, 'nhan-cap-endless-love', 'tproduct'),
(58, 52, 'nhan-cap-love-story', 'tproduct'),
(59, 53, 'nhan-cap-love-story-1', 'tproduct'),
(60, 54, 'nhan-cap-infinity', 'tproduct'),
(61, 55, 'nhan-cap-love-forever', 'tproduct'),
(62, 56, 'nhan-cap-infinity-1', 'tproduct'),
(63, 57, 'nhan-cap-posato', 'tproduct'),
(64, 58, 'nhan-cap-one-you', 'tproduct'),
(65, 59, 'nhan-cap-deluxe', 'tproduct'),
(66, 60, 'nhan-cap-power-love', 'tproduct'),
(67, 61, 'nhan-cap-teana', 'tproduct'),
(68, 62, 'nhan-cap-love-story-2', 'tproduct'),
(69, 63, 'cpu-core-i7-4790k(sk-1150)', 'tproduct'),
(70, 64, 'main-h61-gigabyte', 'tproduct'),
(71, 65, 'main-h61-hieu-gigabyte', 'tproduct'),
(72, 66, 'main-h61-hieu-asus', 'tproduct'),
(73, 67, 'main-h61-hieu-gigabyte', 'tproduct'),
(74, 68, 'nhan-cap-king-love', 'tproduct'),
(75, 69, 'nhan-cap-my-love', 'tproduct'),
(76, 70, 'main-h61-hieu-asrock', 'tproduct'),
(77, 71, 'nhan-cap-key-love', 'tproduct'),
(78, 72, 'nhan-cap-love-valley', 'tproduct'),
(79, 73, 'nhan-cap-nice-dream', 'tproduct'),
(80, 74, 'nhan-cap-eternal', 'tproduct'),
(81, 75, 'nhan-cap-ware-love', 'tproduct'),
(82, 76, 'nhan-cap-nice-couple', 'tproduct'),
(83, 77, 'nhan-cap-targa', 'tproduct'),
(84, 63, 'd.net', 'tbrand_products'),
(85, 64, 'dune-hd', 'tbrand_products'),
(86, 78, 'nhan-cap-true-love-3', 'tproduct'),
(87, 79, 'nhan-cap-loving', 'tproduct'),
(88, 80, 'nhan-cap-passo-2', 'tproduct'),
(89, 81, 'nhan-cap-future-3', 'tproduct'),
(90, 82, '128gb-corsair-sata3-bh-08-2017', 'tproduct'),
(91, 83, 'nhan-cap-loving-2', 'tproduct'),
(92, 84, 'nhan-cap-ring-hearts-2', 'tproduct'),
(93, 85, 'nhan-cap-amor', 'tproduct'),
(94, 86, 'nhan-cap-true-love-1', 'tproduct'),
(95, 87, 'hdd-1tb-sata', 'tproduct'),
(96, 88, 'nhan-cap-fiesta', 'tproduct'),
(97, 54, 'bo-chua-o-cung', 'tcat_products'),
(98, 55, 'o-cung-mang', 'tcat_products'),
(99, 89, 'hd-6670-asus-bh-07-2017', 'tproduct'),
(100, 90, 'gt630-zotac-bh-02-2019', 'tproduct'),
(101, 91, 'nhan-cap-funny', 'tproduct'),
(102, 92, 'acbel-300w', 'tproduct'),
(103, 93, 'nhan-cap-vesta', 'tproduct'),
(104, 94, 'nhan-cap-strong-couple', 'tproduct'),
(105, 95, 'nhan-cap-the-same', 'tproduct'),
(106, 96, 'nhan-cap-with-me-1', 'tproduct'),
(107, 97, 'vga-gtx650ti-asus(bh-09-2016)', 'tproduct'),
(108, 98, 'nhan-cap-future-1', 'tproduct'),
(109, 99, 'may-bo-core-i5-2400', 'tproduct'),
(110, 100, 'may-bo-core-i5-2400', 'tproduct'),
(111, 101, 'may-bo-g850(-max-setting-lol...', 'tproduct'),
(112, 102, 'may-bo-q9300(max-setting-lol,-fifa2...', 'tproduct'),
(113, 103, 'vga-asus-gtx980', 'tproduct'),
(114, 104, 'may-bo-g850', 'tproduct'),
(115, 105, 'nhan-cap-nice-couple-2', 'tproduct'),
(116, 106, 'nhan-cap-with-me', 'tproduct'),
(117, 107, 'may-bo-dell-780-sff', 'tproduct'),
(118, 108, 'may-bo-hp-6200-pro', 'tproduct'),
(119, 109, 'hdd-4tb-wd-dong-re', 'tproduct'),
(120, 110, 'testes', 'tproduct'),
(121, 111, 'nhan-cap-love-days', 'tproduct'),
(122, 112, 'main-b75-hieu-asus(-b75m-a)', 'tproduct'),
(123, 113, 'nhan-cap-manh-ghep', 'tproduct'),
(124, 114, 'may-bo-hp-6200-pro(cpu-g850)', 'tproduct'),
(125, 115, 'ssd-500gb-samsung-850-evo', 'tproduct'),
(126, 116, 'may-bo-dell-optiplex-780', 'tproduct'),
(127, 117, 'may-bo-dell-optiplex-780(-core-quad-q8400)', 'tproduct'),
(128, 56, 'keyboard', 'tcat_products'),
(129, 118, 'may-bo-xeon-e3-1220-v2', 'tproduct'),
(130, 119, 'may-bo-xeon-e3-1220-v2', 'tproduct'),
(131, 120, 'dell-optiplex-780-ch1', 'tproduct'),
(132, 121, 'dell-optiplex-780-ch2', 'tproduct'),
(133, 122, 'dell-optiplex-780mt-ch1', 'tproduct'),
(134, 123, 'dell-optiplex-780mt-ch2', 'tproduct'),
(135, 124, 'dell-optiplex-9010-dt', 'tproduct'),
(136, 65, 'marantz', 'tbrand_products'),
(137, 66, 'denon', 'tbrand_products'),
(138, 67, 'primare', 'tbrand_products'),
(139, 125, 'dell-optiplex-990-dt-ch2', 'tproduct'),
(140, 126, 'dell-optiplex-990-ch1', 'tproduct'),
(141, 127, 'dell-optiplex-9010-dt-ch2', 'tproduct'),
(142, 128, 'dell-optiplex-9010-dt-ch1', 'tproduct'),
(143, 129, 'dell-optiplex-3010mt', 'tproduct'),
(144, 130, 'dell-optiplex-790-sff-ch1', 'tproduct'),
(145, 131, 'dell-optiplex-790-sff-ch2', 'tproduct'),
(146, 57, 'flower-sapa', 'tcat_products'),
(147, 68, 'denon', 'tbrand_products'),
(148, 132, 'dell-optiplex-990-dt-ch3', 'tproduct'),
(149, 69, 'onkyo', 'tbrand_products'),
(150, 133, 'dell-optiplex-9010-dt-ch3', 'tproduct'),
(151, 134, 'dell-optiplex-790-mt-ch1', 'tproduct'),
(152, 135, 'hp-6000-pro-ch1', 'tproduct'),
(153, 136, 'hp-6000-pro-ch2', 'tproduct'),
(154, 137, 'hp-6000-pro-mt-ch2', 'tproduct'),
(155, 138, 'hp-6000-pro-mt-ch1', 'tproduct'),
(156, 70, 'western-digital', 'tbrand_products'),
(157, 1, 'nhan-doi-ware-love', 'tproduct'),
(158, 22, 'test', 'tproduct'),
(159, 1, 'nhan-doi-ware-love', 'tproduct'),
(160, 27, 'nhan-cap-nice-couple1', 'tproduct'),
(161, 28, 'phong-ngu-thpn03', 'tproduct'),
(162, 29, 'tu-ao-thta01', 'tproduct'),
(163, 30, 'tu-ao-thta02', 'tproduct'),
(164, 31, 'nhan-cap-air-love-1', 'tproduct'),
(165, 32, 'tu-ao-thta03', 'tproduct'),
(166, 33, 'cpu-core-i3-2130(sk-1155)', 'tproduct'),
(167, 34, 'ke-tivi-thtv02', 'tproduct'),
(168, 35, 'ke-tivi-thtv03', 'tproduct'),
(169, 36, 'nhan-cap-love-u', 'tproduct'),
(170, 37, 'nhan-cap-air-blade', 'tproduct'),
(171, 38, 'noi-that-cafe-thcf01', 'tproduct'),
(172, 39, 'cafe-san-vuon-thcf02', 'tproduct'),
(173, 40, 'cafe-san-vuon-thcf03', 'tproduct'),
(174, 41, 'noi-that-nha-hang-thnh01', 'tproduct'),
(175, 42, 'cpu-core-i5-3330(sk-1155)', 'tproduct'),
(176, 43, 'cpu-core-i5-3450(sk-1155)', 'tproduct'),
(177, 44, 'cpu-core-i5-3470(sk-1155)', 'tproduct'),
(178, 45, 'cpu-core-i5-3570s(sk-1155)', 'tproduct'),
(179, 46, 'cpu-core-i5-3570(sk-1155)', 'tproduct'),
(180, 47, 'cpu-core-i5-3570k(sk-1155)', 'tproduct'),
(181, 48, 'tu-bep-thtb02', 'tproduct'),
(182, 49, 'nhan-cap-sharing', 'tproduct'),
(183, 50, 'nhan-cap-couple-1', 'tproduct'),
(184, 51, 'nhan-cap-endless-love', 'tproduct'),
(185, 52, 'nhan-cap-love-story', 'tproduct'),
(186, 53, 'nhan-cap-love-story-1', 'tproduct'),
(187, 54, 'nhan-cap-infinity', 'tproduct'),
(188, 55, 'nhan-cap-love-forever', 'tproduct'),
(189, 56, 'nhan-cap-infinity-1', 'tproduct'),
(190, 57, 'nhan-cap-posato', 'tproduct'),
(191, 58, 'nhan-cap-one-you', 'tproduct'),
(192, 59, 'nhan-cap-deluxe', 'tproduct'),
(193, 60, 'nhan-cap-power-love', 'tproduct'),
(194, 61, 'nhan-cap-teana', 'tproduct'),
(195, 62, 'nhan-cap-love-story-2', 'tproduct'),
(196, 63, 'cpu-core-i7-4790k(sk-1150)', 'tproduct'),
(197, 64, 'main-h61-gigabyte', 'tproduct'),
(198, 65, 'main-h61-hieu-gigabyte', 'tproduct'),
(199, 66, 'main-h61-hieu-asus', 'tproduct'),
(200, 67, 'main-h61-hieu-gigabyte', 'tproduct'),
(201, 68, 'nhan-cap-king-love', 'tproduct'),
(202, 69, 'nhan-cap-my-love', 'tproduct'),
(203, 70, 'main-h61-hieu-asrock', 'tproduct'),
(204, 71, 'nhan-cap-key-love', 'tproduct'),
(205, 72, 'nhan-cap-love-valley', 'tproduct'),
(206, 73, 'nhan-cap-nice-dream', 'tproduct'),
(207, 74, 'nhan-cap-eternal', 'tproduct'),
(208, 75, 'nhan-cap-ware-love', 'tproduct'),
(209, 76, 'nhan-cap-nice-couple', 'tproduct'),
(210, 77, 'nhan-cap-targa', 'tproduct'),
(211, 78, 'nhan-cap-true-love-3', 'tproduct'),
(212, 79, 'nhan-cap-loving', 'tproduct'),
(213, 80, 'nhan-cap-passo-2', 'tproduct'),
(214, 81, 'nhan-cap-future-3', 'tproduct'),
(215, 82, '128gb-corsair-sata3-bh-08-2017', 'tproduct'),
(216, 83, 'nhan-cap-loving-2', 'tproduct'),
(217, 84, 'nhan-cap-ring-hearts-2', 'tproduct'),
(218, 85, 'nhan-cap-amor', 'tproduct'),
(219, 86, 'nhan-cap-true-love-1', 'tproduct'),
(220, 87, 'hdd-1tb-sata', 'tproduct'),
(221, 88, 'nhan-cap-fiesta', 'tproduct'),
(222, 89, 'hd-6670-asus-bh-07-2017', 'tproduct'),
(223, 90, 'gt630-zotac-bh-02-2019', 'tproduct'),
(224, 91, 'nhan-cap-funny', 'tproduct'),
(225, 92, 'acbel-300w', 'tproduct'),
(226, 93, 'nhan-cap-vesta', 'tproduct'),
(227, 94, 'nhan-cap-strong-couple', 'tproduct'),
(228, 95, 'nhan-cap-the-same', 'tproduct'),
(229, 96, 'nhan-cap-with-me-1', 'tproduct'),
(230, 97, 'vga-gtx650ti-asus(bh-09-2016)', 'tproduct'),
(231, 98, 'nhan-cap-future-1', 'tproduct'),
(232, 99, 'may-bo-core-i5-2400', 'tproduct'),
(233, 100, 'may-bo-core-i5-2400', 'tproduct'),
(234, 101, 'may-bo-g850(-max-setting-lol...', 'tproduct'),
(235, 102, 'may-bo-q9300(max-setting-lol,-fifa2...', 'tproduct'),
(236, 103, 'vga-asus-gtx980', 'tproduct'),
(237, 104, 'may-bo-g850', 'tproduct'),
(238, 105, 'nhan-cap-nice-couple-2', 'tproduct'),
(239, 106, 'nhan-cap-with-me', 'tproduct'),
(240, 107, 'may-bo-dell-780-sff', 'tproduct'),
(241, 108, 'may-bo-hp-6200-pro', 'tproduct'),
(242, 109, 'hdd-4tb-wd-dong-re', 'tproduct'),
(243, 110, 'nhan-cap-amor-dia', 'tproduct'),
(244, 111, 'nhan-cap-love-days', 'tproduct'),
(245, 112, 'main-b75-hieu-asus(-b75m-a)', 'tproduct'),
(246, 113, 'nhan-cap-manh-ghep', 'tproduct'),
(247, 114, 'may-bo-hp-6200-pro(cpu-g850)', 'tproduct'),
(248, 115, 'ssd-500gb-samsung-850-evo', 'tproduct'),
(249, 116, 'may-bo-dell-optiplex-780', 'tproduct'),
(250, 117, 'may-bo-dell-optiplex-780(-core-quad-q8400)', 'tproduct'),
(251, 118, 'may-bo-xeon-e3-1220-v2', 'tproduct'),
(252, 119, 'may-bo-xeon-e3-1220-v2', 'tproduct'),
(253, 120, 'dell-optiplex-780-ch1', 'tproduct'),
(254, 121, 'dell-optiplex-780-ch2', 'tproduct'),
(255, 122, 'dell-optiplex-780mt-ch1', 'tproduct'),
(256, 123, 'dell-optiplex-780mt-ch2', 'tproduct'),
(257, 124, 'dell-optiplex-9010-dt', 'tproduct'),
(258, 125, 'dell-optiplex-990-dt-ch2', 'tproduct'),
(259, 126, 'dell-optiplex-990-ch1', 'tproduct'),
(260, 127, 'dell-optiplex-9010-dt-ch2', 'tproduct'),
(261, 128, 'dell-optiplex-9010-dt-ch1', 'tproduct'),
(262, 129, 'dell-optiplex-3010mt', 'tproduct'),
(263, 130, 'dell-optiplex-790-sff-ch1', 'tproduct'),
(264, 131, 'dell-optiplex-790-sff-ch2', 'tproduct'),
(265, 132, 'dell-optiplex-990-dt-ch3', 'tproduct'),
(266, 133, 'dell-optiplex-9010-dt-ch3', 'tproduct'),
(267, 134, 'dell-optiplex-790-mt-ch1', 'tproduct'),
(268, 135, 'hp-6000-pro-ch1', 'tproduct'),
(269, 136, 'hp-6000-pro-ch2', 'tproduct'),
(270, 137, 'hp-6000-pro-mt-ch2', 'tproduct'),
(271, 138, 'hp-6000-pro-mt-ch1', 'tproduct'),
(272, 139, 'hp-pavilion-500-501x', 'tproduct'),
(273, 140, 'hp-6200-pro-ch1', 'tproduct'),
(274, 141, 'hp-6200-pro-ch2', 'tproduct'),
(275, 142, 'hp-6200-pro-ch3', 'tproduct'),
(276, 143, 'nec-ml-b-ch2', 'tproduct'),
(277, 144, 'fujitsu-fmv-ch2', 'tproduct'),
(278, 145, 'lenovo-m91p-ch1', 'tproduct'),
(279, 146, 'lenovo-m91p-ch2', 'tproduct'),
(280, 147, 'fujitsu-fmv-ch1-g860', 'tproduct'),
(281, 148, 'fujitsu-fmv-ch3', 'tproduct'),
(282, 149, 'may-do-hoa-ch1', 'tproduct'),
(283, 150, 'may-do-hoa-ch2', 'tproduct'),
(284, 151, 'lcd-dell-20-inch-led', 'tproduct'),
(285, 152, 'lcd-lg-samsung-17-inch', 'tproduct'),
(286, 153, 'lcd-aoc-20-inch-led', 'tproduct'),
(287, 154, 'lcd-hp-compad-20-inch-led', 'tproduct'),
(288, 155, 'lcd-dell-22-inch-led', 'tproduct'),
(289, 156, 'lcd-dell-19-inch', 'tproduct'),
(290, 157, 'lcd-dell-19-inch-led', 'tproduct'),
(291, 158, 'dell-24-inch-e2414h', 'tproduct'),
(292, 159, 'laptop-hp-8470p', 'tproduct'),
(293, 160, 'laptop-hp-elitebook-8440p', 'tproduct'),
(294, 161, 'laptop-hp-probook-4530s-core-i5', 'tproduct'),
(295, 162, 'laptop-hp-probook-6460b-core-i5', 'tproduct'),
(296, 163, 'laptop-hp-probook-6470b', 'tproduct'),
(297, 164, 'laptop-dell-e6420', 'tproduct'),
(298, 165, 'laptop-dell-latitude-3330-ca543', 'tproduct'),
(299, 166, 'laptop-dell-latitude-e6230', 'tproduct'),
(300, 167, 'laptop-dell-latitude-e4310', 'tproduct'),
(301, 168, 'laptop-dell-latitude-e5430', 'tproduct'),
(302, 169, 'giuong-ngu-thgn04', 'tproduct'),
(303, 170, 'giuong-ngu-thgn13', 'tproduct'),
(304, 171, 'tu-ruou-phong-khach-thpk06', 'tproduct'),
(305, 172, 'tu-ruou-phong-khach-thpk07', 'tproduct'),
(306, 173, 'tu-ao-thta06', 'tproduct'),
(307, 174, 'tu-ao-thta07', 'tproduct'),
(308, 175, 'ke-tivi-thtv14', 'tproduct'),
(309, 176, 'ke-tivi-thtv07', 'tproduct'),
(310, 177, 'tu-bep-thtb06', 'tproduct'),
(311, 178, 'tu-bep-thtb14', 'tproduct'),
(312, 179, 'phong-ngu-thpn12', 'tproduct'),
(313, 180, 'phong-ngu-thpn07', 'tproduct'),
(314, 181, 'giuong-ngu-thgn06', 'tproduct'),
(315, 182, 'giuong-ngu-thgn07', 'tproduct'),
(316, 183, 'tu-ao-thta08', 'tproduct'),
(317, 184, 'tu-ao-thta09', 'tproduct'),
(318, 185, 'tu-ao-thta10', 'tproduct'),
(319, 186, 'ke-tivi-thtv08', 'tproduct'),
(320, 187, 'ke-tivi-thtv09', 'tproduct'),
(321, 188, 'ke-tivi-thtv10', 'tproduct'),
(322, 189, 'tu-bep-thtb14', 'tproduct'),
(323, 190, 'tu-bep-thtb12', 'tproduct'),
(324, 191, 'tu-bep-thtb13', 'tproduct'),
(325, 192, 'phong-ngu-thpn08', 'tproduct'),
(326, 193, 'phong-ngu-thpn06', 'tproduct'),
(327, 194, 'phong-ngu-thpn15', 'tproduct'),
(328, 195, 'giuong-ngu-thgn08', 'tproduct'),
(329, 196, 'giuong-ngu-thgn05', 'tproduct'),
(330, 197, 'giuong-ngu-thgn10', 'tproduct'),
(331, 198, 'phong-khach-thpk08', 'tproduct'),
(332, 199, 'phong-khach-thpk14', 'tproduct'),
(333, 200, 'phong-khach-thpk10', 'tproduct'),
(334, 201, 'phong-khach-thpk11', 'tproduct'),
(335, 202, 'phong-khach-thpk12', 'tproduct'),
(336, 203, 'phong-khach-thpk13', 'tproduct'),
(337, 204, 'tu-ao-thta11', 'tproduct'),
(338, 205, 'tu-ao-thta12', 'tproduct'),
(339, 206, 'tu-ao-thta13', 'tproduct'),
(340, 207, 'ke-tivi-thtv11', 'tproduct'),
(341, 208, 'ke-tivi-thtv12', 'tproduct'),
(342, 209, 'ke-tivi-thtv13', 'tproduct'),
(343, 210, 'tu-bep-thtb08', 'tproduct'),
(344, 211, 'tu-bep-thtb09', 'tproduct'),
(345, 212, 'tu-bep-thtb10', 'tproduct'),
(346, 213, 'phong-ngu-thpn11', 'tproduct'),
(347, 214, 'phong-ngu-thpn09', 'tproduct'),
(348, 215, 'phong-ngu-thpn13', 'tproduct'),
(349, 216, 'giuong-ngu-thgn11', 'tproduct'),
(350, 217, 'phong-ngu-thpn59', 'tproduct'),
(351, 218, 'giuong-ngu-thgn09', 'tproduct'),
(352, 219, 'phong-ngu-thpn07', 'tproduct'),
(353, 220, 'phong-ngu-thpn04', 'tproduct'),
(354, 221, 'phong-ngu-thpn14', 'tproduct'),
(355, 222, 'phong-ngu-thpn11', 'tproduct'),
(356, 223, 'phong-ngu-thpn10', 'tproduct'),
(357, 224, 'tu-bep-thtb07', 'tproduct'),
(358, 225, 'ke-tivi-thtv06', 'tproduct'),
(359, 226, 'phong-khach-thpk12', 'tproduct'),
(360, 227, 'phong-khach-thpk09', 'tproduct'),
(361, 228, 'phong-khach-thpk15', 'tproduct'),
(362, 229, 'phong-khach-thpk13', 'tproduct'),
(363, 230, 'tu-bep-thtb03', 'tproduct'),
(364, 231, 'tu-bep-thtb06', 'tproduct'),
(365, 232, 'ke-tivi-thtv15', 'tproduct'),
(366, 233, 'ke-tivi-thtv16', 'tproduct'),
(367, 234, 'ke-tivi-thtv17', 'tproduct'),
(368, 235, 'ke-tivi-thtv18', 'tproduct'),
(369, 236, 'ke-tivi-thtv19', 'tproduct'),
(370, 237, 'ke-tivi-thtv20', 'tproduct'),
(371, 238, 'ke-tivi-thtv21', 'tproduct'),
(372, 239, 'ke-tivi-thtv22', 'tproduct'),
(373, 240, 'ke-tivi-thtv23', 'tproduct'),
(374, 241, 'ke-tivi-thtv24', 'tproduct'),
(375, 242, 'ke-tivi-thtv25', 'tproduct'),
(376, 243, 'ke-tivi-thtv26', 'tproduct'),
(377, 244, 'ke-tivi-thtv27', 'tproduct'),
(378, 245, 'ke-tivi-thtv28', 'tproduct'),
(379, 246, 'ke-tivi-thtv29', 'tproduct'),
(380, 247, 'ke-tivi-thtv30', 'tproduct'),
(381, 248, 'ke-tivi-thtv31', 'tproduct'),
(382, 249, 'ke-tivi-thtv32', 'tproduct'),
(383, 250, 'ke-tivi-thtv33', 'tproduct'),
(384, 251, 'ke-tivi-thtv34', 'tproduct'),
(385, 252, 'ke-tivi-thtv35', 'tproduct'),
(386, 253, 'ke-tivi-thtv36', 'tproduct'),
(387, 254, 'ke-tivi-thtv37', 'tproduct'),
(388, 255, 'ke-tivi-thtv38', 'tproduct'),
(389, 256, 'ke-tivi-thtv39', 'tproduct'),
(390, 257, 'ke-tivi-thtv40', 'tproduct'),
(391, 258, 'ke-tivi-thtv41', 'tproduct'),
(392, 259, 'ke-tivi-thtv42', 'tproduct'),
(393, 260, 'ke-tivi-thtv43', 'tproduct'),
(394, 261, 'ke-tivi-thtv44', 'tproduct'),
(395, 262, 'ke-tivi-thtv45', 'tproduct'),
(396, 263, 'ke-tivi-thtv46', 'tproduct'),
(397, 264, 'ke-tivi-thtv47', 'tproduct'),
(398, 265, 'ke-tivi-thtv48', 'tproduct'),
(399, 266, 'ke-tivi-thtv49', 'tproduct'),
(400, 267, 'ke-tivi-thtv50', 'tproduct'),
(401, 268, 'ke-tivi-thtv51', 'tproduct'),
(402, 269, 'ke-tivi-thtv52', 'tproduct'),
(403, 270, 'ke-tivi-thtv53', 'tproduct'),
(404, 271, 'ke-tivi-thtv54', 'tproduct'),
(405, 272, 'ke-tivi-thtv55', 'tproduct'),
(406, 273, 'ke-tivi-thtv56', 'tproduct'),
(407, 274, 'ke-tivi-thtv57', 'tproduct'),
(408, 275, 'ke-tivi-thtv58', 'tproduct'),
(409, 276, 'tu-bep-thtb15', 'tproduct'),
(410, 277, 'tu-bep-thtb16', 'tproduct'),
(411, 278, 'tu-bep-thtb17', 'tproduct'),
(412, 279, 'tu-bep-thtb19', 'tproduct'),
(413, 280, 'tu-bep-thtb18', 'tproduct'),
(414, 281, 'tu-bep-thtb20', 'tproduct'),
(415, 282, 'tu-bep-thtb16', 'tproduct'),
(416, 283, 'tu-bep-thtb15', 'tproduct'),
(417, 284, 'tu-bep-thtb12', 'tproduct'),
(418, 285, 'tu-bep-thtb24', 'tproduct'),
(419, 286, 'tu-bep-thtb22', 'tproduct'),
(420, 287, 'tu-bep-thtb26', 'tproduct'),
(421, 288, 'tu-bep-thtb27', 'tproduct'),
(422, 289, 'tu-bep-thtb28', 'tproduct'),
(423, 290, 'tu-bep-thtb29', 'tproduct'),
(424, 291, 'tu-bep-thtb30', 'tproduct'),
(425, 292, 'tu-bep-thtb31', 'tproduct'),
(426, 293, 'tu-bep-thtb32', 'tproduct'),
(427, 294, 'tu-bep-thtb33', 'tproduct'),
(428, 295, 'tu-bep-thtb34', 'tproduct'),
(429, 296, 'tu-bep-thtb35', 'tproduct'),
(430, 297, 'tu-bep-thtb36', 'tproduct'),
(431, 298, 'tu-bep-thtb37', 'tproduct'),
(432, 299, 'tu-bep-thtb38', 'tproduct'),
(433, 300, 'tu-bep-thtb39', 'tproduct'),
(434, 301, 'tu-bep-thtb40', 'tproduct'),
(435, 302, 'tu-bep-thtb41', 'tproduct'),
(436, 303, 'tu-bep-thtb42', 'tproduct'),
(437, 304, 'tu-bep-thtb43', 'tproduct'),
(438, 305, 'tu-bep-thtb44', 'tproduct'),
(439, 306, 'tu-bep-thtb11', 'tproduct'),
(440, 307, 'tu-bep-thtb46', 'tproduct'),
(441, 308, 'tu-bep-thtb47', 'tproduct'),
(442, 309, 'tu-bep-thtb48', 'tproduct'),
(443, 310, 'tu-bep-thtb49', 'tproduct'),
(444, 311, 'tu-bep-thtb21', 'tproduct'),
(445, 312, 'tu-bep-thtb51', 'tproduct'),
(446, 313, 'tu-bep-thtb52', 'tproduct'),
(447, 314, 'tu-bep-thtb53', 'tproduct'),
(448, 315, 'tu-bep-thtb54', 'tproduct'),
(449, 316, 'tu-bep-thtb55', 'tproduct'),
(450, 317, 'tu-bep-thtb54', 'tproduct'),
(451, 318, 'tu-bep-thtb56', 'tproduct'),
(452, 319, 'tu-bep-thtb20', 'tproduct'),
(453, 320, 'tu-bep-thtb45', 'tproduct'),
(454, 321, 'phong-khach-thpk14', 'tproduct'),
(455, 322, 'phong-khach-thpk15', 'tproduct'),
(456, 323, 'phong-khach-thpk16', 'tproduct'),
(457, 324, 'phong-khach-thpk17', 'tproduct'),
(458, 325, 'phong-khach-thpk18', 'tproduct'),
(459, 326, 'phong-khach-thpk19', 'tproduct'),
(460, 327, 'phong-khach-thpk20', 'tproduct'),
(461, 328, 'phong-khach-thpk21', 'tproduct'),
(462, 329, 'phong-khach-thpk22', 'tproduct'),
(463, 330, 'phong-khach-thpk23', 'tproduct'),
(464, 331, 'phong-khach-thpk24', 'tproduct'),
(465, 332, 'phong-khach-thpk25', 'tproduct'),
(466, 333, 'phong-khach-thpk26', 'tproduct'),
(467, 334, 'phong-khach-thpk27', 'tproduct'),
(468, 335, 'phong-khach-thpk28', 'tproduct'),
(469, 336, 'phong-khach-thpk29', 'tproduct'),
(470, 337, 'phong-khach-thpk30', 'tproduct'),
(471, 338, 'phong-khach-thpk31', 'tproduct'),
(472, 339, 'phong-khach-thpk32', 'tproduct'),
(473, 340, 'phong-khach-thpk33', 'tproduct'),
(474, 341, 'phong-khach-thpk34', 'tproduct'),
(475, 342, 'phong-khach-thpk35', 'tproduct'),
(476, 343, 'phong-khach-thpk36', 'tproduct'),
(477, 344, 'phong-khach-thpk37', 'tproduct'),
(478, 345, 'phong-khach-thpk38', 'tproduct'),
(479, 346, 'phong-khach-thpk39', 'tproduct'),
(480, 347, 'phong-ngu-thpn16', 'tproduct'),
(481, 348, 'phong-ngu-thpn17', 'tproduct'),
(482, 349, 'phong-ngu-thpn18', 'tproduct'),
(483, 350, 'phong-ngu-thpn20', 'tproduct'),
(484, 351, 'phong-ngu-thpn21', 'tproduct'),
(485, 352, 'phong-ngu-thpn22', 'tproduct'),
(486, 353, 'phong-ngu-thpn23', 'tproduct'),
(487, 354, 'phong-ngu-thpn24', 'tproduct'),
(488, 355, 'phong-ngu-thpn25', 'tproduct'),
(489, 356, 'phong-ngu-thpn26', 'tproduct'),
(490, 357, 'phong-ngu-thpn27', 'tproduct'),
(491, 358, 'phong-ngu-thpn28', 'tproduct'),
(492, 359, 'phong-ngu-thpn29', 'tproduct'),
(493, 360, 'phong-ngu-thpn30', 'tproduct'),
(494, 361, 'phong-ngu-thpn31', 'tproduct'),
(495, 362, 'phong-ngu-thpn32', 'tproduct'),
(496, 363, 'phong-ngu-thpn33', 'tproduct'),
(497, 364, 'phong-ngu-thpn34', 'tproduct'),
(498, 365, 'phong-ngu-thpn35', 'tproduct'),
(499, 366, 'phong-ngu-thpn36', 'tproduct'),
(500, 367, 'phong-ngu-thpn37', 'tproduct'),
(501, 368, 'phong-ngu-thpn38', 'tproduct'),
(502, 369, 'phong-ngu-thpn39', 'tproduct'),
(503, 370, 'phong-ngu-thpn40', 'tproduct'),
(504, 371, 'phong-ngu-thpn41', 'tproduct'),
(505, 372, 'phong-ngu-thpn42', 'tproduct'),
(506, 373, 'phong-ngu-thpn43', 'tproduct'),
(507, 374, 'phong-ngu-thpn44', 'tproduct'),
(508, 375, 'giuong-ngu-thgn14', 'tproduct'),
(509, 376, 'phong-ngu-thpn60', 'tproduct'),
(510, 377, 'phong-ngu-thpn61', 'tproduct'),
(511, 378, 'giuong-ngu-thgn17', 'tproduct'),
(512, 379, 'giuong-ngu-thgn18', 'tproduct'),
(513, 380, 'giuong-ngu-thgn19', 'tproduct'),
(514, 381, 'giuong-ngu-thgn20', 'tproduct'),
(515, 382, 'giuong-ngu-thgn21', 'tproduct'),
(516, 383, 'giuong-ngu-thgn22', 'tproduct'),
(517, 384, 'giuong-ngu-thgn23', 'tproduct'),
(518, 385, 'giuong-ngu-thgn24', 'tproduct'),
(519, 386, 'giuong-ngu-thgn25', 'tproduct'),
(520, 387, 'giuong-ngu-thgn26', 'tproduct'),
(521, 388, 'giuong-ngu-thgn27', 'tproduct'),
(522, 389, 'giuong-ngu-thgn28', 'tproduct'),
(523, 390, 'giuong-ngu-thgn29', 'tproduct'),
(524, 391, 'giuong-ngu-thgn30', 'tproduct'),
(525, 392, 'giuong-ngu-thgn31', 'tproduct'),
(526, 393, 'giuong-ngu-thgn32', 'tproduct'),
(527, 394, 'giuong-ngu-thgn33', 'tproduct'),
(528, 395, 'giuong-ngu-thgn34', 'tproduct'),
(529, 396, 'giuong-ngu-thgn35', 'tproduct'),
(530, 397, 'giuong-ngu-thgn36', 'tproduct'),
(531, 398, 'giuong-ngu-thgn37', 'tproduct'),
(532, 399, 'giuong-ngu-thgn38', 'tproduct'),
(533, 400, 'giuong-ngu-thgn39', 'tproduct'),
(534, 401, 'giuong-ngu-thgn40', 'tproduct'),
(535, 402, 'giuong-ngu-thgn41', 'tproduct'),
(536, 403, 'giuong-ngu-thgn42', 'tproduct'),
(537, 404, 'giuong-ngu-thgn43', 'tproduct'),
(538, 405, 'giuong-ngu-thgn44', 'tproduct'),
(539, 406, 'giuong-ngu-thgn45', 'tproduct'),
(540, 407, 'giuong-ngu-thgn46', 'tproduct'),
(541, 408, 'giuong-ngu-thgn47', 'tproduct'),
(542, 409, 'giuong-ngu-thgn48', 'tproduct'),
(543, 410, 'giuong-ngu-thgn49', 'tproduct'),
(544, 411, 'giuong-ngu-thgn50', 'tproduct'),
(545, 412, 'giuong-ngu-thgn51', 'tproduct'),
(546, 413, 'giuong-ngu-thgn52', 'tproduct'),
(547, 414, 'giuong-ngu-thgn53', 'tproduct'),
(548, 415, 'giuong-ngu-thgn54', 'tproduct'),
(549, 416, 'giuong-ngu-thgn55', 'tproduct'),
(550, 417, 'giuong-ngu-thgn56', 'tproduct'),
(551, 418, 'giuong-ngu-thgn57', 'tproduct'),
(552, 419, 'giuong-ngu-thgn58', 'tproduct'),
(553, 420, 'giuong-ngu-thgn59', 'tproduct'),
(554, 421, 'giuong-ngu-thgn60', 'tproduct'),
(555, 422, 'giuong-ngu-thgn61', 'tproduct'),
(556, 423, 'giuong-ngu-thgn62', 'tproduct'),
(557, 424, 'tu-ao-thta14', 'tproduct'),
(558, 425, 'tu-ao-thta15', 'tproduct'),
(559, 426, 'tu-ao-thta16', 'tproduct'),
(560, 427, 'tu-ao-thta17', 'tproduct'),
(561, 428, 'tu-ao-thta18', 'tproduct'),
(562, 429, 'tu-ao-thta19', 'tproduct'),
(563, 430, 'tu-ao-thta20', 'tproduct'),
(564, 431, 'tu-ao-thta21', 'tproduct'),
(565, 432, 'tu-ao-thta22', 'tproduct'),
(566, 433, 'tu-ao-thta23', 'tproduct'),
(567, 434, 'tu-ao-thta24', 'tproduct'),
(568, 435, 'tu-ao-thta25', 'tproduct'),
(569, 436, 'tu-ao-thta26', 'tproduct'),
(570, 437, 'tu-ao-thta27', 'tproduct'),
(571, 438, 'tu-ao-thta28', 'tproduct'),
(572, 439, 'tu-ao-thta29', 'tproduct'),
(573, 440, 'tu-ao-thta30', 'tproduct'),
(574, 441, 'tu-ao-thta31', 'tproduct'),
(575, 442, 'tu-ao-thta32', 'tproduct'),
(576, 443, 'tu-ao-thta33', 'tproduct'),
(577, 444, 'tu-ao-thta34', 'tproduct'),
(578, 445, 'tu-ao-thta35', 'tproduct'),
(579, 446, 'tu-ao-thta36', 'tproduct'),
(580, 447, 'tu-ao-thta37', 'tproduct'),
(581, 448, 'tu-ao-thta38', 'tproduct'),
(582, 449, 'tu-ao-thta39', 'tproduct'),
(583, 450, 'tu-ao-thta40', 'tproduct'),
(584, 451, 'tu-ao-thta38', 'tproduct'),
(585, 452, 'tu-ao-thta40', 'tproduct'),
(586, 453, 'tu-ao-thta41', 'tproduct'),
(587, 454, 'tu-ao-thta42', 'tproduct'),
(588, 455, 'tu-ao-thta36', 'tproduct'),
(589, 456, 'tu-ao-thta46', 'tproduct'),
(590, 457, 'tu-ao-thta25', 'tproduct'),
(591, 458, 'tu-ao-thta15', 'tproduct'),
(592, 459, 'tu-ao-thta11', 'tproduct'),
(593, 460, 'tu-ao-thta11', 'tproduct'),
(594, 461, 'tu-ao-thta511', 'tproduct'),
(595, 462, 'tu-ao-thta36', 'tproduct'),
(596, 463, 'tu-ao-thta53', 'tproduct'),
(597, 464, 'tu-ao-thta32', 'tproduct'),
(598, 465, 'tu-ao-thta55', 'tproduct'),
(599, 466, 'tu-ao-thta27', 'tproduct'),
(600, 467, 'tu-bep-thtb50', 'tproduct'),
(601, 468, 'tu-bep-thtb42', 'tproduct'),
(602, 469, 'phong-khach-thpk40', 'tproduct'),
(603, 470, 'phong-khach-thpk35', 'tproduct'),
(604, 471, 'phong-khach-thpk20', 'tproduct'),
(605, 472, 'giuong-ngu-thgn63', 'tproduct'),
(606, 473, 'phong-ngu-thpn67', 'tproduct'),
(607, 474, 'ke-tivi-thtv52', 'tproduct'),
(608, 475, 'ke-tivi-thtv16', 'tproduct'),
(609, 476, 'ke-tivi-thtv61', 'tproduct'),
(610, 477, 'phong-ngu-thpn45', 'tproduct'),
(611, 478, 'phong-ngu-thpn46', 'tproduct'),
(612, 479, 'tu-bep-thtb57', 'tproduct'),
(613, 480, 'ke-tivi-thtv61', 'tproduct'),
(614, 481, 'tu-bep-thtb55', 'tproduct'),
(615, 482, 'tu-bep-thtb51', 'tproduct'),
(616, 483, 'tu-bep-thtb29', 'tproduct'),
(617, 484, 'tu-bep-thtb61', 'tproduct'),
(618, 485, 'tu-bep-thtb15', 'tproduct'),
(619, 486, 'tu-bep-thtb14', 'tproduct'),
(620, 487, 'phong-khach-thpk41', 'tproduct'),
(621, 488, 'phong-ngu-thpn07', 'tproduct'),
(622, 489, 'phong-khach-thpk42', 'tproduct'),
(623, 490, 'phong-khach-thpk43', 'tproduct'),
(624, 491, 'phong-khach-thpk44', 'tproduct'),
(625, 492, 'phong-khach-thpk45', 'tproduct'),
(626, 493, 'phong-khach-thpk46', 'tproduct'),
(627, 494, 'phong-khach-thpk47', 'tproduct'),
(628, 495, 'phong-khach-thpk45', 'tproduct'),
(629, 496, 'phong-khach-thpk49', 'tproduct'),
(630, 497, 'phong-khach-thpk42', 'tproduct'),
(631, 498, 'phong-khach-thpk47', 'tproduct'),
(632, 499, 'phong-khach-thpk44', 'tproduct'),
(633, 500, 'phong-khach-thpk43', 'tproduct'),
(634, 501, 'tu-bep-thtb19', 'tproduct'),
(635, 502, 'tu-bep-thtb37', 'tproduct'),
(636, 503, 'tu-bep-thtb66', 'tproduct'),
(637, 504, 'tu-bep-thtb16', 'tproduct'),
(638, 505, 'tu-bep-thtb68', 'tproduct'),
(639, 506, 'tu-bep-thtb69', 'tproduct'),
(640, 507, 'tu-bep-thtb70', 'tproduct'),
(641, 508, 'tu-bep-thtb71', 'tproduct'),
(642, 509, 'tu-bep-thtb56', 'tproduct'),
(643, 510, 'tu-bep-thtb43', 'tproduct'),
(644, 511, 'tu-bep-thtb42', 'tproduct'),
(645, 512, 'tu-bep-thtb38', 'tproduct'),
(646, 513, 'tu-bep-thtb76', 'tproduct'),
(647, 514, 'tu-bep-thtb77', 'tproduct'),
(648, 515, 'tu-bep-thtb78', 'tproduct'),
(649, 516, 'tu-bep-thtb79', 'tproduct'),
(650, 517, 'tu-bep-thtb80', 'tproduct'),
(651, 518, 'tu-bep-thtb45', 'tproduct'),
(652, 519, 'tu-bep-thtb41', 'tproduct'),
(653, 520, 'tu-bep-thtb80', 'tproduct'),
(654, 521, 'tu-bep-thtb84', 'tproduct'),
(655, 522, 'tu-bep-thtb27', 'tproduct'),
(656, 523, 'tu-bep-thtb28', 'tproduct'),
(657, 524, 'tu-bep-thtb37', 'tproduct'),
(658, 525, 'tu-bep-thtb31', 'tproduct'),
(659, 526, 'tu-bep-thtb25', 'tproduct'),
(660, 527, 'phong-ngu-thpn47', 'tproduct'),
(661, 528, 'phong-ngu-thpn48', 'tproduct'),
(662, 529, 'phong-ngu-thpn49', 'tproduct'),
(663, 530, 'phong-ngu-thpn50', 'tproduct'),
(664, 531, 'phong-ngu-thpn51', 'tproduct'),
(665, 532, 'phong-ngu-thpn52', 'tproduct'),
(666, 533, 'phong-ngu-thpn53', 'tproduct'),
(667, 534, 'phong-ngu-thpn54', 'tproduct'),
(668, 535, 'phong-ngu-thpn55', 'tproduct'),
(669, 536, 'phong-ngu-thpn56', 'tproduct'),
(670, 537, 'phong-ngu-thpn57', 'tproduct'),
(671, 538, 'phong-ngu-thpn58', 'tproduct'),
(672, 539, 'phong-ngu-thpn52', 'tproduct'),
(673, 540, 'phong-ngu-thpn37', 'tproduct'),
(674, 541, 'phong-ngu-thpn34', 'tproduct'),
(675, 542, 'phong-ngu-thpn31', 'tproduct'),
(676, 543, 'giuong-ngu-thgn65', 'tproduct'),
(677, 544, 'giuong-ngu-thgn58', 'tproduct'),
(678, 545, 'giuong-ngu-thgn62', 'tproduct'),
(679, 546, 'giuong-ngu-thgn57', 'tproduct'),
(680, 547, 'giuong-ngu-thgn57', 'tproduct'),
(681, 548, 'giuong-ngu-thgn57', 'tproduct'),
(682, 549, 'giuong-ngu-thgn42', 'tproduct'),
(683, 550, 'giuong-ngu-thgn56', 'tproduct'),
(684, 551, 'giuong-ngu-thgn44', 'tproduct'),
(685, 552, 'giuong-ngu-thgn32', 'tproduct'),
(686, 553, 'giuong-ngu-thgn30', 'tproduct'),
(687, 554, 'giuong-ngu-thgn20', 'tproduct'),
(688, 555, 'phong-ngu-thpn62', 'tproduct'),
(689, 556, 'giuong-ngu-thgn17', 'tproduct'),
(690, 557, 'giuong-ngu-thgn16', 'tproduct'),
(691, 558, 'giuong-ngu-thgn15', 'tproduct'),
(692, 559, 'giuong-ngu-thgn12', 'tproduct'),
(693, 560, 'giuong-ngu-thgn58', 'tproduct'),
(694, 561, 'giuong-ngu-thgn61', 'tproduct'),
(695, 562, 'tu-bep-thtb28', 'tproduct'),
(696, 563, 'phong-ngu-thpn64', 'tproduct'),
(697, 564, 'phong-ngu-thpn65', 'tproduct'),
(698, 565, 'phong-ngu-thpn66', 'tproduct'),
(699, 566, 'tu-bep-thtb26', 'tproduct'),
(700, 567, 'phong-khach-thpk49', 'tproduct'),
(701, 568, 'ke-tivi-thtv59', 'tproduct'),
(702, 569, 'tu-bep-thtb34', 'tproduct'),
(703, 570, 'phong-ngu-thpn68', 'tproduct'),
(704, 571, 'phong-ngu-thpn34', 'tproduct'),
(705, 572, 'giuong-ngu-thgn63', 'tproduct'),
(706, 573, 'giuong-ngu-thgn64', 'tproduct'),
(707, 574, 'giuong-ngu-thgn65', 'tproduct'),
(708, 575, 'giuong-ngu-thgn66', 'tproduct'),
(709, 576, 'giuong-ngu-thgn67', 'tproduct'),
(710, 577, 'giuong-ngu-thgn68', 'tproduct'),
(711, 578, 'giuong-ngu-thgn69', 'tproduct'),
(712, 579, 'giuong-ngu-thgn70', 'tproduct'),
(713, 580, 'giuong-ngu-thgn71', 'tproduct'),
(714, 581, 'ke-tivi-thtv60', 'tproduct'),
(715, 582, 'phong-khach-thpk48', 'tproduct'),
(716, 583, 'phong-khach-thpk49', 'tproduct'),
(717, 584, 'phong-khach-thpk50', 'tproduct'),
(718, 585, 'phong-khach-thpk51', 'tproduct'),
(719, 586, 'phong-khach-thpk52', 'tproduct'),
(720, 587, 'phong-khach-thpk53', 'tproduct'),
(721, 588, 'phong-khach-thpk54', 'tproduct'),
(722, 589, 'phong-khach-thpk55', 'tproduct'),
(723, 590, 'phong-khach-thpk56', 'tproduct'),
(724, 591, 'phong-khach-thpk57', 'tproduct'),
(725, 592, 'phong-khach-thpk58', 'tproduct'),
(726, 593, 'phong-khach-thpk59', 'tproduct'),
(727, 594, 'phong-khach-thpk52', 'tproduct'),
(728, 595, 'tu-ao-thta43', 'tproduct'),
(729, 596, 'tu-ao-thta44', 'tproduct'),
(730, 597, 'tu-ao-thta45', 'tproduct'),
(731, 598, 'tu-ao-thta46', 'tproduct'),
(732, 599, 'tu-ao-thta47', 'tproduct'),
(733, 600, 'tu-ao-thta48', 'tproduct'),
(734, 601, 'tu-ao-thta49', 'tproduct'),
(735, 602, 'tu-ao-thta50', 'tproduct'),
(736, 603, 'tu-ao-thta51', 'tproduct'),
(737, 604, 'tu-ao-thta52', 'tproduct'),
(738, 605, 'tu-ao-thta53', 'tproduct'),
(739, 606, 'tu-ao-thta54', 'tproduct'),
(740, 607, 'tu-ao-thta55', 'tproduct'),
(741, 608, 'tu-ao-thta56', 'tproduct'),
(742, 609, 'tu-ao-thta57', 'tproduct'),
(743, 610, 'tu-ao-thta58', 'tproduct'),
(744, 611, 'tu-ao-thta59', 'tproduct'),
(745, 612, 'tu-ao-thta60', 'tproduct'),
(746, 613, 'tu-ao-thta61', 'tproduct'),
(747, 614, 'tu-ao-thta58', 'tproduct'),
(748, 615, 'tu-ao-thta58', 'tproduct'),
(749, 616, 'phong-ngu-thpn69', 'tproduct'),
(750, 617, 'phong-ngu-thpn70', 'tproduct'),
(751, 618, 'ke-tivi-thtv61', 'tproduct'),
(752, 619, 'giuong-ngu-thgn21', 'tproduct'),
(753, 620, 'ke-tivi-thtv62', 'tproduct'),
(754, 621, 'phong-khach-thpk60', 'tproduct'),
(755, 622, 'phong-khach-thpk61', 'tproduct'),
(756, 623, 'phong-khach-thpk62', 'tproduct'),
(757, 624, 'phong-khach-thpk63', 'tproduct'),
(758, 625, 'phong-khach-thpk64', 'tproduct'),
(759, 626, 'phong-khach-thpk46', 'tproduct'),
(760, 627, 'phong-khach-thpk62', 'tproduct'),
(761, 628, 'phong-khach-thpk62', 'tproduct'),
(762, 629, 'phong-khach-thpk61', 'tproduct'),
(763, 630, 'phong-khach-thpk57', 'tproduct'),
(764, 631, 'giuong-ngu-thgn12', 'tproduct'),
(765, 632, 'phong-ngu-thpn71', 'tproduct'),
(766, 633, 'phong-ngu-thpn72', 'tproduct'),
(767, 634, 'phong-ngu-thpn73', 'tproduct'),
(768, 635, 'giuong-ngu-thgn70', 'tproduct'),
(769, 636, 'giuong-ngu-thgn70', 'tproduct'),
(770, 637, 'giuong-ngu-thgn67', 'tproduct'),
(771, 638, 'giuong-ngu-thgn65', 'tproduct'),
(772, 639, 'ke-tivi-thtv63', 'tproduct'),
(773, 640, 'phong-khach-thpk62', 'tproduct'),
(774, 641, 'phong-khach-thpk63', 'tproduct'),
(775, 642, 'phong-khach-thpk64', 'tproduct'),
(776, 643, 'phong-khach-thpk65', 'tproduct'),
(777, 644, 'phong-khach-thpk66', 'tproduct'),
(778, 645, 'phong-khach-thpk67', 'tproduct'),
(779, 646, 'tu-bep-thtb02', 'tproduct'),
(780, 647, 'phong-ngu-thpn74', 'tproduct'),
(781, 648, 'phong-ngu-thpn75', 'tproduct'),
(782, 649, 'phong-ngu-thpn76', 'tproduct'),
(783, 650, 'phong-ngu-thpn77', 'tproduct'),
(784, 651, 'phong-ngu-thpn78', 'tproduct'),
(785, 652, 'ke-tivi-thtv64', 'tproduct'),
(786, 653, 'ke-tivi-thtv65', 'tproduct'),
(787, 654, 'ke-tivi-thtv66', 'tproduct'),
(788, 655, 'ke-tivi-thtv67', 'tproduct'),
(789, 656, 'ke-tivi-thtv68', 'tproduct'),
(790, 657, 'ke-tivi-thtv69', 'tproduct'),
(791, 658, 'ke-tivi-thtv70', 'tproduct'),
(792, 659, 'giuong-ngu-thgn72', 'tproduct'),
(793, 660, 'giuong-ngu-thgn73', 'tproduct'),
(794, 661, 'giuong-ngu-thgn74', 'tproduct'),
(795, 662, 'giuong-ngu-thgn75', 'tproduct'),
(796, 663, 'giuong-ngu-thgn75', 'tproduct'),
(797, 664, 'tu-bep-thtb24', 'tproduct'),
(798, 665, 'tu-bep-thtb83', 'tproduct'),
(799, 666, 'phong-khach-thpk68', 'tproduct'),
(800, 667, 'phong-ngu-thpn79', 'tproduct'),
(801, 668, 'phong-ngu-thpn63', 'tproduct'),
(802, 669, 'phong-ngu-thpn79', 'tproduct'),
(803, 670, 'ke-tivi-thtv71', 'tproduct'),
(804, 671, 'ke-tivi-thtv72', 'tproduct'),
(805, 672, 'ke-tivi-thtv73', 'tproduct'),
(806, 673, 'phong-khach-thpk69', 'tproduct'),
(807, 674, 'phong-khach-thpk26', 'tproduct'),
(808, 675, 'phong-khach-thpk21', 'tproduct'),
(809, 676, 'phong-khach-thpk72', 'tproduct'),
(810, 677, 'phong-khach-thpk66', 'tproduct'),
(811, 678, 'phong-khach-thpk23', 'tproduct'),
(812, 679, 'tu-ao-thta32', 'tproduct'),
(813, 680, 'phong-ngu-thpn77', 'tproduct'),
(814, 681, 'ke-tivi-thtv74', 'tproduct'),
(815, 682, 'ke-tivi-thtv75', 'tproduct'),
(816, 683, 'ke-tivi-thtv76', 'tproduct'),
(817, 684, 'ke-tivi-thtv77', 'tproduct'),
(818, 685, 'ke-tivi-thtv78', 'tproduct'),
(819, 686, 'ke-tivi-thtv79', 'tproduct'),
(820, 687, 'ke-tivi-thtv80', 'tproduct'),
(821, 688, 'ke-tivi-thtv81', 'tproduct'),
(822, 689, 'ke-tivi-thtv82', 'tproduct'),
(823, 690, 'ke-tivi-thtv83', 'tproduct'),
(824, 691, 'ke-tivi-thtv84', 'tproduct'),
(825, 692, 'ke-tivi-thtv85', 'tproduct'),
(826, 693, 'ke-tivi-thtv86', 'tproduct'),
(827, 694, 'ke-tivi-thtv87', 'tproduct'),
(828, 695, 'ke-tivi-thtv88', 'tproduct'),
(829, 696, 'ke-tivi-thtv89', 'tproduct'),
(830, 697, 'ke-tivi-thtv90', 'tproduct'),
(831, 698, 'ke-tivi-thtv91', 'tproduct'),
(832, 699, 'ke-tivi-thtv92', 'tproduct'),
(833, 700, 'ke-tivi-thtv93', 'tproduct'),
(834, 701, 'ke-tivi-thtv94', 'tproduct'),
(835, 702, 'ke-tivi-thtv95', 'tproduct'),
(836, 703, 'ke-tivi-thtv96', 'tproduct'),
(837, 704, 'ke-tivi-thtv97', 'tproduct'),
(838, 705, 'ke-tivi-thtv98', 'tproduct'),
(839, 706, 'ke-tivi-thtv99', 'tproduct'),
(840, 707, 'ghj', 'tproduct'),
(841, 708, 'ke-tivi-thtv100', 'tproduct'),
(842, 709, 'ke-tivi-thtv101', 'tproduct'),
(843, 710, 'ke-tivi-thtv102', 'tproduct'),
(844, 711, 'ke-tivi-thtv103', 'tproduct'),
(845, 712, 'ke-tivi-thtv97', 'tproduct'),
(846, 713, 'ke-tivi-thtv94', 'tproduct'),
(847, 714, 'ke-tivi-thtv88', 'tproduct'),
(848, 715, 'ke-tivi-thtv84', 'tproduct'),
(849, 716, 'ke-tivi-thtv83', 'tproduct'),
(850, 717, 'ke-tivi-thtv81', 'tproduct'),
(851, 718, 'ke-tivi-thtv72', 'tproduct'),
(852, 719, 'tu-bep-thtb23', 'tproduct'),
(853, 720, 'phong-ngu-thpn15', 'tproduct'),
(854, 721, 'ke-tivi-thtv99', 'tproduct'),
(855, 722, 'phong-ngu-thpn80', 'tproduct'),
(856, 723, 'tu-bep-thtb54', 'tproduct'),
(857, 724, 'tu-bep-thtb11', 'tproduct'),
(858, 725, 'noi-that-co-dien-thcd01', 'tproduct'),
(859, 726, 'noi-that-co-dien-thcd02', 'tproduct'),
(860, 727, 'noi-that-co-dien-thcd03', 'tproduct'),
(861, 728, 'noi-that-co-dien-thcd04', 'tproduct'),
(862, 729, 'noi-that-co-dien-thcd05', 'tproduct'),
(863, 730, 'noi-that-co-dien-thcd06', 'tproduct'),
(864, 731, 'noi-that-co-dien-thcd07', 'tproduct'),
(865, 732, 'noi-that-co-dien-thcd08', 'tproduct'),
(866, 733, 'noi-that-co-dien-thcd09', 'tproduct'),
(867, 734, 'noi-that-co-dien-thcd10', 'tproduct'),
(868, 735, 'noi-that-co-dien-thcd11', 'tproduct'),
(869, 736, 'noi-that-co-dien-thcd09', 'tproduct'),
(870, 737, 'noi-that-co-dien-thcd13', 'tproduct'),
(871, 738, 'noi-that-co-dien-thcd12', 'tproduct'),
(872, 739, 'noi-that-co-dien-thcd13', 'tproduct'),
(873, 740, 'noi-that-co-dien-thcd14', 'tproduct'),
(874, 741, 'noi-that-co-dien-thcd15', 'tproduct'),
(875, 742, 'noi-that-co-dien-thcd16', 'tproduct'),
(876, 743, 'noi-that-co-dien-thcd17', 'tproduct'),
(877, 744, 'noi-that-co-dien-thcd18', 'tproduct'),
(878, 745, 'noi-that-co-dien-thcd19', 'tproduct'),
(879, 746, 'noi-that-co-dien-thcd20', 'tproduct'),
(880, 747, 'noi-that-co-dien-thcd21', 'tproduct'),
(881, 748, 'noi-that-co-dien-thcd22', 'tproduct'),
(882, 749, 'noi-that-co-dien-thcd23', 'tproduct'),
(883, 750, 'noi-that-co-dien-thcd24', 'tproduct'),
(884, 751, 'noi-that-co-dien-thcd25', 'tproduct'),
(885, 752, 'noi-that-co-dien-thcd26', 'tproduct'),
(886, 753, 'noi-that-co-dien-thcd20', 'tproduct'),
(887, 754, 'noi-that-co-dien-thcd20', 'tproduct'),
(888, 755, 'phong-ngu-thpn81', 'tproduct'),
(889, 756, 'phong-ngu-thpn82', 'tproduct'),
(890, 757, 'phong-ngu-thpn83', 'tproduct'),
(891, 758, 'phong-ngu-thpn84', 'tproduct'),
(892, 759, 'ke-tivi-thtv104', 'tproduct'),
(893, 760, 'ke-tivi-thtv105', 'tproduct'),
(894, 761, 'giuong-ngu-thgn76', 'tproduct'),
(895, 762, 'giuong-ngu-thgn77', 'tproduct'),
(896, 763, 'giuong-ngu-thgn78', 'tproduct'),
(897, 764, 'phong-ngu-thpn85', 'tproduct'),
(898, 765, 'phong-khach-thpk69', 'tproduct'),
(899, 766, 'phong-khach-thpk70', 'tproduct'),
(900, 767, 'ke-tivi-thtv106', 'tproduct'),
(901, 768, 'giuong-ngu-thgn79', 'tproduct'),
(902, 769, 'tu-bep-thtb10', 'tproduct'),
(903, 770, 'phong-ngu-thpn86', 'tproduct'),
(904, 771, 'phong-ngu-thpn87', 'tproduct'),
(905, 772, 'tu-bep-thtb18', 'tproduct'),
(906, 773, 'giuong-ngu-thgn80', 'tproduct'),
(907, 774, 'giuong-ngu-thgn81', 'tproduct'),
(908, 775, 'phong-ngu-thpn88', 'tproduct'),
(909, 776, 'giuong-ngu-thgn82', 'tproduct'),
(910, 777, 'ke-tivi-thtv107', 'tproduct'),
(911, 778, 'phong-khach-thpk56', 'tproduct'),
(912, 779, 'tu-bep-thtb12', 'tproduct'),
(913, 780, 'phong-ngu-thpn66', 'tproduct'),
(914, 781, 'phong-ngu-thpn63', 'tproduct'),
(915, 782, 'tu-bep-thtb06', 'tproduct'),
(916, 783, 'tu-bep-thtb54', 'tproduct'),
(917, 784, 'phong-khach-thpk40', 'tproduct'),
(918, 785, 'phong-ngu-thpn89', 'tproduct'),
(919, 786, 'phong-ngu-thpn90', 'tproduct'),
(920, 787, 'phong-ngu-thpn91', 'tproduct'),
(921, 1, '123', 'tproduct'),
(922, 2, 'core-i5-4440(haswell)', 'tproduct'),
(923, 3, 'core-i5-4440(haswell)', 'tproduct'),
(924, 4, 'cpu-i5-4440(sk-1150)', 'tproduct'),
(925, 5, 'cpu-i5-4440(-sk-1150)', 'tproduct'),
(926, 6, 'cpu-g860(-sk-1155)', 'tproduct'),
(927, 7, 'cpu-i5-4430(sk-1150)', 'tproduct'),
(928, 8, 'cpu-i5-446(sk-1150)', 'tproduct'),
(929, 9, 'cpu-i5-4570(sk-1150)', 'tproduct'),
(930, 10, 'cpu-i5-4590(sk-1150)', 'tproduct'),
(931, 11, 'cpu-i7-2600(sk-1155)', 'tproduct'),
(932, 12, 'cpu-core-i7-3770(sk-1155)', 'tproduct'),
(933, 13, 'cpu-i7-3770k(sk-1155)', 'tproduct'),
(934, 14, 'cpu-core-i3-540(sk-1156)', 'tproduct'),
(935, 15, 'cpu-g540(sk-1155)', 'tproduct'),
(936, 16, 'cpu-g550(sk-1155)', 'tproduct'),
(937, 17, 'cpu-g1610(-sk-1155)', 'tproduct'),
(938, 18, 'cpu-g1630(-sk-1155)', 'tproduct'),
(939, 19, 'cpu-g620(-sk-1155)', 'tproduct'),
(940, 20, 'cpu-g630(-sk-1155)', 'tproduct'),
(941, 21, 'cpu-g640(-sk-1155)', 'tproduct'),
(942, 22, 'cpu-g645(-sk-1155)', 'tproduct'),
(943, 23, 'cpu-g840(-sk-1155)', 'tproduct'),
(944, 24, 'cpu-g850(-sk-1155)', 'tproduct'),
(945, 25, 'cpu-g860(-sk-1155)', 'tproduct'),
(946, 26, 'cpu-g2010(-sk-1155)', 'tproduct'),
(947, 27, 'cpu-g2020(-sk-1155)', 'tproduct'),
(948, 28, 'cpu-g2030(-sk-1155)', 'tproduct'),
(949, 29, 'cpu-g2120(-sk-1155)', 'tproduct'),
(950, 30, 'cpu-g2130(-sk-1155)', 'tproduct'),
(951, 31, 'cpu-core-i3-2100(sk-1155)', 'tproduct'),
(952, 32, 'cpu-core-i3-2120(sk-1155)', 'tproduct'),
(953, 33, 'cpu-core-i3-2130(sk-1155)', 'tproduct'),
(954, 34, 'cpu-core-i3-3210(sk-1155)', 'tproduct'),
(955, 35, 'cpu-core-i3-3220(sk-1155)', 'tproduct'),
(956, 36, 'cpu-core-i3-3240(sk-1155)', 'tproduct'),
(957, 37, 'cpu-core-i5-2300(sk-1155)', 'tproduct'),
(958, 38, 'cpu-core-i5-2320(sk-1155)', 'tproduct'),
(959, 39, 'cpu-core-i5-2400(sk-1155)', 'tproduct'),
(960, 40, 'cpu-core-i5-2500(sk-1155)', 'tproduct'),
(961, 41, 'cpu-core-i5-2500k(sk-1155)', 'tproduct'),
(962, 42, 'cpu-core-i5-3330(sk-1155)', 'tproduct'),
(963, 43, 'cpu-core-i5-3450(sk-1155)', 'tproduct'),
(964, 44, 'cpu-core-i5-3470(sk-1155)', 'tproduct'),
(965, 45, 'cpu-core-i5-3570s(sk-1155)', 'tproduct'),
(966, 46, 'cpu-core-i5-3570(sk-1155)', 'tproduct'),
(967, 47, 'cpu-core-i5-3570k(sk-1155)', 'tproduct'),
(968, 48, 'cpu-g1830(-sk-1150)', 'tproduct'),
(969, 49, 'cpu-g1840(-sk-1150)', 'tproduct'),
(970, 50, 'cpu-g3220(-sk-1150)', 'tproduct'),
(971, 51, 'cpu-g3240(-sk-1150)', 'tproduct'),
(972, 52, 'cpu-g3420(-sk-1150)', 'tproduct'),
(973, 53, 'cpu-core-i3-4130(sk-1150)', 'tproduct'),
(974, 54, 'cpu-core-i3-4150(sk-1150)', 'tproduct'),
(975, 55, 'cpu-core-i3-4160(sk-1150)', 'tproduct'),
(976, 56, 'cpu-core-i5-4690(sk-1150)', 'tproduct'),
(977, 57, 'cpu-core-i5-4690k(sk-1150)', 'tproduct'),
(978, 58, 'cpu-core-i7-4770t(sk-1150)', 'tproduct'),
(979, 59, 'cpu-core-i7-4770(sk-1150)', 'tproduct'),
(980, 60, 'cpu-core-i7-4770k(sk-1150)', 'tproduct'),
(981, 61, 'cpu-core-i7-4790t(sk-1150)', 'tproduct'),
(982, 62, 'cpu-core-i7-4790(sk-1150)', 'tproduct'),
(983, 63, 'cpu-core-i7-4790k(sk-1150)', 'tproduct'),
(984, 64, 'main-h61-gigabyte', 'tproduct'),
(985, 65, 'main-h61-hieu-gigabyte', 'tproduct'),
(986, 66, 'main-h61-hieu-asus', 'tproduct'),
(987, 67, 'main-h61-hieu-gigabyte', 'tproduct'),
(988, 68, 'main-h61-hieu-intel', 'tproduct'),
(989, 69, 'main-h61-hieu-msi', 'tproduct'),
(990, 70, 'main-h61-hieu-asrock', 'tproduct'),
(991, 71, 'main-b75-hieu-gigabyte', 'tproduct'),
(992, 72, 'main-z77-hieu-asus', 'tproduct'),
(993, 73, 'main-b85-hieu-asus', 'tproduct'),
(994, 74, 'main-b75-hieu-asrock', 'tproduct'),
(995, 75, 'main-z87-hieu-msi', 'tproduct'),
(996, 76, 'ddr2-1gb-bus-667-800', 'tproduct'),
(997, 77, 'ddr2-2gb-bus-667-800', 'tproduct'),
(998, 78, 'ddr3-1gb-bus-1066-1333', 'tproduct'),
(999, 79, 'ddr3-2gb-bus-1333-1600', 'tproduct'),
(1000, 80, 'ddr3-4gb-bus-1333-1600', 'tproduct'),
(1001, 81, 'ddr3-8gb-bus-1333-1600', 'tproduct'),
(1002, 82, '128gb-corsair-sata3-bh-08-2017', 'tproduct'),
(1003, 83, 'ssd-120gb-kingston-v300-bh-01-2019', 'tproduct'),
(1004, 84, 'hdd-160gb-sata', 'tproduct'),
(1005, 85, 'hdd-250gb-sata', 'tproduct'),
(1006, 86, 'hdd-500gb-sata', 'tproduct'),
(1007, 87, 'hdd-1tb-sata', 'tproduct'),
(1008, 88, 'hdd-2tb-sata', 'tproduct'),
(1009, 89, 'hd-6670-asus-bh-07-2017', 'tproduct'),
(1010, 90, 'gt630-zotac-bh-02-2019', 'tproduct'),
(1011, 91, 'vga-r9-280x-his', 'tproduct'),
(1012, 92, 'acbel-300w', 'tproduct'),
(1013, 93, 'seasonic-400w', 'tproduct'),
(1014, 94, 'vga-hd-6950-his', 'tproduct'),
(1015, 95, 'vga-gt630-gigabyte', 'tproduct'),
(1016, 96, 'vga-gt630-asus(bh-06-2017)', 'tproduct'),
(1017, 97, 'vga-gtx650ti-asus(bh-09-2016)', 'tproduct'),
(1018, 98, 'vga-hd-5570-gigabyte', 'tproduct'),
(1019, 99, 'may-bo-core-i5-2400', 'tproduct'),
(1020, 100, 'may-bo-core-i5-2400', 'tproduct'),
(1021, 101, 'may-bo-g850(-max-setting-lol...', 'tproduct'),
(1022, 102, 'may-bo-q9300(max-setting-lol,-fifa2...', 'tproduct'),
(1023, 103, 'vga-asus-gtx980', 'tproduct'),
(1024, 104, 'may-bo-g850', 'tproduct'),
(1025, 105, 'main-h81-asus', 'tproduct'),
(1026, 106, 'main-h81-gigabyte', 'tproduct'),
(1027, 107, 'may-bo-dell-780-sff', 'tproduct'),
(1028, 108, 'may-bo-hp-6200-pro', 'tproduct'),
(1029, 109, 'hdd-4tb-wd-dong-re', 'tproduct'),
(1030, 110, 'ssd-256gb-samsung-new-99%', 'tproduct'),
(1031, 111, 'hdd-4tb-seagate-dong-constellation-es.3', 'tproduct'),
(1032, 112, 'main-b75-hieu-asus(-b75m-a)', 'tproduct'),
(1033, 113, 'vga-gtx750-hieu-zotac', 'tproduct'),
(1034, 114, 'may-bo-hp-6200-pro(cpu-g850)', 'tproduct'),
(1035, 115, 'ssd-500gb-samsung-850-evo', 'tproduct'),
(1036, 116, 'may-bo-dell-optiplex-780', 'tproduct'),
(1037, 117, 'may-bo-dell-optiplex-780(-core-quad-q8400)', 'tproduct'),
(1038, 118, 'may-bo-xeon-e3-1220-v2', 'tproduct'),
(1039, 119, 'may-bo-xeon-e3-1220-v2', 'tproduct'),
(1040, 120, 'dell-optiplex-780-ch1', 'tproduct'),
(1041, 121, 'dell-optiplex-780-ch2', 'tproduct'),
(1042, 122, 'dell-optiplex-780mt-ch1', 'tproduct'),
(1043, 123, 'dell-optiplex-780mt-ch2', 'tproduct'),
(1044, 124, 'dell-optiplex-9010-dt', 'tproduct'),
(1045, 125, 'dell-optiplex-990-dt-ch2', 'tproduct'),
(1046, 126, 'dell-optiplex-990-ch1', 'tproduct'),
(1047, 127, 'dell-optiplex-9010-dt-ch2', 'tproduct'),
(1048, 128, 'dell-optiplex-9010-dt-ch1', 'tproduct'),
(1049, 129, 'dell-optiplex-3010mt', 'tproduct'),
(1050, 130, 'dell-optiplex-790-sff-ch1', 'tproduct'),
(1051, 131, 'dell-optiplex-790-sff-ch2', 'tproduct'),
(1052, 132, 'dell-optiplex-990-dt-ch3', 'tproduct'),
(1053, 133, 'dell-optiplex-9010-dt-ch3', 'tproduct'),
(1054, 134, 'dell-optiplex-790-mt-ch1', 'tproduct'),
(1055, 135, 'hp-6000-pro-ch1', 'tproduct'),
(1056, 136, 'hp-6000-pro-ch2', 'tproduct'),
(1057, 137, 'hp-6000-pro-mt-ch2', 'tproduct'),
(1058, 138, 'hp-6000-pro-mt-ch1', 'tproduct'),
(1059, 139, 'hp-pavilion-500-501x', 'tproduct'),
(1060, 140, 'hp-6200-pro-ch1', 'tproduct'),
(1061, 141, 'hp-6200-pro-ch2', 'tproduct'),
(1062, 142, 'hp-6200-pro-ch3', 'tproduct'),
(1063, 143, 'nec-ml-b-ch2', 'tproduct'),
(1064, 144, 'fujitsu-fmv-ch2', 'tproduct'),
(1065, 145, 'lenovo-m91p-ch1', 'tproduct'),
(1066, 146, 'lenovo-m91p-ch2', 'tproduct'),
(1067, 147, 'fujitsu-fmv-ch1-g860', 'tproduct'),
(1068, 148, 'fujitsu-fmv-ch3', 'tproduct'),
(1069, 149, 'may-do-hoa-ch1', 'tproduct'),
(1070, 150, 'may-do-hoa-ch2', 'tproduct'),
(1071, 151, 'lcd-dell-20-inch-led', 'tproduct'),
(1072, 152, 'lcd-lg-samsung-17-inch', 'tproduct'),
(1073, 153, 'lcd-aoc-20-inch-led', 'tproduct'),
(1074, 154, 'lcd-hp-compad-20-inch-led', 'tproduct'),
(1075, 155, 'lcd-dell-22-inch-led', 'tproduct'),
(1076, 156, 'lcd-dell-19-inch', 'tproduct'),
(1077, 157, 'lcd-dell-19-inch-led', 'tproduct'),
(1078, 158, 'dell-24-inch-e2414h', 'tproduct'),
(1079, 159, 'laptop-hp-8470p', 'tproduct'),
(1080, 160, 'laptop-hp-elitebook-8440p', 'tproduct'),
(1081, 161, 'laptop-hp-probook-4530s-core-i5', 'tproduct'),
(1082, 162, 'laptop-hp-probook-6460b-core-i5', 'tproduct'),
(1083, 163, 'laptop-hp-probook-6470b', 'tproduct'),
(1084, 164, 'laptop-dell-e6420', 'tproduct'),
(1085, 165, 'laptop-dell-latitude-3330-ca543', 'tproduct'),
(1086, 166, 'laptop-dell-latitude-e6230', 'tproduct'),
(1087, 167, 'laptop-dell-latitude-e4310', 'tproduct'),
(1088, 168, 'laptop-dell-latitude-e5430', 'tproduct'),
(1089, 9, 'bioderma', 'tbrand_products'),
(1090, 10, 'anessa', 'tbrand_products');

-- --------------------------------------------------------

--
-- Table structure for table `base_tmaterial_products`
--

CREATE TABLE `base_tmaterial_products` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cmaterial_products` varchar(250) DEFAULT NULL,
  `eng_cmaterial_products` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cimage_365` varchar(100) NOT NULL DEFAULT '',
  `cicon` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `cnote_365` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT 1,
  `nspecial` int(11) DEFAULT 0,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT 1,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT '2026-09-16',
  `ddate02` date DEFAULT NULL,
  `cproduct_fb` varchar(250) DEFAULT NULL,
  `cbanner1` varchar(250) DEFAULT NULL,
  `cbanner2` varchar(250) DEFAULT NULL,
  `cbanner3` varchar(250) DEFAULT NULL,
  `clink_banner1` varchar(250) DEFAULT NULL,
  `clink_banner2` varchar(250) DEFAULT NULL,
  `clink_banner3` varchar(250) DEFAULT NULL,
  `nid_group` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tmenu`
--

CREATE TABLE `base_tmenu` (
  `nid` int(11) NOT NULL,
  `nid_parent` int(11) NOT NULL,
  `cmenu` varchar(50) NOT NULL,
  `cicon_name` varchar(100) DEFAULT NULL,
  `cnode` char(1) DEFAULT NULL,
  `csystem` char(1) DEFAULT '1',
  `nid_function` int(11) DEFAULT NULL,
  `cindex` varchar(50) NOT NULL DEFAULT '999',
  `cbasic` char(1) NOT NULL DEFAULT '1',
  `cnote` varchar(150) DEFAULT NULL,
  `cstatus` char(1) NOT NULL DEFAULT '1',
  `cdel` char(1) NOT NULL DEFAULT '0',
  `ddate01` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime NOT NULL DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(11) NOT NULL DEFAULT 1,
  `niduser02` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tmenu`
--

INSERT INTO `base_tmenu` (`nid`, `nid_parent`, `cmenu`, `cicon_name`, `cnode`, `csystem`, `nid_function`, `cindex`, `cbasic`, `cnote`, `cstatus`, `cdel`, `ddate01`, `ddate02`, `niduser01`, `niduser02`) VALUES
(6, 2, 'mnu.DMNhanVien', 'class=\"icon-16-user_list\"', NULL, '1', 2, '0001.0001.0009.', '0', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(7, 4, 'mnu.PhanQUyenChucNang', 'class=\"icon-16-default\"', NULL, '1', 5, '0001.0005.0001.', '0', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(10, 1, 'mnu.DoiMatKhau', 'class=\"icon-16-user\"', NULL, '1', 8, '0001.0009.', '1', NULL, '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(1, 1, 'mnu.HeThong', '', '', '1', 0, '0001.', '1', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(2, 1, 'mnu.DMHeThong', 'class=\"icon-16-config\"', '0', '1', 0, '0001.0001.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(8, 1, '', '', '', '1', 0, '0001.0008.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(4, 1, 'mnu.PhanQuyen', 'class=\"icon-16-user\"', '0', '1', 2, '0001.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(9, 1, 'mnu.DMConFig', 'class=\"icon-16-config\"', '', '1', 0, '0001.0008.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(11, 11, 'mnu.TinTuc', 'class=\"icon-16-notebook\"', '', '1', 0, '0002.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(12, 11, 'mnu.DMNhomTin', 'class=\"icon-16-notebook\"', '', '1', 11, '0002.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(13, 11, 'mnu.DMTintuc', 'class=\"icon-16-notebook\"', '', '1', 10, '0002.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(14, 14, 'mnu.SanPham', 'class=\"icon-16-default\"', '', '1', 0, '0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(15, 14, 'mnu.DMNhomChatLieu', 'class=\"icon-16-default\"', '', '1', 41, '0005.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(16, 14, 'mnu.DMNhomSanPham', 'class=\"icon-16-default\"', '', '1', 40, '0005.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(17, 14, 'mnu.DMSanPham', 'class=\"icon-16-default\"', '', '1', 42, '0005.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(18, 18, 'mnu.Order', 'class=\"icon-16-menu\"', '', '1', 0, '0010.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(19, 18, 'mnu.DMKhachHang', 'class=\"icon-16-menu\"', '', '1', 43, '0010.0005.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(20, 18, 'mnu.DMTrangThaiHoaDon', 'class=\"icon-16-menu\"', '', '1', 44, '0010.0010.', '0', '', '0', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(21, 18, 'mnu.QLOrder', 'class=\"icon-16-menu\"', '', '1', 45, '0010.0015.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(22, 22, 'mnu.ChucNang', 'class=\"icon-16-config\"', '', '1', 0, '0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(23, 22, 'mnu.DMSupportOnline', 'class=\"icon-16-system\"', '', '1', 28, '0015.0001.', '0', '', '0', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(24, 24, 'mnu.TroGiup', 'class=\"icon-16-help\"', '', '1', 0, '0020.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(25, 24, 'mnu.HuongDanSuDung', 'class=\"icon-16-help\"', '', '1', 46, '0020.0001.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(26, 24, 'mnu.CauTrucWebsite', 'class=\"icon-16-help\"', '', '1', 47, '0020.0005.', '0', '', '1', '1', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(27, 11, 'mnu.DMLoaiTin', 'class=\"icon-16-notebook\"', '', '1', 100, '0002.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(29, 22, 'mnu.DMModule', 'class=\"icon-16-system\"', '', '1', 101, '0015.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(30, 22, 'mnu.DMFaq', 'class=\"icon-16-system\"', '', '1', 102, '0008.0010.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(31, 22, 'mnu.DMRecruit', 'class=\"icon-16-system\"', '', '1', 103, '0015.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(32, 22, 'mnu.DMWeblink', 'class=\"icon-16-system\"', '', '1', 104, '0015.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(33, 22, 'mnu.DMbanner_images', 'class=\"icon-16-system\"', '', '1', 105, '0015.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(34, 22, 'mnu.DMemail_manager', 'class=\"icon-16-system\"', '', '1', 106, '0015.0035.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(35, 22, 'mnu.DMcomment_manager', 'class=\"icon-16-system\"', '', '1', 107, '0015.0030.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(36, 14, 'mnu.NganhNghe', 'class=\"icon-16-default\"', '', '1', 0, '0004.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(37, 14, 'mnu.DMNhomChatLieuNganhNghe', 'class=\"icon-16-default\"', '', '1', 110, '0004.0025.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(38, 14, 'mnu.DMNhomNganhNghe', 'class=\"icon-16-default\"', '', '1', 109, '0004.0020.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(39, 14, 'mnu.DMNganhNghe', 'class=\"icon-16-default\"', '', '1', 108, '0004.0015.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(40, 14, 'mnu.FAQ', 'class=\"icon-16-default\"', '', '1', 0, '0008.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(41, 22, 'mnu.DMCatFaq', 'class=\"icon-16-system\"', '', '1', 111, '0008.0005.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1),
(42, 22, 'Image manage', 'class=\"icon-16-system\"', '', '1', 112, '0015.0006.', '0', '', '1', '0', '1977-01-01 00:00:00', '1977-01-01 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_tmenu_frontend`
--

CREATE TABLE `base_tmenu_frontend` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cmenu` varchar(250) DEFAULT NULL,
  `nid_function_frontend` int(11) DEFAULT NULL,
  `id_item` varchar(250) DEFAULT NULL,
  `cwidth` varchar(200) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `nindex` int(11) DEFAULT NULL,
  `nid_parent` int(11) DEFAULT NULL,
  `ccat_index` varchar(50) DEFAULT NULL,
  `nbasic` int(11) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tmenu_frontend`
--

INSERT INTO `base_tmenu_frontend` (`nid`, `ccode`, `cmenu`, `nid_function_frontend`, `id_item`, `cwidth`, `cnote`, `nstatus`, `nindex`, `nid_parent`, `ccat_index`, `nbasic`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, '001', 'Trang chủ', 8, '', '110', 'khong co con', 1, 1, 0, '0001.', 0, 746, 2, '2011-06-01', '0000-00-00'),
(4, NULL, 'Liên hệ', 4, '', '110', '', 1, 20, 0, '0005.', 0, 746, NULL, '2011-06-02', NULL),
(5, NULL, 'Hỏi đáp', 9, '', '110', '2', 1, 9, 4, '0005.0005.', NULL, 1, NULL, '2010-12-24', NULL),
(6, NULL, 'Tin tức-Sự kiện', 7, '6', '150', '', 1, 1, 5, '0015.0005.0005.', NULL, 746, NULL, '2011-06-02', NULL),
(15, NULL, 'Giới thiệu', 7, '7', '110', '', 1, 2, 6, '0015.0005.0005.', NULL, 746, NULL, '2011-06-01', NULL),
(16, NULL, 'Tuyển Dụng', 8, '38', '110', '', 1, 7, 0, '0025.', NULL, 1, NULL, '2010-12-24', NULL),
(17, NULL, 'Thư viện ảnh', 14, '', '134', '', 1, 8, 0, '0030.', NULL, 1, NULL, '2010-12-23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_tmodule`
--

CREATE TABLE `base_tmodule` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(500) DEFAULT NULL,
  `cmodule` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `eng_cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `clink` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tmodule`
--

INSERT INTO `base_tmodule` (`nid`, `ccode`, `cmodule`, `ctag`, `cimage`, `cnote`, `eng_cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `clink`) VALUES
(1, 'partner_logo', 'VIETCERAMICS', 'Đối tác gạch', '', '', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL),
(2, 'partner_logo', 'ĐỒNG TÂM', 'Đối tác gạch', '', '', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL),
(3, 'partner_logo', 'PRIME GROUP', 'Đối tác gạch', '', '', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL),
(4, 'partner_logo', 'VIGLACERA', 'Đối tác gạch', '', '', NULL, 1, '4', 1, NULL, '2026-11-16', NULL, NULL),
(5, 'partner_logo', 'SIKA PARTNER', 'Đối tác hóa chất', '', '', NULL, 1, '5', 1, NULL, '2026-11-16', NULL, NULL),
(6, 'partner_logo', 'XÂY DỰNG VIỆT', 'Nhà thầu xây dựng', '', '', NULL, 1, '6', 1, NULL, '2026-11-16', NULL, NULL),
(7, 'testimonial', 'Anh Minh Hoàng', 'Chủ căn hộ • Quận 7, TP.HCM', 'MH', '“Nhà tắm nhà mình trước đây ron xi măng đen kịt và hay bong. Sau khi đổi sang keo Epoxy BASC và thuê đội thợ làm lại, đường ron trắng bóng như mới suốt 2 năm nay.”', NULL, 0, '1', 1, NULL, '2026-11-16', NULL, NULL),
(8, 'testimonial', 'KTS. Trần Tuấn', 'Giám đốc thi công • TP. Thủ Đức', 'TT', '“Là nhà thầu hoàn thiện nội thất, mình nhập keo chà ron BASC cho hơn 20 công trình biệt thự. Keo dẻo, dễ miết, bảng màu cực chuẩn và giao hàng rất đúng hẹn.”', NULL, 0, '2', 1, NULL, '2026-11-16', NULL, NULL),
(9, 'testimonial', 'Chị Lan Ngọc', 'Khách hàng mua vật tư • Bình Thạnh', 'LN', '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”', NULL, 0, '3', 1, NULL, '2026-11-16', NULL, NULL),
(10, 'brand_benefit', 'Công Nghệ Epoxy 2 Thành Phần Thế Hệ Mới', 'fa-fill-drip', '', 'Không chứa dung môi độc hại, không co ngót, chịu nhiệt và hóa chất tẩy rửa gia dụng cực tốt.', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL),
(11, 'brand_benefit', 'Đội Ngũ Thợ Chuyên Nghiệp – Sạch Gọn Trong Ngày', 'fa-users-gear', '', 'Quy trình mài ron cũ bằng máy hút bụi chuyên dụng, không bụi bẩn, bàn giao mặt sàn sáng bóng ngay trong ngày.', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL),
(12, 'brand_benefit', 'Giá Tận Xưởng – Bảo Hành Chính Hãng 10 Năm', 'fa-certificate', '', 'Chiết khấu hấp dẫn cho nhà thầu và đại lý. Cam kết đổi trả miễn phí nếu sản phẩm không đạt chuẩn.', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL),
(13, 'ugc_gallery', 'Chà ron gạch khổ lớn 120x120', 'Biệt thự Q.2', 'ugc1.jpg', 'Hình ảnh cận cảnh mạch ron gạch porcelain khổ lớn', NULL, 0, '1', 1, NULL, '2026-11-16', NULL, NULL),
(14, 'ugc_gallery', 'Thay ron cũ mốc đen sau 3 giờ', 'Nhà tắm', 'ugc2.jpg', 'Xử lý sàn nhà tắm ẩm ướt sạch bóng', NULL, 0, '2', 1, NULL, '2026-11-16', NULL, NULL),
(15, 'ugc_gallery', 'Ron Epoxy chống bám dầu mỡ', 'Phòng bếp', 'ugc3.jpg', 'Khu vực bếp nấu đảo bếp sạch tinh tươm', NULL, 0, '3', 1, NULL, '2026-11-16', NULL, NULL),
(16, 'ugc_gallery', 'Keo ron chuyên dụng chịu clo', 'Hồ bơi', 'ugc4.jpg', 'Hồ bơi biệt thự chống rêu nấm mốc', NULL, 0, '4', 1, NULL, '2026-11-16', NULL, NULL),
(17, 'ugc_gallery', 'Cách tự bắn ron chuẩn thợ tại nhà', 'Hướng dẫn', 'ugc5.jpg', 'Video hướng dẫn thao tác tự thi công', NULL, 0, '5', 1, NULL, '2026-11-16', NULL, NULL),
(18, 'about_metric', '10+ Năm', 'Kinh nghiệm ngành vật tư & thi công hoàn thiện', '', '', NULL, 1, '1', 1, NULL, '2026-11-16', NULL, NULL),
(19, 'about_metric', '3.500+', 'Công trình nhà ở, biệt thự & khách sạn đã bàn giao', '', '', NULL, 1, '2', 1, NULL, '2026-11-16', NULL, NULL),
(20, 'about_metric', '24+ Màu', 'Bảng màu keo ron đa dạng, phối hợp mọi vân gạch', '', '', NULL, 1, '3', 1, NULL, '2026-11-16', NULL, NULL),
(21, 'about_metric', '99.2%', 'Khách hàng hài lòng và giới thiệu người thân', '', '', NULL, 1, '4', 1, NULL, '2026-11-16', NULL, NULL),
(22, 'faq', 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?', '', '', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.', NULL, 0, '1', 1, NULL, '2026-11-16', NULL, NULL),
(23, 'faq', 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?', '', '', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.', NULL, 0, '2', 1, NULL, '2026-11-16', NULL, NULL),
(24, 'faq', '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?', '', '', 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.', NULL, 0, '3', 1, NULL, '2026-11-16', NULL, NULL),
(25, 'faq', 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?', '', '', 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.', NULL, 0, '4', 1, NULL, '2026-11-16', NULL, NULL),
(26, 'faq', 'Chính sách bảo hành đường ron tại BASC như thế nào?', '', '', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.', NULL, 0, '5', 1, NULL, '2026-11-16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_tnews`
--

CREATE TABLE `base_tnews` (
  `nid` int(11) NOT NULL,
  `nid_section_news` int(11) DEFAULT NULL,
  `nid_cat_news` int(11) NOT NULL,
  `ccode` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctitle` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cview` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cauthor` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctag` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhit` int(11) DEFAULT NULL,
  `nimg` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alwcmt` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cshort_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccontent` text DEFAULT NULL,
  `cimage_height` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cimage_thumb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cimage_fb` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cimage_iphone` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nactive` int(11) DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `chome` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnote` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cindex` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ctime` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `cmphq` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `cmp365` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cproduct_str_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tnews`
--

INSERT INTO `base_tnews` (`nid`, `nid_section_news`, `nid_cat_news`, `ccode`, `ctitle`, `cview`, `cauthor`, `ctag`, `nhit`, `nimg`, `alwcmt`, `cshort_content`, `ccontent`, `cimage_height`, `cimage_thumb`, `cimage_fb`, `cimage_iphone`, `nactive`, `nstatus`, `chome`, `cnote`, `cindex`, `niduser01`, `niduser02`, `ctime`, `ddate01`, `ddate02`, `cmphq`, `cmp365`, `cdate`, `cproduct_str_id`) VALUES
(1, NULL, 2, 'thi-cong-ron-nha-o-dan-dung-biet-thu', 'Nhà Ở Dân Dụng & Biệt Thự', 'fa-h', NULL, 'Nhà phố,Chung cư,Biệt thự', NULL, NULL, NULL, 'Thi công chà ron toàn bộ sàn và tường cho nhà phố, nhà cấp 4, căn hộ chung cư, biệt thự cao cấp với đường ron đều, phẳng mịn.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(2, NULL, 2, 'thi-cong-ron-phong-tam-bep-am-uot', 'Phòng Tắm, Bếp & Khu Ẩm Ướt', 'fa-b', NULL, 'Nhà vệ sinh,Phòng bếp,Ban công', NULL, NULL, NULL, 'Chống thấm tuyệt đối cho nhà vệ sinh, phòng tắm, khu bếp nấu, ban công, sân thượng và hồ bơi – ngăn ố vàng & nấm mốc.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(3, NULL, 2, 'cao-ron-cu-phuc-hoi-ron-moi', 'Cạo Ron Cũ & Phục Hồi Ron Mới', 'fa-b', NULL, 'Nhà đang ở,Không bụi,Xử lý ố đen', NULL, NULL, NULL, 'Dùng máy cắt ron kết hợp hút bụi làm sạch lớp xi măng cũ bị đen, bong tróc và bắn lại keo Epoxy mới sáng bóng trong ngày.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(4, NULL, 2, 'cha-ron-cong-trinh-moi-op-lat', 'Chà Ron Công Trình Mới Ốp Lát', 'fa-b', NULL, 'Porcelain,Granite,Gạch khổ lớn', NULL, NULL, NULL, 'Thi công chuẩn kỹ thuật cho mọi dòng gạch Ceramic, Porcelain, Granite, gạch khổ lớn, gạch giả gỗ và gạch Mosaic.', NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(101, 6, 2, 'thi-cong-keo-cha-ron-tron-goi', 'Thi Công Keo Chà Ron Trọn Gói', 'fa-h', 'Đội thợ BASC', 'Nhà mới xây, Biệt thự, Căn hộ', NULL, NULL, NULL, 'Áp dụng cho nhà mới xây hoặc biệt thự, căn hộ vừa hoàn thiện phần gạch ốp lát. Đường ron đều đẹp, bóng mịn chuẩn thợ.', 'Dịch vụ thi công chà ron gạch trọn gói chuyên nghiệp sử dụng keo Epoxy BASC hai thành phần...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(102, 6, 2, 'cai-tao-thay-the-ron-cu-o-moc', 'Cải Tạo & Thay Thế Ron Cũ Ố Mốc', 'fa-r', 'Đội thợ BASC', 'Nhà cải tạo, Nạo vét ron cũ, Sạch bụi', NULL, NULL, NULL, 'Dùng máy nạo vét ron chuyên dụng hút bụi sạch sẽ, không ồn không bụi, xử lý dứt điểm mạch ron xi măng ố vàng, đen bẩn.', 'Quy trình cạo sạch ron xi măng cũ bằng máy cắt rãnh hút bụi, sau đó châm keo men sứ chống bẩn vĩnh viễn...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(103, 6, 2, 'cha-ron-chong-tham-nha-tam-toilet', 'Chà Ron Chống Thấm Nhà Tắm & Toilet', 'fa-d', 'Đội thợ BASC', 'Nhà tắm, Toilet, Chống thấm 100%', NULL, NULL, NULL, 'Khu vực ẩm ướt thường xuyên tiếp xúc xà phòng, hóa chất tẩy rửa. Kháng khuẩn 100%, ngăn mùi hôi và ẩm mốc chân tường.', 'Keo chà ron Epoxy chống thấm đặc dụng kháng hóa chất cho sàn và vách đứng toilet, nhà vệ sinh...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(104, 6, 2, 'cha-ron-ho-boi-san-thuong-ngoai-troi', 'Chà Ron Hồ Bơi & Sân Thượng Ngoài Trời', 'fa-s', 'Đội thợ BASC', 'Hồ bơi, Sân thượng, Chống tia UV', NULL, NULL, NULL, 'Chịu được clo hồ bơi, kháng tia UV nắng mưa khắc nghiệt. Độ giãn nở đàn hồi cao, không nứt vỡ mạch ron ngoài trời.', 'Chuyên dụng cho bể bơi, ban công, sân thượng chịu nắng mưa khắc nghiệt không co ngót rạn nứt...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(105, 6, 3, 'cha-ron-gach-kho-lon-120x120', 'Chà ron gạch khổ lớn 120x120', 'fa-p', 'Biệt thự Q.2', 'Biệt thự Q.2', NULL, NULL, NULL, 'Quy trình chà ron mạch 2mm cho gạch bóng kiếng Tây Ban Nha khổ lớn tại biệt thự Thảo Điền.', 'Cận cảnh thi công đường ron siêu mảnh 2mm cho biệt thự cao cấp...', NULL, 'ugc1.jpg', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(106, 6, 3, 'thay-ron-cu-moc-den-sau-3-gio', 'Thay ron cũ mốc đen sau 3 giờ', 'fa-p', 'Nhà tắm', 'Nhà tắm', NULL, NULL, NULL, 'Nạo sạch mạch xi măng đen và bắn keo men sứ trắng sáng tinh tế, khô se sau 3 giờ.', 'Hình ảnh thực tế cải tạo ron sàn nhà tắm sau 3 giờ thi công...', NULL, 'ugc2.jpg', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(107, 6, 3, 'ron-epoxy-chong-bam-dau-mo', 'Ron Epoxy chống bám dầu mỡ', 'fa-p', 'Phòng bếp', 'Phòng bếp', NULL, NULL, NULL, 'Khu vực bàn đảo và bếp nấu lau sạch dầu mỡ chỉ bằng khăn ẩm, không ố vàng.', 'Khu vực ốp tường bếp chiên xào dầu mỡ lau chùi dễ dàng...', NULL, 'ugc3.jpg', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(108, 6, 3, 'keo-ron-chuyen-dung-chiu-clo', 'Keo ron chuyên dụng chịu clo', 'fa-p', 'Hồ bơi', 'Hồ bơi', NULL, NULL, NULL, 'Mạch ron bền bỉ dưới nước hồ bơi gia đình, không mọc rêu phong.', 'Hồ bơi biệt thự sử dụng keo Epoxy kháng hóa chất clo ngâm nước...', NULL, 'ugc4.jpg', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(109, 6, 3, 'cach-tu-ban-ron-chuan-tho-tai-nha', 'Cách tự bắn ron chuẩn thợ tại nhà', 'fa-p', 'Hướng dẫn', 'Hướng dẫn', NULL, NULL, NULL, 'Video hướng dẫn từng bước lắp súng, gắn vòi xoắn và miết bi cầu đẹp phẳng mịn.', 'Video hướng dẫn chi tiết cách tự thi công mạch ron chuẩn thợ...', NULL, 'ugc5.jpg', NULL, NULL, NULL, 1, '1', NULL, '5', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(110, 6, 4, 'anh-hoang-nam', 'Anh Hoàng Nam', '', 'Biệt thự Lakeview, TP. Thủ Đức', 'Gia chủ biệt thự', NULL, NULL, NULL, '“Đội ngũ BASC làm việc rất cẩn thận, mài mạch ron cũ bằng máy hút bụi nên nhà không bị bụi bặm. Ron làm xong phẳng mịn, nước bắn vào trượt đi ngay.”', '', NULL, 'HN', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(111, 6, 4, 'chi-thu-huong', 'Chị Thu Hương', '', 'Căn hộ Vinhomes Grand Park, Q.9', 'Khách hàng căn hộ', NULL, NULL, NULL, '“Sàn nhà tắm trước đây cứ bị đen ron dù lau chùi cỡ nào, từ ngày thợ BASC làm lại bằng keo Epoxy thì sạch bóng hẳn, không còn mùi ẩm mốc nữa.”', '', NULL, 'TH', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(112, 6, 4, 'kts-minh-tri', 'KTS. Minh Trí', '', 'Công ty Thiết kế Kiến trúc TM', 'Đối tác nhà thầu', NULL, NULL, NULL, '“Màu sắc keo BASC rất tiệp với gạch men cao cấp, đặc biệt dòng ánh kim tuyến lên đèn buổi tối rất sang. Mình tin tưởng chỉ định cho các dự án villa.”', '', NULL, 'MT', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(113, 6, 4, 'chi-lan-ngoc', 'Chị Lan Ngọc', '', 'Khách hàng mua vật tư • Bình Thạnh', 'Tự thi công tại nhà', NULL, NULL, NULL, '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”', '', NULL, 'LN', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(114, 6, 5, 'keo-cha-ron-epoxy-basc-kho-hoan-toan-trong-bao-lau', 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?', '', 'Kỹ thuật viên BASC', 'Thời gian khô', NULL, NULL, NULL, 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '1', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(115, 6, 5, 'nha-da-lat-gach-cu-bi-den-ron-co-thi-cong-lai-duoc-khong', 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?', '', 'Kỹ thuật viên BASC', 'Cải tạo ron cũ', NULL, NULL, NULL, 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '2', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(116, 6, 5, '1-tuyp-keo-cha-ron-400ml-dung-duoc-cho-bao-nhieu-m2', '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?', '', 'Kỹ thuật viên BASC', 'Định mức thi công', NULL, NULL, NULL, 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.', 'Tùy vào kích thước gạch và độ rộng khe ron...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '3', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(117, 6, 5, 'basc-co-giao-hang-toan-quoc-va-ho-tro-tho-thi-cong-khong', 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?', '', 'Kỹ thuật viên BASC', 'Giao hàng & Thi công', NULL, NULL, NULL, 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.', 'BASC giao hàng hỏa tốc toàn quốc và có đội ngũ thợ trực tiếp...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '4', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL),
(118, 6, 5, 'chinh-sach-bao-hanh-duong-ron-tai-basc-nhu-the-nao', 'Chính sách bảo hành đường ron tại BASC như thế nào?', '', 'Kỹ thuật viên BASC', 'Bảo hành 10 năm', NULL, NULL, NULL, 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử 10 năm...', NULL, '', NULL, NULL, NULL, 1, '1', NULL, '5', 1, NULL, '0', '2026-11-16', NULL, '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_torder`
--

CREATE TABLE `base_torder` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `ccode_vtp` varchar(50) DEFAULT NULL,
  `nid_customer` int(11) DEFAULT NULL,
  `nid_order_status` int(11) DEFAULT NULL,
  `nid_ship_type` int(11) DEFAULT NULL,
  `cfullname` varchar(250) DEFAULT NULL,
  `caddress` varchar(250) DEFAULT NULL,
  `caddress_full` varchar(250) DEFAULT NULL,
  `cphone` varchar(15) DEFAULT NULL,
  `cemail` varchar(100) DEFAULT NULL,
  `ddate_delivery` date DEFAULT NULL,
  `cnote` varchar(500) DEFAULT NULL,
  `cadmin_note` varchar(500) DEFAULT NULL,
  `nstatus` int(11) DEFAULT 0,
  `cflash` varchar(1) DEFAULT NULL,
  `ntotal` varchar(20) DEFAULT NULL,
  `nsale` varchar(20) DEFAULT NULL,
  `cship` varchar(100) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `ctime` varchar(150) DEFAULT NULL,
  `cgiam_gia` varchar(20) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` varchar(50) DEFAULT NULL,
  `ctime01` varchar(50) DEFAULT NULL,
  `ddate02` date DEFAULT NULL,
  `nid_code_sale` int(11) DEFAULT NULL,
  `ctime_search` varchar(100) DEFAULT NULL,
  `nid_province` int(11) DEFAULT NULL,
  `nid_district` int(11) DEFAULT NULL,
  `nid_ward` int(11) DEFAULT NULL,
  `cshop` varchar(20) DEFAULT NULL,
  `ccode_sale` varchar(10) DEFAULT NULL,
  `nid_prize` int(11) DEFAULT NULL,
  `cname_prize` varchar(250) DEFAULT NULL,
  `utm_source` varchar(50) DEFAULT NULL,
  `cip` varchar(50) NOT NULL,
  `nid_member` int(11) DEFAULT NULL,
  `ctype` char(1) DEFAULT '0',
  `ctime_giao_hang` varchar(50) DEFAULT NULL,
  `cmethod` char(1) NOT NULL DEFAULT '1',
  `vnp_TmnCode` varchar(20) DEFAULT NULL,
  `vnp_Amount` varchar(20) DEFAULT NULL,
  `vnp_BankCode` varchar(30) DEFAULT NULL,
  `vnp_BankTranNo` varchar(300) DEFAULT NULL,
  `vnp_CardType` varchar(30) DEFAULT NULL,
  `vnp_PayDate` varchar(20) DEFAULT NULL,
  `vnp_OrderInfo` varchar(300) DEFAULT NULL,
  `vnp_TransactionNo` varchar(20) DEFAULT NULL,
  `vnp_ResponseCode` varchar(5) DEFAULT NULL,
  `vnp_TransactionStatus` varchar(5) DEFAULT NULL,
  `vnp_TxnRef` varchar(150) DEFAULT NULL,
  `vnp_SecureHashType` varchar(20) DEFAULT NULL,
  `vnp_SecureHash` varchar(300) DEFAULT NULL,
  `csite` varchar(50) DEFAULT NULL,
  `cin_hoa_don` char(1) DEFAULT NULL,
  `cvoucher` varchar(50) DEFAULT NULL,
  `caddress_type` char(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_torder`
--

INSERT INTO `base_torder` (`nid`, `ccode`, `ccode_vtp`, `nid_customer`, `nid_order_status`, `nid_ship_type`, `cfullname`, `caddress`, `caddress_full`, `cphone`, `cemail`, `ddate_delivery`, `cnote`, `cadmin_note`, `nstatus`, `cflash`, `ntotal`, `nsale`, `cship`, `cindex`, `ctime`, `cgiam_gia`, `niduser01`, `niduser02`, `ddate01`, `ctime01`, `ddate02`, `nid_code_sale`, `ctime_search`, `nid_province`, `nid_district`, `nid_ward`, `cshop`, `ccode_sale`, `nid_prize`, `cname_prize`, `utm_source`, `cip`, `nid_member`, `ctype`, `ctime_giao_hang`, `cmethod`, `vnp_TmnCode`, `vnp_Amount`, `vnp_BankCode`, `vnp_BankTranNo`, `vnp_CardType`, `vnp_PayDate`, `vnp_OrderInfo`, `vnp_TransactionNo`, `vnp_ResponseCode`, `vnp_TransactionStatus`, `vnp_TxnRef`, `vnp_SecureHashType`, `vnp_SecureHash`, `csite`, `cin_hoa_don`, `cvoucher`, `caddress_type`) VALUES
(1, 'DH2611202838', NULL, NULL, 3, NULL, 'Tuấn', '291, Lê Văn Quới, P.Bình Trị Đông', NULL, '0945769112', NULL, NULL, 'test', '', 1, NULL, '585000', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2026-11-20', '13:55:13', '2026-11-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, '0', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(2, 'DH2611209184', NULL, NULL, 1, NULL, 'Tuấn', 'Số 40 Đường Hồng Bàng, phường Gia Định, Thành Phố Hồ Chí Minh', NULL, '1234567891', NULL, NULL, 'test', NULL, 1, NULL, '1475000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-20', '14:29:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(3, 'DH2611205091', NULL, NULL, 1, NULL, 'Tuấn', 'Số 40 Đường Hồng Bàng, phường Gia Định, Thành Phố Hồ Chí Minh', NULL, '0945769112', NULL, NULL, 'test', NULL, 1, NULL, '1350000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-20', '14:53:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42.115.91.142', NULL, '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `base_torder_detail`
--

CREATE TABLE `base_torder_detail` (
  `nid_product` int(11) NOT NULL,
  `nid_order` int(11) NOT NULL,
  `nquantity` int(11) DEFAULT NULL,
  `cprice` varchar(20) DEFAULT NULL,
  `cprice_sale` varchar(20) DEFAULT NULL,
  `cflash_sale` varchar(1) DEFAULT NULL,
  `niscolor` int(11) NOT NULL DEFAULT 0,
  `cmua_kem` char(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_torder_detail`
--

INSERT INTO `base_torder_detail` (`nid_product`, `nid_order`, `nquantity`, `cprice`, `cprice_sale`, `cflash_sale`, `niscolor`, `cmua_kem`) VALUES
(2, 1, 2, '210000', '210000', NULL, 0, '0'),
(4, 1, 1, '165000', '165000', NULL, 0, '0'),
(4, 2, 1, '165000', '165000', NULL, 0, '0'),
(3, 2, 1, '225000', '225000', NULL, 0, '0'),
(1, 2, 1, '185000', '185000', NULL, 0, '0'),
(7, 2, 2, '450000', '450000', NULL, 0, '0'),
(7, 3, 3, '450000', '450000', NULL, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `base_torder_status`
--

CREATE TABLE `base_torder_status` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `corder_status` varchar(250) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_torder_status`
--

INSERT INTO `base_torder_status` (`nid`, `ccode`, `corder_status`, `cnote`, `nstatus`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, '001', 'Mới nhận', 'Mới nhận', 1, '1', 2, NULL, '2010-07-23', NULL),
(2, '002', 'Đang giao hàng', NULL, 1, '2', 2, NULL, '2010-07-23', NULL),
(3, '003', 'Hoàn tất', NULL, 1, '3', 2, NULL, '2010-07-23', NULL),
(4, '004', 'Đã hủy', 'Đã hủy đơn hàng', 1, '4', 2, NULL, '2010-07-23', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `base_tpermission`
--

CREATE TABLE `base_tpermission` (
  `nid` int(11) NOT NULL,
  `nid_user_type` int(11) DEFAULT NULL,
  `nid_access` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `base_tpermission`
--

INSERT INTO `base_tpermission` (`nid`, `nid_user_type`, `nid_access`) VALUES
(503, 6, 44),
(615, 4, 32),
(547, 3, 43),
(546, 3, 42),
(545, 3, 41),
(544, 3, 45),
(543, 3, 40),
(542, 3, 39),
(541, 3, 38),
(540, 3, 46),
(539, 3, 37),
(538, 3, 36),
(537, 3, 35),
(536, 3, 33),
(535, 3, 32),
(534, 3, 31),
(533, 3, 24),
(532, 3, 23),
(531, 3, 22),
(530, 3, 30),
(529, 3, 21),
(528, 3, 20),
(527, 3, 19),
(526, 3, 29),
(525, 3, 18),
(524, 3, 17),
(166, 1, 16),
(165, 1, 7),
(614, 4, 18),
(613, 4, 17),
(612, 4, 16),
(611, 4, 15),
(610, 4, 14),
(609, 4, 13),
(52, 2, 19),
(53, 2, 20),
(54, 2, 21),
(55, 2, 22),
(56, 2, 23),
(57, 2, 24),
(523, 3, 16),
(522, 3, 28),
(521, 3, 15),
(520, 3, 14),
(519, 3, 13),
(518, 3, 27),
(517, 3, 12),
(516, 3, 11),
(515, 3, 10),
(514, 3, 26),
(513, 3, 9),
(512, 3, 8),
(511, 3, 7),
(510, 3, 25),
(509, 3, 6),
(508, 3, 5),
(507, 3, 4),
(506, 3, 3),
(505, 3, 2),
(504, 3, 1),
(608, 4, 9),
(607, 4, 8),
(548, 3, 44),
(602, 7, 40),
(601, 7, 39),
(600, 7, 38),
(599, 7, 36),
(598, 7, 35),
(597, 7, 31),
(596, 7, 24),
(595, 7, 23),
(594, 7, 22),
(593, 7, 20),
(592, 7, 19),
(560, 8, 19),
(561, 8, 20),
(562, 8, 22),
(563, 8, 23),
(564, 8, 35),
(565, 8, 36),
(566, 9, 19),
(567, 9, 20),
(568, 9, 22),
(569, 9, 23),
(570, 9, 35),
(606, 4, 7),
(603, 7, 45),
(604, 7, 41),
(605, 7, 42);

-- --------------------------------------------------------

--
-- Table structure for table `base_tproducts`
--

CREATE TABLE `base_tproducts` (
  `nid` int(11) NOT NULL,
  `nid_material_products` int(11) DEFAULT NULL,
  `nid_cat_products` int(11) DEFAULT NULL,
  `nid_brand_products` int(11) DEFAULT NULL,
  `ctype` int(11) DEFAULT NULL,
  `ccode` varchar(150) DEFAULT NULL,
  `cproducts` varchar(250) DEFAULT NULL,
  `cloai_tin` char(1) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `nview` int(11) DEFAULT 0,
  `fprice` float(12,0) DEFAULT NULL,
  `fprice_sale` float(12,0) DEFAULT NULL,
  `cdescription` text DEFAULT NULL,
  `fb_cdescription` varchar(500) DEFAULT NULL,
  `cgioi_thieu` text DEFAULT NULL,
  `cdia_diem` varchar(200) DEFAULT NULL,
  `nid_loai_tin` int(11) DEFAULT 0,
  `nid_loai_bds` int(11) DEFAULT 0,
  `nid_province` int(11) DEFAULT 0,
  `nid_district` int(11) DEFAULT 0,
  `nid_huong` int(11) DEFAULT NULL,
  `cdien_tich` varchar(10) DEFAULT NULL,
  `eng_cdetail` text DEFAULT NULL,
  `cdetail` text DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cproduct_fb` varchar(150) DEFAULT NULL,
  `cimage_resize` varchar(100) DEFAULT NULL,
  `nspecial_products` int(11) DEFAULT 0,
  `cnote` text DEFAULT NULL,
  `eng_cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT 1,
  `ncheck` int(11) DEFAULT 1,
  `nhome` int(11) DEFAULT 0,
  `nnew` int(11) DEFAULT 1,
  `cindex` varchar(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT 1,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT '2026-09-16',
  `ddate02` date DEFAULT NULL,
  `ctime_update` varchar(20) DEFAULT NULL,
  `cphong_an` char(1) DEFAULT '0',
  `cnha_bep` char(1) DEFAULT '0',
  `csan_thuong` char(1) DEFAULT '0',
  `ccho_de_xe` char(1) DEFAULT '0',
  `cchinh_chu` char(1) DEFAULT '0',
  `cchieu_ngang` varchar(10) DEFAULT '0',
  `cchieu_dai` varchar(10) DEFAULT NULL,
  `cso_lau` varchar(10) DEFAULT NULL,
  `cso_phong_ngu` varchar(10) DEFAULT NULL,
  `cphap_ly` varchar(100) DEFAULT NULL,
  `cduong_truoc_nha` varchar(10) DEFAULT NULL,
  `nspecial` int(11) DEFAULT 0,
  `ccode_product` varchar(50) DEFAULT NULL,
  `ckeyword` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tproducts`
--

INSERT INTO `base_tproducts` (`nid`, `nid_material_products`, `nid_cat_products`, `nid_brand_products`, `ctype`, `ccode`, `cproducts`, `cloai_tin`, `ctag`, `nview`, `fprice`, `fprice_sale`, `cdescription`, `fb_cdescription`, `cgioi_thieu`, `cdia_diem`, `nid_loai_tin`, `nid_loai_bds`, `nid_province`, `nid_district`, `nid_huong`, `cdien_tich`, `eng_cdetail`, `cdetail`, `cimage`, `cproduct_fb`, `cimage_resize`, `nspecial_products`, `cnote`, `eng_cnote`, `nstatus`, `ncheck`, `nhome`, `nnew`, `cindex`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `ctime_update`, `cphong_an`, `cnha_bep`, `csan_thuong`, `ccho_de_xe`, `cchinh_chu`, `cchieu_ngang`, `cchieu_dai`, `cso_lau`, `cso_phong_ngu`, `cphap_ly`, `cduong_truoc_nha`, `nspecial`, `ccode_product`, `ckeyword`) VALUES
(1, 1, 1, NULL, NULL, 'keo-cha-ron-epoxy-2-thanh-phan-basc-pro', 'Keo Chà Ron Epoxy 2 Thành Phần BASC Pro (400ml)', '4', 'Bán chạy #1', 0, 230000, 185000, 'Chai đôi A+B tỷ lệ chuẩn, chống thấm 100%, bề mặt bóng mịn như men sứ, không đen ron.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-fill-drip', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '1', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy'),
(2, 1, 1, NULL, NULL, 'keo-ron-epoxy-chong-tham-nha-tam-ho-boi', 'Keo Ron Epoxy Chống Thấm Nhà Tắm & Hồ Bơi', '4', 'Chống thấm', 0, 260000, 210000, 'Chuyên dụng khu vực ẩm ướt, ban công, sân thượng, kháng hóa chất tẩy rửa & rêu mốc.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-droplet-slash', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '2', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy'),
(3, 1, 1, NULL, NULL, 'keo-ron-epoxy-kim-tuyen-anh-vang-bac', 'Keo Ron Epoxy Kim Tuyến Ánh Vàng / Bạc', '4', 'Ánh kim sang trọng', 0, 275000, 225000, 'Hiệu ứng ánh nhũ sang trọng cho phòng khách, sảnh biệt thự, gạch granite & porcelain.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-gem', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '3', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'epoxy'),
(4, 2, 2, NULL, NULL, 'sung-ban-keo-2-thanh-phan-hop-kim-tro-luc', 'Súng Bắn Keo 2 Thành Phần Hợp Kim Trợ Lực', '4', 'Chuyên dụng', 0, 210000, 165000, 'Thiết kế 2 piston đẩy song song ép đều 2 ống keo A & B, cò bóp nhẹ, độ bền cao.', '', '', '', 0, 0, 0, 0, NULL, '', NULL, ' ', 'fa-gun', NULL, NULL, 0, '', NULL, 1, 1, 1, 1, '4', 1, 1, '2026-11-16', '2026-11-20', '1795158409', '', '', '', '', '', '', '', '', '', '', '', 0, '', ''),
(5, 2, 2, NULL, NULL, 'bo-bi-cau-miet-ron-dao-sui-keo-thua', 'Bộ Bi Cầu Miết Ron & Dao Sủi Keo Thừa', '4', 'Combo chuẩn thợ', 0, 130000, 95000, '\r\n<p>Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.</p>\r\n<script data-ts=\"1795167503283\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '\r\n<p>Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.</p>\r\n<script data-ts=\"1795167503279\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', 'fa-toolbox', NULL, NULL, 0, '', NULL, 1, 1, 1, 1, '5', 1, 1, '2026-11-16', '2026-11-20', '1795167503', '', '', '', '', '', '', '', '', '', '', '', 0, '', ''),
(6, 2, 2, NULL, NULL, 'bo-voi-tron-xoan-vit-cao-mach-ron-cu', 'Bộ Vòi Trộn Xoắn & Vít Cạo Mạch Ron Cũ', '4', 'Phụ kiện thiết yếu', 0, 90000, 65000, 'Vòi trộn xoắn ốc giúp hòa quyện đều 2 thành phần keo + vít cạo sạch xi măng khe gạch.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-screwdriver-wrench', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '6', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'tools'),
(7, 2, 2, NULL, NULL, 'may-cat-ranh-ron-mini-luoi-cat-chuyen-dung', 'Máy Cắt Rãnh Ron Mini & Lưỡi Cắt Chuyên Dụng', '4', 'Cải tạo ron cũ', 0, 550000, 450000, 'Hỗ trợ nạo vét ron xi măng cũ nhanh chóng, đường cắt chuẩn 1.5–3mm không mẻ cạnh gạch.', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'fa-compact-disc', NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, '7', 1, NULL, '2026-11-16', NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'tools'),
(8, 1, 1, NULL, NULL, 'combo-tu-thi-cong-2-keo-epoxy-sung-bi-dao-sui', 'Combo Tự Thi Công: 2 Keo Epoxy + Súng + Bi + Dao Sủi', '4', 'Trọn bộ tự làm', 0, 620000, 490000, '\r\n<p>Đủ dụng cụ tự chà ron cho ~25–30m² sàn gạch tại nhà, kèm hướng dẫn chi tiết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>testing heading</h2>\r\n\r\n<p>&nbsp;</p>\r\n<script data-ts=\"1795667123665\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n', '', '', '', 0, 0, 0, 0, NULL, '', NULL, '\r\n<h2>testing heading</h2>\r\n\r\n<p>abc\r\n<script data-ts=\"1795667123663\" src=\"https://cdn.n1ed.com/widgets.js?apiKey=FLMNFLMN\"></script>\r\n</p>\r\n', 'fa-box-open', NULL, NULL, 0, '', NULL, 1, 1, 1, 1, '8', 1, 748, '2026-11-16', '2026-11-26', '1795667124', '', '', '', '', '', '', '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `base_tproduct_images`
--

CREATE TABLE `base_tproduct_images` (
  `nid` int(11) NOT NULL,
  `nid_product` int(11) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cindex` varchar(500) DEFAULT NULL,
  `cnote` varchar(25) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tschedule`
--

CREATE TABLE `base_tschedule` (
  `nid` int(11) NOT NULL,
  `cfullname` varchar(150) NOT NULL,
  `cphone` varchar(20) NOT NULL,
  `caddress` varchar(255) DEFAULT NULL,
  `cservice` varchar(150) DEFAULT NULL,
  `careas` varchar(100) DEFAULT NULL,
  `ddate_booking` date DEFAULT NULL,
  `ctime_booking` varchar(50) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) NOT NULL DEFAULT 0 COMMENT '0: Mới nhận, 1: Đã liên hệ, 2: Đã khảo sát, 3: Đã thi công, 4: Đã hủy',
  `ddate01` datetime NOT NULL DEFAULT current_timestamp(),
  `ddate02` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tschedule`
--

INSERT INTO `base_tschedule` (`nid`, `cfullname`, `cphone`, `caddress`, `cservice`, `careas`, `ddate_booking`, `ctime_booking`, `cnote`, `nstatus`, `ddate01`, `ddate02`) VALUES
(1, 'Admin test', '0945769112', '111 Quận 1, TPHCM', 'Chống thấm ron phòng tắm & toilet', '', '2026-11-16', '11:08:11', '', 1, '2026-11-16 11:08:11', '2026-11-20 10:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `base_tsection_news`
--

CREATE TABLE `base_tsection_news` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `csection_news` varchar(250) DEFAULT NULL,
  `ctag` varchar(500) DEFAULT NULL,
  `cimage` varchar(100) DEFAULT NULL,
  `cicon` varchar(100) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `nstatus` int(11) DEFAULT NULL,
  `cindex` char(4) DEFAULT NULL,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` date DEFAULT NULL,
  `ddate02` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tsession`
--

CREATE TABLE `base_tsession` (
  `cid_session` varchar(50) NOT NULL,
  `nid_user` int(11) DEFAULT 0,
  `dsession_date` datetime NOT NULL,
  `cstatus` char(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `base_tuser`
--

CREATE TABLE `base_tuser` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(30) DEFAULT NULL,
  `cuserid` varchar(30) DEFAULT NULL,
  `cpassword` varchar(100) DEFAULT NULL,
  `cemail` varchar(100) DEFAULT NULL,
  `chandphone` varchar(50) DEFAULT NULL,
  `cfirstname` varchar(30) DEFAULT NULL,
  `cmiddlename` varchar(30) DEFAULT NULL,
  `clastname` varchar(50) DEFAULT NULL,
  `cisadmin` char(1) DEFAULT '0',
  `nid_language` int(11) DEFAULT NULL,
  `cnote` text DEFAULT NULL,
  `cstatus` char(1) DEFAULT '1',
  `cdel` char(1) DEFAULT '0',
  `ddate01` datetime DEFAULT '1977-01-01 00:00:00',
  `ddate02` datetime DEFAULT '1977-01-01 00:00:00',
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `cphone` varchar(100) DEFAULT NULL,
  `cbirthday` varchar(100) DEFAULT NULL,
  `cgender` varchar(10) DEFAULT NULL,
  `cinfo` text DEFAULT NULL,
  `ctype` char(1) DEFAULT NULL,
  `cngan_hang` varchar(500) DEFAULT NULL,
  `cso_tai_khoan` varchar(100) DEFAULT NULL,
  `cchi_nhanh` varchar(500) DEFAULT NULL,
  `cavatar` varchar(500) DEFAULT NULL,
  `clevel` char(1) DEFAULT '1',
  `csum` varchar(100) DEFAULT '0',
  `ctime` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tuser`
--

INSERT INTO `base_tuser` (`nid`, `ccode`, `cuserid`, `cpassword`, `cemail`, `chandphone`, `cfirstname`, `cmiddlename`, `clastname`, `cisadmin`, `nid_language`, `cnote`, `cstatus`, `cdel`, `ddate01`, `ddate02`, `niduser01`, `niduser02`, `cphone`, `cbirthday`, `cgender`, `cinfo`, `ctype`, `cngan_hang`, `cso_tai_khoan`, `cchi_nhanh`, `cavatar`, `clevel`, `csum`, `ctime`) VALUES
(1, 'aspoon', 'aspoon', '858fc9840b60a5eaea85b7e1c9a4b77c', 'info@gmail.com', NULL, 'Quản Trị', NULL, 'Hệ Thống', '3', 1, 'khong huy duoc', '1', '0', '1977-01-01 00:00:00', '2009-12-07 00:00:00', 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, '', 'admin', '17eaf2af0cb1ed63b53b22868f52ba53', 'info@gmail.com', NULL, 'Quản Trị', '_', 'Viên', '', NULL, '', '1', '0', '2013-08-03 00:00:00', '2026-11-23 00:00:00', 746, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_tuser_type`
--

CREATE TABLE `base_tuser_type` (
  `nid` int(11) NOT NULL,
  `ccode` varchar(50) DEFAULT NULL,
  `cuser_type` varchar(255) DEFAULT NULL,
  `cnote` varchar(255) DEFAULT NULL,
  `cstatus` int(11) DEFAULT 1,
  `cdel` int(11) DEFAULT 0,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `base_tuser_type`
--

INSERT INTO `base_tuser_type` (`nid`, `ccode`, `cuser_type`, `cnote`, `cstatus`, `cdel`, `niduser01`, `niduser02`, `ddate01`, `ddate02`) VALUES
(1, 'admin', 'Quản trị viên', 'Toàn quyền hệ thống', 1, 0, NULL, NULL, NULL, NULL),
(2, 'staff', 'Nhân viên', 'Quản lý nội dung', 1, 0, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_taccess`
--
ALTER TABLE `base_taccess`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tarticle`
--
ALTER TABLE `base_tarticle`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tbanner_images`
--
ALTER TABLE `base_tbanner_images`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tbrand_products`
--
ALTER TABLE `base_tbrand_products`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tcat_news`
--
ALTER TABLE `base_tcat_news`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tcat_products`
--
ALTER TABLE `base_tcat_products`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tcolor`
--
ALTER TABLE `base_tcolor`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tconfig`
--
ALTER TABLE `base_tconfig`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tcookie`
--
ALTER TABLE `base_tcookie`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tcustomer`
--
ALTER TABLE `base_tcustomer`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tfunction`
--
ALTER TABLE `base_tfunction`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tfunction_frontend`
--
ALTER TABLE `base_tfunction_frontend`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tgallery`
--
ALTER TABLE `base_tgallery`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tgallery_detail`
--
ALTER TABLE `base_tgallery_detail`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tgallery_img`
--
ALTER TABLE `base_tgallery_img`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tgroup_product`
--
ALTER TABLE `base_tgroup_product`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tguest_online`
--
ALTER TABLE `base_tguest_online`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tindex`
--
ALTER TABLE `base_tindex`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tmaterial_products`
--
ALTER TABLE `base_tmaterial_products`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tmenu`
--
ALTER TABLE `base_tmenu`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tmenu_frontend`
--
ALTER TABLE `base_tmenu_frontend`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tmodule`
--
ALTER TABLE `base_tmodule`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tnews`
--
ALTER TABLE `base_tnews`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_torder`
--
ALTER TABLE `base_torder`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_torder_detail`
--
ALTER TABLE `base_torder_detail`
  ADD PRIMARY KEY (`nid_product`,`nid_order`,`niscolor`) USING BTREE;

--
-- Indexes for table `base_torder_status`
--
ALTER TABLE `base_torder_status`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tpermission`
--
ALTER TABLE `base_tpermission`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tproducts`
--
ALTER TABLE `base_tproducts`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tproduct_images`
--
ALTER TABLE `base_tproduct_images`
  ADD PRIMARY KEY (`nid`) USING BTREE,
  ADD KEY `nid` (`nid`,`nid_product`,`cimage`,`ddate01`,`ddate02`) USING BTREE;

--
-- Indexes for table `base_tschedule`
--
ALTER TABLE `base_tschedule`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tsection_news`
--
ALTER TABLE `base_tsection_news`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tsession`
--
ALTER TABLE `base_tsession`
  ADD PRIMARY KEY (`cid_session`) USING BTREE;

--
-- Indexes for table `base_tuser`
--
ALTER TABLE `base_tuser`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- Indexes for table `base_tuser_type`
--
ALTER TABLE `base_tuser_type`
  ADD PRIMARY KEY (`nid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base_taccess`
--
ALTER TABLE `base_taccess`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `base_tarticle`
--
ALTER TABLE `base_tarticle`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_tbanner_images`
--
ALTER TABLE `base_tbanner_images`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_tbrand_products`
--
ALTER TABLE `base_tbrand_products`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tcat_news`
--
ALTER TABLE `base_tcat_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_tcat_products`
--
ALTER TABLE `base_tcat_products`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `base_tcolor`
--
ALTER TABLE `base_tcolor`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tconfig`
--
ALTER TABLE `base_tconfig`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `base_tcookie`
--
ALTER TABLE `base_tcookie`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `base_tcustomer`
--
ALTER TABLE `base_tcustomer`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tfunction`
--
ALTER TABLE `base_tfunction`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `base_tfunction_frontend`
--
ALTER TABLE `base_tfunction_frontend`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `base_tgallery`
--
ALTER TABLE `base_tgallery`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tgallery_detail`
--
ALTER TABLE `base_tgallery_detail`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tgallery_img`
--
ALTER TABLE `base_tgallery_img`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tgroup_product`
--
ALTER TABLE `base_tgroup_product`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tguest_online`
--
ALTER TABLE `base_tguest_online`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304572;

--
-- AUTO_INCREMENT for table `base_tindex`
--
ALTER TABLE `base_tindex`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1091;

--
-- AUTO_INCREMENT for table `base_tmaterial_products`
--
ALTER TABLE `base_tmaterial_products`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tmenu`
--
ALTER TABLE `base_tmenu`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `base_tmenu_frontend`
--
ALTER TABLE `base_tmenu_frontend`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `base_tmodule`
--
ALTER TABLE `base_tmodule`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `base_tnews`
--
ALTER TABLE `base_tnews`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `base_torder`
--
ALTER TABLE `base_torder`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_torder_detail`
--
ALTER TABLE `base_torder_detail`
  MODIFY `nid_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `base_torder_status`
--
ALTER TABLE `base_torder_status`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_tpermission`
--
ALTER TABLE `base_tpermission`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `base_tproducts`
--
ALTER TABLE `base_tproducts`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `base_tproduct_images`
--
ALTER TABLE `base_tproduct_images`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_tschedule`
--
ALTER TABLE `base_tschedule`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_tsection_news`
--
ALTER TABLE `base_tsection_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_tuser`
--
ALTER TABLE `base_tuser`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=788;

--
-- AUTO_INCREMENT for table `base_tuser_type`
--
ALTER TABLE `base_tuser_type`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
