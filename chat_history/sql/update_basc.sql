-- =============================================================
-- BASC DATABASE UPDATE SCRIPT
-- Ngày tạo: 2026-11-16
-- Mục đích: Cập nhật cấu hình, danh mục, sản phẩm, tin tức & đặt lịch thi công
-- =============================================================

-- 1. BẢNG MỚI: base_tschedule (Lưu thông tin đặt lịch thi công & khảo sát)
CREATE TABLE IF NOT EXISTS `base_tschedule` (
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
  `ddate01` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate02` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- 2. CẬP NHẬT CẤU HÌNH HỆ THỐNG base_tconfig (Chỉ lưu các thông số chung: Hotline, Zalo, Cấu hình web)
INSERT INTO `base_tconfig` (`nid`, `ccode`, `cname`, `cvalue`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cimage`, `nstatus`) VALUES
(12, 'hotline', 'Hotline hỗ trợ', '0903 112 233', 'Số hotline đặt lịch & tư vấn vật tư', 1, 1, NOW(), NOW(), '', 1),
(17, 'zalo', 'Zalo tư vấn', 'https://zalo.me/0903112233', 'Link chat Zalo chính thức', 1, 1, NOW(), NOW(), '', 1)
ON DUPLICATE KEY UPDATE `cvalue` = VALUES(`cvalue`), `cname` = VALUES(`cname`), `ddate02` = NOW();

