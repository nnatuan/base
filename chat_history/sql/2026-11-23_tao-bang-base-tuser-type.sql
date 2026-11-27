-- ========================================================
-- Script tạo bảng base_tuser_type và dữ liệu mẫu
-- Khắc phục lỗi: Table 'demo.base_tuser_type' doesn't exist
-- tại màn hình: base/admin/index.php/do_employee_listview
-- Ngày tạo: 2026-11-23
-- ========================================================

CREATE TABLE IF NOT EXISTS `base_tuser_type` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ccode` varchar(50) DEFAULT NULL,
  `cuser_type` varchar(255) DEFAULT NULL,
  `cnote` varchar(255) DEFAULT NULL,
  `cstatus` int(11) DEFAULT 1,
  `cdel` int(11) DEFAULT 0,
  `niduser01` int(11) DEFAULT NULL,
  `niduser02` int(11) DEFAULT NULL,
  `ddate01` datetime DEFAULT NULL,
  `ddate02` datetime DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Chèn hoặc cập nhật dữ liệu nhóm người dùng mặc định
INSERT INTO `base_tuser_type` (`nid`, `ccode`, `cuser_type`, `cnote`, `cstatus`, `cdel`) VALUES
(1, 'superadmin', 'Quản trị hệ thống', 'Toàn quyền cấu hình cao nhất', 1, 0),
(2, 'admin', 'Quản trị viên', 'Quản lý bán hàng, sản phẩm, tin tức', 1, 0),
(3, 'staff', 'Nhân viên', 'Quản lý đơn hàng và nội dung', 1, 0)
ON DUPLICATE KEY UPDATE 
  `cuser_type` = VALUES(`cuser_type`),
  `cnote` = VALUES(`cnote`),
  `cstatus` = VALUES(`cstatus`);
