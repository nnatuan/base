-- =============================================================
-- SCRIPT RESET & CẬP NHẬT CHUẨN: base_tcat_products
-- Mục đích: Truncate làm sạch bảng và nạp lại chuẩn 9 danh mục (2 Tab lọc + 7 Danh mục chi tiết)
-- =============================================================

TRUNCATE TABLE `base_tcat_products`;

INSERT INTO `base_tcat_products` (`nid`, `nid_material_products`, `ccode`, `ccat_products`, `eng_ccat_products`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `ddate01`, `nspecial`) VALUES
-- 1. Hai nhóm chính làm TAB LỌC trên Trang chủ (nspecial = '1')
(1, 1, 'keo-ron-epoxy', 'Keo Ron Epoxy 2 Thành Phần', NULL, 'epoxy', 'fa-fill-drip', 'Nhóm keo chà ron Epoxy 2 thành phần chống thấm, chống nấm mốc', 1, 1, 1, '2026-11-16', '1'),
(2, 2, 'dung-cu-thi-cong', 'Công Cụ & Dụng Cụ Thi Công', NULL, 'tools', 'fa-toolbox', 'Nhóm dụng cụ máy móc chuyên dụng hỗ trợ thi công nạo vét và chà ron', 1, 2, 1, '2026-11-16', '1'),

-- 2. Bảy danh mục vật tư & dụng cụ chi tiết hiển thị ở lưới "DANH MỤC VẬT TƯ & CÔNG CỤ" (nspecial = '0')
(3, 1, 'keo-ron-anh-kim-tuyen', 'Keo Ron Ánh Kim Tuyến', NULL, 'epoxy', 'fa-gem', 'Keo chà ron ánh nhũ kim tuyến vàng/bạc cho biệt thự căn hộ cao cấp', 1, 3, 1, '2026-11-16', '0'),
(4, 2, 'sung-ban-keo-2-thanh-phan', 'Súng Bắn Keo 2 Thành Phần', NULL, 'tools', 'fa-gun', 'Súng bắn keo trợ lực đôi hợp kim thép sơn tĩnh điện', 1, 4, 1, '2026-11-16', '0'),
(5, 2, 'voi-tron-keo-xoan-oc', 'Vòi Trộn Keo Xoắn Ốc', NULL, 'tools', 'fa-tornado', 'Vòi trộn xoắn tự động 24 tầng hòa trộn keo tỷ lệ 1:1', 1, 5, 1, '2026-11-16', '0'),
(6, 2, 'bi-cau-miet-ve-ron', 'Bi Cầu Miết Vê Ron', NULL, 'tools', 'fa-circle-dot', 'Bộ bi cầu thép mạ crom miết ép mạch ron cong mịn bóng', 1, 6, 1, '2026-11-16', '0'),
(7, 2, 'dao-sui-vit-cao-ron', 'Dao Sủi & Vít Cạo Ron', NULL, 'tools', 'fa-screwdriver-wrench', 'Dao cạo sủi ron keo thừa và vít cạo ron xi măng cũ', 1, 7, 1, '2026-11-16', '0'),
(8, 2, 'may-cat-ron-mini', 'Máy Cắt Ron Mini', NULL, 'tools', 'fa-compact-disc', 'Máy cắt mạch ron mini hút bụi không ồn không bụi mẻ gạch', 1, 8, 1, '2026-11-16', '0'),
(9, 3, 'dich-vu-thi-cong-tron-goi', 'Dịch Vụ Thi Công Trọn Gói', NULL, 'service', 'fa-helmet-safety', 'Nhận thi công trọn gói nhà ở dân dụng biệt thự căn hộ', 1, 9, 1, '2026-11-16', '0');