-- 3. CẬP NHẬT base_tcat_products (2 Tab lọc chính nspecial='1' và các danh mục chi tiết nspecial='0')
INSERT INTO `base_tcat_products` (`nid`, `nid_material_products`, `ccode`, `ccat_products`, `ctag`, `cimage`, `cnote`, `nspecial`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
-- 2 Nhóm danh mục chính làm Tab lọc sản phẩm (nspecial = '1')
(1, 1, 'keo-ron-epoxy', 'Keo Ron Epoxy 2 Thành Phần', 'epoxy', 'fa-fill-drip', 'Nhóm keo chà ron Epoxy 2 thành phần chống thấm, chống nấm mốc', '1', 1, 1, 1, '2026-11-16'),
(2, 2, 'dung-cu-thi-cong', 'Công Cụ & Dụng Cụ Thi Công', 'tools', 'fa-toolbox', 'Nhóm dụng cụ máy móc chuyên dụng hỗ trợ thi công nạo vét và chà ron', '1', 1, 2, 1, '2026-11-16'),
-- Các danh mục vật tư chi tiết hiển thị ở lưới danh mục (nspecial = '0')
(3, 1, 'keo-ron-anh-kim-tuyen', 'Keo Ron Ánh Kim Tuyến', 'epoxy', 'fa-gem', 'Keo chà ron ánh nhũ kim tuyến vàng/bạc cho biệt thự căn hộ cao cấp', '0', 1, 3, 1, '2026-11-16'),
(4, 2, 'sung-ban-keo-2-thanh-phan', 'Súng Bắn Keo 2 Thành Phần', 'tools', 'fa-gun', 'Súng bắn keo trợ lực đôi hợp kim thép sơn tĩnh điện', '0', 1, 4, 1, '2026-11-16'),
(5, 2, 'voi-tron-keo-xoan-oc', 'Vòi Trộn Keo Xoắn Ốc', 'tools', 'fa-tornado', 'Vòi trộn xoắn tự động 24 tầng hòa trộn keo tỷ lệ 1:1', '0', 1, 5, 1, '2026-11-16'),
(6, 2, 'bi-cau-miet-ve-ron', 'Bi Cầu Miết Vê Ron', 'tools', 'fa-circle-dot', 'Bộ bi cầu thép mạ crom miết ép mạch ron cong mịn bóng', '0', 1, 6, 1, '2026-11-16'),
(7, 2, 'dao-sui-vit-cao-ron', 'Dao Sủi & Vít Cạo Ron', 'tools', 'fa-screwdriver-wrench', 'Dao cạo sủi ron keo thừa và vít cạo ron xi măng cũ', '0', 1, 7, 1, '2026-11-16'),
(8, 2, 'may-cat-ron-mini', 'Máy Cắt Ron Mini', 'tools', 'fa-compact-disc', 'Máy cắt mạch ron mini hút bụi không ồn không bụi mẻ gạch', '0', 1, 8, 1, '2026-11-16'),
(9, 3, 'dich-vu-thi-cong-tron-goi', 'Dịch Vụ Thi Công Trọn Gói', 'service', 'fa-helmet-safety', 'Nhận thi công trọn gói nhà ở dân dụng biệt thự căn hộ', '0', 1, 9, 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `ccat_products` = VALUES(`ccat_products`), `ccode` = VALUES(`ccode`), `ctag` = VALUES(`ctag`), `cimage` = VALUES(`cimage`), `cnote` = VALUES(`cnote`), `nspecial` = VALUES(`nspecial`), `nstatus` = 1;

-- 4. CẬP NHẬT base_tproducts (8 Sản phẩm bán chạy chủ lực - gán đúng nid_cat_products)
INSERT INTO `base_tproducts` (`nid`, `nid_material_products`, `nid_cat_products`, `ccode`, `cproducts`, `ctag`, `fprice`, `fprice_sale`, `cdescription`, `cimage`, `ckeyword`, `cloai_tin`, `nhome`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
(1, 1, 1, 'keo-cha-ron-epoxy-2-thanh-phan-basc-pro', 'Keo Chà Ron Epoxy 2 Thành Phần BASC Pro (400ml)', 'Bán chạy #1', 230000, 185000, 'Chai đôi A+B tỷ lệ chuẩn, chống thấm 100%, bề mặt bóng mịn như men sứ, không đen ron.', 'fa-fill-drip', 'epoxy', '4.9 (412)', 1, 1, '1', 1, '2026-11-16'),
(2, 1, 1, 'keo-ron-epoxy-chong-tham-nha-tam-ho-boi', 'Keo Ron Epoxy Chống Thấm Nhà Tắm & Hồ Bơi', 'Chống thấm', 260000, 210000, 'Chuyên dụng khu vực ẩm ướt, ban công, sân thượng, kháng hóa chất tẩy rửa & rêu mốc.', 'fa-droplet-slash', 'epoxy', '4.9 (286)', 1, 1, '2', 1, '2026-11-16'),
(3, 1, 1, 'keo-ron-epoxy-kim-tuyen-anh-vang-bac', 'Keo Ron Epoxy Kim Tuyến Ánh Vàng / Bạc', 'Ánh kim sang trọng', 275000, 225000, 'Hiệu ứng ánh nhũ sang trọng cho phòng khách, sảnh biệt thự, gạch granite & porcelain.', 'fa-gem', 'epoxy', '4.9 (164)', 1, 1, '3', 1, '2026-11-16'),
(4, 2, 2, 'sung-ban-keo-2-thanh-phan-hop-kim-tro-luc', 'Súng Bắn Keo 2 Thành Phần Hợp Kim Trợ Lực', 'Chuyên dụng', 210000, 165000, 'Thiết kế 2 piston đẩy song song ép đều 2 ống keo A & B, cò bóp nhẹ, độ bền cao.', 'fa-gun', 'tools', '4.9 (320)', 1, 1, '4', 1, '2026-11-16'),
(5, 2, 2, 'combo-10-voi-tron-keo-xoan-oc-24-tang', 'Combo 10 Vòi Trộn Keo Xoắn Ốc 24 Tầng', 'Trộn đều 1:1', 95000, 75000, 'Cấu tạo xoắn ốc 24 tầng giúp hai thành phần keo trộn đều tuyệt đối khi đẩy qua vòi.', 'fa-tornado', 'tools', '4.8 (195)', 1, 1, '5', 1, '2026-11-16'),
(6, 2, 2, 'bo-4-bi-cau-miet-ve-ron-inox-can-thep', 'Bộ 4 Bi Cầu Miết Vê Ron Inox Cán Thép', 'Đủ 4 kích cỡ', 85000, 65000, 'Đầu bi thép không gỉ mạ bóng, hỗ trợ miết ép ron phẳng lì, không để lại bọt khí.', 'fa-circle-dot', 'tools', '4.9 (248)', 1, 1, '6', 1, '2026-11-16'),
(7, 2, 2, 'dao-sui-mach-ron-kem-10-luoi-hop-kim', 'Dao Sủi Mạch Ron Kèm 10 Lưỡi Hợp Kim', 'Siêu sắc bén', 75000, 55000, 'Lưỡi thép hợp kim vonfram cạo sạch keo thừa hai bên mép gạch mà không trầy men.', 'fa-screwdriver-wrench', 'tools', '4.8 (182)', 1, 1, '7', 1, '2026-11-16'),
(8, 2, 2, 'may-cat-nao-vet-ron-mini-chuyen-dung', 'Máy Cắt Nạo Vét Ron Mini Hút Bụi Chuyên Dụng', 'Công nghệ mới', 1250000, 980000, 'Xử lý triệt để đường ron xi măng cũ ẩm mốc, máy có đầu hút bụi sạch sẽ, không bụi bặm.', 'fa-compact-disc', 'tools', '4.9 (94)', 1, 1, '8', 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `cproducts` = VALUES(`cproducts`), `nid_cat_products` = VALUES(`nid_cat_products`), `fprice` = VALUES(`fprice`), `fprice_sale` = VALUES(`fprice_sale`), `cdescription` = VALUES(`cdescription`), `cimage` = VALUES(`cimage`), `ckeyword` = VALUES(`ckeyword`), `cloai_tin` = VALUES(`cloai_tin`), `nhome` = 1, `nstatus` = 1;

-- 5. CẬP NHẬT base_tcat_news (4 Nhóm danh mục nội dung)
INSERT INTO `base_tcat_news` (`nid`, `nid_section_news`, `ccode`, `ccat_news`, `ctag`, `nspecial`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
(2, 6, 'dich-vu-thi-cong', 'Dịch vụ thi công keo chà ron', 'service', '1', 'fa-helmet-safety', 'Nhóm dịch vụ thi công keo chà ron gạch chuyên nghiệp', 1, '2', 1, '2026-11-16'),
(3, 6, 'hinh-anh-video-thuc-te', 'Hình ảnh & Video thực tế', 'ugc', '1', 'fa-video', 'Cận cảnh công trình thực tế và video hướng dẫn thi công', 1, '3', 1, '2026-11-16'),
(4, 6, 'khach-hang-noi-gi', 'Khách hàng nói gì', 'testimonial', '1', 'fa-heart', 'Cảm nhận và đánh giá thực tế từ gia chủ, chủ thầu', 1, '4', 1, '2026-11-16'),
(5, 6, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', 'faq', '1', 'fa-circle-question', 'Giải đáp thắc mắc về vật tư và dịch vụ thi công', 1, '5', 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `ccat_news` = VALUES(`ccat_news`), `ccode` = VALUES(`ccode`), `ctag` = VALUES(`ctag`), `cimage` = VALUES(`cimage`), `cnote` = VALUES(`cnote`), `nstatus` = 1, `nspecial` = '1';

-- 6. CẬP NHẬT base_tnews (Đưa Dịch vụ, Hình ảnh & Video thực tế, Đánh giá khách hàng, FAQ vào tnews phân nhóm theo nid_cat_news)
INSERT INTO `base_tnews` (`nid`, `nid_section_news`, `nid_cat_news`, `ccode`, `ctitle`, `cview`, `cauthor`, `ctag`, `cshort_content`, `ccontent`, `cimage_thumb`, `nstatus`, `chome`, `cindex`, `niduser01`, `ddate01`) VALUES
-- 6.1 Dịch vụ thi công (nid_cat_news = 2)
(101, 6, 2, 'thi-cong-keo-cha-ron-tron-goi', 'Thi Công Keo Chà Ron Trọn Gói', 'fa-helmet-safety', 'Đội thợ BASC', 'Nhà mới xây, Biệt thự, Căn hộ', 'Áp dụng cho nhà mới xây hoặc biệt thự, căn hộ vừa hoàn thiện phần gạch ốp lát. Đường ron đều đẹp, bóng mịn chuẩn thợ.', 'Dịch vụ thi công chà ron gạch trọn gói chuyên nghiệp sử dụng keo Epoxy BASC hai thành phần...', '', 1, '1', '1', 1, '2026-11-16'),
(102, 6, 2, 'cai-tao-thay-the-ron-cu-o-moc', 'Cải Tạo & Thay Thế Ron Cũ Ố Mốc', 'fa-rotate-right', 'Đội thợ BASC', 'Nhà cải tạo, Nạo vét ron cũ, Sạch bụi', 'Dùng máy nạo vét ron chuyên dụng hút bụi sạch sẽ, không ồn không bụi, xử lý dứt điểm mạch ron xi măng ố vàng, đen bẩn.', 'Quy trình cạo sạch ron xi măng cũ bằng máy cắt rãnh hút bụi, sau đó châm keo men sứ chống bẩn vĩnh viễn...', '', 1, '1', '2', 1, '2026-11-16'),
(103, 6, 2, 'cha-ron-chong-tham-nha-tam-toilet', 'Chà Ron Chống Thấm Nhà Tắm & Toilet', 'fa-droplet-slash', 'Đội thợ BASC', 'Nhà tắm, Toilet, Chống thấm 100%', 'Khu vực ẩm ướt thường xuyên tiếp xúc xà phòng, hóa chất tẩy rửa. Kháng khuẩn 100%, ngăn mùi hôi và ẩm mốc chân tường.', 'Keo chà ron Epoxy chống thấm đặc dụng kháng hóa chất cho sàn và vách đứng toilet, nhà vệ sinh...', '', 1, '1', '3', 1, '2026-11-16'),
(104, 6, 2, 'cha-ron-ho-boi-san-thuong-ngoai-troi', 'Chà Ron Hồ Bơi & Sân Thượng Ngoài Trời', 'fa-sun', 'Đội thợ BASC', 'Hồ bơi, Sân thượng, Chống tia UV', 'Chịu được clo hồ bơi, kháng tia UV nắng mưa khắc nghiệt. Độ giãn nở đàn hồi cao, không nứt vỡ mạch ron ngoài trời.', 'Chuyên dụng cho bể bơi, ban công, sân thượng chịu nắng mưa khắc nghiệt không co ngót rạn nứt...', '', 1, '1', '4', 1, '2026-11-16'),

-- 6.2 Hình ảnh & Video thực tế / UGC (nid_cat_news = 3)
(105, 6, 3, 'cha-ron-gach-kho-lon-120x120', 'Chà ron gạch khổ lớn 120x120', 'fa-play', 'Biệt thự Q.2', 'Biệt thự Q.2', 'Quy trình chà ron mạch 2mm cho gạch bóng kiếng Tây Ban Nha khổ lớn tại biệt thự Thảo Điền.', 'Cận cảnh thi công đường ron siêu mảnh 2mm cho biệt thự cao cấp...', 'ugc1.jpg', 1, '1', '1', 1, '2026-11-16'),
(106, 6, 3, 'thay-ron-cu-moc-den-sau-3-gio', 'Thay ron cũ mốc đen sau 3 giờ', 'fa-play', 'Nhà tắm', 'Nhà tắm', 'Nạo sạch mạch xi măng đen và bắn keo men sứ trắng sáng tinh tế, khô se sau 3 giờ.', 'Hình ảnh thực tế cải tạo ron sàn nhà tắm sau 3 giờ thi công...', 'ugc2.jpg', 1, '1', '2', 1, '2026-11-16'),
(107, 6, 3, 'ron-epoxy-chong-bam-dau-mo', 'Ron Epoxy chống bám dầu mỡ', 'fa-play', 'Phòng bếp', 'Phòng bếp', 'Khu vực bàn đảo và bếp nấu lau sạch dầu mỡ chỉ bằng khăn ẩm, không ố vàng.', 'Khu vực ốp tường bếp chiên xào dầu mỡ lau chùi dễ dàng...', 'ugc3.jpg', 1, '1', '3', 1, '2026-11-16'),
(108, 6, 3, 'keo-ron-chuyen-dung-chiu-clo', 'Keo ron chuyên dụng chịu clo', 'fa-play', 'Hồ bơi', 'Hồ bơi', 'Mạch ron bền bỉ dưới nước hồ bơi gia đình, không mọc rêu phong.', 'Hồ bơi biệt thự sử dụng keo Epoxy kháng hóa chất clo ngâm nước...', 'ugc4.jpg', 1, '1', '4', 1, '2026-11-16'),
(109, 6, 3, 'cach-tu-ban-ron-chuan-tho-tai-nha', 'Cách tự bắn ron chuẩn thợ tại nhà', 'fa-play', 'Hướng dẫn', 'Hướng dẫn', 'Video hướng dẫn từng bước lắp súng, gắn vòi xoắn và miết bi cầu đẹp phẳng mịn.', 'Video hướng dẫn chi tiết cách tự thi công mạch ron chuẩn thợ...', 'ugc5.jpg', 1, '1', '5', 1, '2026-11-16'),

-- 6.3 Khách hàng nói gì / Testimonials (nid_cat_news = 4)
(110, 6, 4, 'anh-hoang-nam', 'Anh Hoàng Nam', '', 'Biệt thự Lakeview, TP. Thủ Đức', 'Gia chủ biệt thự', '“Đội ngũ BASC làm việc rất cẩn thận, mài mạch ron cũ bằng máy hút bụi nên nhà không bị bụi bặm. Ron làm xong phẳng mịn, nước bắn vào trượt đi ngay.”', '', 'HN', 1, '1', '1', 1, '2026-11-16'),
(111, 6, 4, 'chi-thu-huong', 'Chị Thu Hương', '', 'Căn hộ Vinhomes Grand Park, Q.9', 'Khách hàng căn hộ', '“Sàn nhà tắm trước đây cứ bị đen ron dù lau chùi cỡ nào, từ ngày thợ BASC làm lại bằng keo Epoxy thì sạch bóng hẳn, không còn mùi ẩm mốc nữa.”', '', 'TH', 1, '1', '2', 1, '2026-11-16'),
(112, 6, 4, 'kts-minh-tri', 'KTS. Minh Trí', '', 'Công ty Thiết kế Kiến trúc TM', 'Đối tác nhà thầu', '“Màu sắc keo BASC rất tiệp với gạch men cao cấp, đặc biệt dòng ánh kim tuyến lên đèn buổi tối rất sang. Mình tin tưởng chỉ định cho các dự án villa.”', '', 'MT', 1, '1', '3', 1, '2026-11-16'),
(113, 6, 4, 'chi-lan-ngoc', 'Chị Lan Ngọc', '', 'Khách hàng mua vật tư • Bình Thạnh', 'Tự thi công tại nhà', '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”', '', 'LN', 1, '1', '4', 1, '2026-11-16'),

-- 6.4 Câu hỏi thường gặp / FAQ (nid_cat_news = 5)
(114, 6, 5, 'keo-cha-ron-epoxy-basc-kho-hoan-toan-trong-bao-lau', 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?', '', 'Kỹ thuật viên BASC', 'Thời gian khô', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ...', '', 1, '1', '1', 1, '2026-11-16'),
(115, 6, 5, 'nha-da-lat-gach-cu-bi-den-ron-co-thi-cong-lai-duoc-khong', 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?', '', 'Kỹ thuật viên BASC', 'Cải tạo ron cũ', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi...', '', 1, '1', '2', 1, '2026-11-16'),
(116, 6, 5, '1-tuyp-keo-cha-ron-400ml-dung-duoc-cho-bao-nhieu-m2', '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?', '', 'Kỹ thuật viên BASC', 'Định mức thi công', 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.', 'Tùy vào kích thước gạch và độ rộng khe ron...', '', 1, '1', '3', 1, '2026-11-16'),
(117, 6, 5, 'basc-co-giao-hang-toan-quoc-va-ho-tro-tho-thi-cong-khong', 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?', '', 'Kỹ thuật viên BASC', 'Giao hàng & Thi công', 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.', 'BASC giao hàng hỏa tốc toàn quốc và có đội ngũ thợ trực tiếp...', '', 1, '1', '4', 1, '2026-11-16'),
(118, 6, 5, 'chinh-sach-bao-hanh-duong-ron-tai-basc-nhu-the-nao', 'Chính sách bảo hành đường ron tại BASC như thế nào?', '', 'Kỹ thuật viên BASC', 'Bảo hành 10 năm', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử 10 năm...', '', 1, '1', '5', 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `ctitle` = VALUES(`ctitle`), `cview` = VALUES(`cview`), `cauthor` = VALUES(`cauthor`), `ctag` = VALUES(`ctag`), `cshort_content` = VALUES(`cshort_content`), `ccontent` = VALUES(`ccontent`), `cimage_thumb` = VALUES(`cimage_thumb`), `nstatus` = 1, `chome` = '1', `cindex` = VALUES(`cindex`);

-- 7. CẬP NHẬT base_tmodule (Chỉ lưu tiêu đề/phụ đề các Section, Hero, Đối tác, Lợi ích và Số liệu)
DELETE FROM `base_tmodule` WHERE `ccode` IN (
  'sec_hero', 'hero_bullet', 'hero_stat', 'hero_card', 'sec_logos', 'partner_logo',
  'sec_bestsellers', 'sec_categories', 'sec_services', 'sec_reviews', 'testimonial',
  'sec_why', 'brand_benefit', 'sec_ugc', 'ugc_gallery', 'sec_about', 'about_metric',
  'sec_faqs', 'faq', 'sec_final_cta'
);

INSERT INTO `base_tmodule` (`ccode`, `cmodule`, `ctag`, `cimage`, `cnote`, `eng_cnote`, `clink`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
-- 7.1 Section 1: Hero Section
('sec_hero', 'Đường Ron Gạch <span>Sáng Bóng Bền Đẹp</span> – Chống Thấm & Nấm Mốc 100%', '4.9/5 từ 3.500+ công trình thực tế', 'Chuẩn Đức', '', '', '#best-sellers', 1, '1', 1, '2026-11-16'),
('hero_bullet', 'Keo chà ron Epoxy 2 thành phần cao cấp, không bong tróc, không ố vàng', '', '', '', '', '', 1, '1', 1, '2026-11-16'),
('hero_bullet', 'Thi công trọn gói sạch gọn trong ngày, bảo hành màu ron lên đến 10 năm', '', '', '', '', '', 1, '2', 1, '2026-11-16'),
('hero_bullet', 'Hơn 24 bảng màu thời thượng phù hợp mọi loại gạch men, đá hoa cương', '', '', '', '', '', 1, '3', 1, '2026-11-16'),
('hero_stat', '10 Năm', 'Bảo hành màu ron', '', '', '', '', 1, '1', 1, '2026-11-16'),
('hero_stat', '3.500+', 'Công trình hoàn thiện', '', '', '', '', 1, '2', 1, '2026-11-16'),
('hero_stat', '24 Giờ', 'Khảo sát & thi công', '', '', '', '', 1, '3', 1, '2026-11-16'),
('hero_card', 'BASC Epoxy Pro Series', '', '', 'Độ bám dính vượt trội • Chống thấm tuyệt đối', '', '', 1, '1', 1, '2026-11-16'),

-- 7.2 Section 2: Đối tác tin dùng (sec_logos & partner_logo)
('sec_logos', 'Tin dùng & đồng hành cùng:', 'Đối tác tin dùng', '', '', '', '', 1, '1', 1, '2026-11-16'),
('partner_logo', 'VIETCERAMICS', 'Đối tác gạch', '', '', '', '', 1, '1', 1, '2026-11-16'),
('partner_logo', 'ĐỒNG TÂM', 'Đối tác gạch', '', '', '', '', 1, '2', 1, '2026-11-16'),
('partner_logo', 'PRIME GROUP', 'Đối tác gạch', '', '', '', '', 1, '3', 1, '2026-11-16'),
('partner_logo', 'VIGLACERA', 'Đối tác gạch', '', '', '', '', 1, '4', 1, '2026-11-16'),
('partner_logo', 'SIKA PARTNER', 'Đối tác hóa chất', '', '', '', '', 1, '5', 1, '2026-11-16'),
('partner_logo', 'XÂY DỰNG VIỆT', 'Nhà thầu xây dựng', '', '', '', '', 1, '6', 1, '2026-11-16'),

-- 7.3 Section 3: Tiêu đề Nhóm sản phẩm chủ lực (Best Sellers)
('sec_bestsellers', 'Keo Ron Epoxy 2 Thành Phần & Dụng Cụ Thi Công', 'Nhóm sản phẩm chủ lực', '', 'Đầy đủ vật tư keo chà ron Epoxy chai đôi và bộ công cụ chuyên dụng giúp đường ron phẳng mịn, bền đẹp chuẩn thợ.', '', 'Tất cả sản phẩm', 1, '1', 1, '2026-11-16'),

-- 7.4 Section 4: Tiêu đề Danh mục vật tư (Categories)
('sec_categories', 'Keo Ron Epoxy & Công Cụ Hỗ Trợ Thi Công', 'Danh mục sản phẩm', '', 'Cung cấp đồng bộ từ keo chà ron Epoxy 2 thành phần đến súng bắn keo, vòi trộn xoắn, bi cầu miết ron và dao sủi chuyên dụng.', '', 'Nhận bảng giá sỉ & lẻ', 1, '1', 1, '2026-11-16'),

-- 7.5 Section 4B: Tiêu đề Dịch vụ thi công (Services)
('sec_services', 'Dịch Vụ Thi Công Keo Chà Ron Gạch Trọn Gói', 'Nhóm dịch vụ chuyên nghiệp', '', 'Nhận thi công cho nhà ở dân dụng, công trình mới ốp lát và cải tạo thay ron cũ ố mốc trên mọi chất liệu gạch.', '', 'Đặt Lịch Khảo Sát & Báo Giá Thi Công Miễn Phí', 1, '1', 1, '2026-11-16'),

-- 7.6 Section 5: Tiêu đề Khách hàng nói gì (Reviews)
('sec_reviews', 'Hơn 3.500+ Gia Chủ & Nhà Thầu Tin Tưởng', 'Khách hàng nói gì', '', 'Sự hài lòng thực tế sau khi sử dụng vật tư và dịch vụ thi công ron gạch BASC.', '', 'Nhận Tư Vấn Miễn Phí Ngay', 1, '1', 1, '2026-11-16'),

-- 7.7 Section 6: So sánh & Lợi ích thương hiệu (sec_why & brand_benefit)
('sec_why', 'Giải Pháp Ron Gạch Toàn Diện Từ Vật Tư Đến Thi Công', 'Tại sao chọn BASC', '', 'Khác Biệt Rõ Rệt Sau 6 Tháng Sử Dụng', 'So sánh thực tế', 'Nhận Báo Giá Thi Công & Vật Tư', 1, '1', 1, '2026-11-16'),
('brand_benefit', 'Công Nghệ Epoxy 2 Thành Phần Thế Hệ Mới', 'fa-fill-drip', '', 'Không chứa dung môi độc hại, không co ngót, chịu nhiệt và hóa chất tẩy rửa gia dụng cực tốt.', '', '', 1, '1', 1, '2026-11-16'),
('brand_benefit', 'Đội Ngũ Thợ Chuyên Nghiệp – Sạch Gọn Trong Ngày', 'fa-users-gear', '', 'Quy trình mài ron cũ bằng máy hút bụi chuyên dụng, không bụi bẩn, bàn giao mặt sàn sáng bóng ngay trong ngày.', '', '', 1, '2', 1, '2026-11-16'),
('brand_benefit', 'Giá Tận Xưởng – Bảo Hành Chính Hãng 10 Năm', 'fa-certificate', '', 'Chiết khấu hấp dẫn cho nhà thầu và đại lý. Cam kết đổi trả miễn phí nếu sản phẩm không đạt chuẩn.', '', '', 1, '3', 1, '2026-11-16'),

-- 7.8 Section 7: Tiêu đề Hình ảnh / Video công trình thực tế (UGC)
('sec_ugc', 'Cận Cảnh Công Trình Đã Hoàn Thiện', 'Hình ảnh & Video thực tế', '', 'Theo dõi quy trình bắn ron, miết ron và kết quả bàn giao thực tế từ đội ngũ BASC.', '', '', 1, '1', 1, '2026-11-16'),

-- 7.9 Section 8: Giới thiệu thương hiệu (sec_about & about_metric)
('sec_about', 'BASC – Chuyên Vật Tư & Thi Công Ron Gạch Hàng Đầu', 'Về thương hiệu BASC', '', 'Xuất phát từ trăn trở về những đường ron gạch nhanh chóng xuống cấp, thấm nước và nấm mốc chỉ sau vài tháng sử dụng, <strong>BASC</strong> ra đời với sứ mệnh mang đến giải pháp vật tư chà ron Epoxy chất lượng cao cùng dịch vụ thi công chuẩn mực.', 'Chúng tôi trực tiếp phân phối keo chà ron, dụng cụ ốp lát và đào tạo đội ngũ kỹ thuật viên tay nghề cao, phục vụ hàng nghìn hộ gia đình, showroom và công trình lớn trên toàn quốc.', 'Tìm hiểu thêm về BASC', 1, '1', 1, '2026-11-16'),
('about_metric', '10+ Năm', 'Kinh nghiệm ngành vật tư & thi công hoàn thiện', '', '', '', '', 1, '1', 1, '2026-11-16'),
('about_metric', '3.500+', 'Công trình nhà ở, biệt thự & khách sạn đã bàn giao', '', '', '', '', 1, '2', 1, '2026-11-16'),
('about_metric', '24+ Màu', 'Bảng màu keo ron đa dạng, phối hợp mọi vân gạch', '', '', '', '', 1, '3', 1, '2026-11-16'),
('about_metric', '99.2%', 'Khách hàng hài lòng và giới thiệu người thân', '', '', '', '', 1, '4', 1, '2026-11-16'),

-- 7.10 Section 9: Tiêu đề Câu hỏi thường gặp (FAQs)
('sec_faqs', 'Câu Hỏi Thường Gặp', 'Giải đáp thắc mắc', '', 'Tổng hợp những thắc mắc phổ biến nhất về keo chà ron Epoxy BASC và quy trình thi công tận nơi.', '', 'Cần Tư Vấn Thêm?', 1, '1', 1, '2026-11-16'),

-- 7.11 Section 10: Form đặt lịch & CTA cuối trang (sec_final_cta)
('sec_final_cta', 'Sẵn Sàng Làm Mới Đường Ron Cho Ngôi Nhà Của Bạn?', 'Khảo sát tận nơi miễn phí • Báo giá minh bạch', '', 'Để lại thông tin để kỹ thuật viên BASC mang mẫu tận nơi, đo đạc kích thước và gửi báo giá ưu đãi ngay hôm nay.', '', 'Đặt Lịch Khảo Sát Ngay', 1, '1', 1, '2026-11-16');

-- 8. CẤP QUYỀN TRUY CẬP ADMIN CHO QUẢN LÝ ĐẶT LỊCH THI CÔNG
INSERT INTO `base_taccess` (`nid`, `caccess`, `ccontroller`, `caction`, `nid_category_access`) VALUES
(47, 'Xem DS đặt lịch thi công', 'do_schedule_listview', '', 13),
(48, 'Chi tiết & cập nhật đặt lịch', 'do_schedule', 'f_edit', 13),
(49, 'Xóa lịch thi công', 'do_schedule_listview', 'f_del', 13)
ON DUPLICATE KEY UPDATE `caccess` = VALUES(`caccess`), `ccontroller` = VALUES(`ccontroller`), `caction` = VALUES(`caction`);

-- Phân quyền cho nhóm Admin (nid_user_type = 3)
INSERT INTO `base_tpermission` (`nid_user_type`, `nid_access`) VALUES
(3, 47),
(3, 48),
(3, 49)
ON DUPLICATE KEY UPDATE `nid_access` = VALUES(`nid_access`);
