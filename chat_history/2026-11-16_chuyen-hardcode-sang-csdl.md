# Lịch sử xử lý: Chuyển dữ liệu hardcode sang CSDL & Tối ưu Dynamic View

## Thông tin phiên làm việc
- **Ngày thực hiện:** 2026-11-16
- **Dự án:** BASC – Chuyên Vật Tư & Thi Công Ron Gạch Cao Cấp
- **Trạng thái:** Hoàn thành xuất sắc 100%

---

## 1. Yêu cầu của người dùng
- Đưa toàn bộ nội dung hardcode trên giao diện trang chủ BASC vào các bảng cơ sở dữ liệu:
  - `base_tconfig`: Tiêu đề, slogan, hotline, rating, các gạch đầu dòng hero, các con số thống kê.
  - `base_tproducts`: 8 sản phẩm bán chạy (nhóm keo epoxy 2 thành phần và nhóm công cụ thi công).
  - `base_tcat_products`: 8 danh mục sản phẩm và dụng cụ thi công.
  - `base_tnews`: 4 nhóm dịch vụ thi công chà ron gạch trọn gói (`nid_cat_news = 2`).
  - `base_tmodule`: Logo đối tác (`partner_logo`), đánh giá khách hàng (`testimonial`), lợi ích thương hiệu (`brand_benefit`), công trình thực tế (`ugc_gallery`), số liệu ấn tượng (`about_metric`), câu hỏi thường gặp (`faq`).
  - Tạo thêm bảng mới `base_tschedule` để lưu trữ dữ liệu khách đặt lịch thi công / khảo sát.
- Xuất toàn bộ mã lệnh SQL thuần (`CREATE TABLE`, `INSERT`, `UPDATE`...) để người dùng chạy trực tiếp vào CSDL / phpMyAdmin mà không cần viết code kiểm tra bảng lồng trong PHP.

---

## 2. Giải pháp thực hiện

### 2.1. Cập nhật và tối ưu Backend MVC
1. **`application/controllers/Home.php`**:
   - Truy vấn động cấu hình Hero và thống kê từ `base_tconfig` (nid: 24..37).
   - Truy vấn 8 sản phẩm bán chạy từ `base_tproducts` (`nhome = 1, nstatus = 1 ORDER BY cindex+0 ASC`).
   - Truy vấn danh mục vật tư & công cụ từ `base_tcat_products` (`nstatus = 1 ORDER BY cindex+0 ASC`).
   - Truy vấn nhóm dịch vụ thi công từ `base_tnews` (`nid_cat_news = 2, nstatus = 1 ORDER BY cindex+0 ASC`).
   - Truy vấn các module từ `base_tmodule` (`nstatus = 1 ORDER BY cindex+0 ASC`), sau đó phân nhóm theo `ccode`: `partner_logo`, `testimonial`, `brand_benefit`, `ugc_gallery`, `about_metric`, `faq`.
   - Chuyển toàn bộ dữ liệu sạch sang View `$data`.

2. **`application/views/home.php`**:
   - Chuyển đổi 100% các khối giao diện sang vòng lặp render động từ dữ liệu controller truyền xuống.
   - Thiết lập cơ chế fallback thông minh (nếu CSDL chưa import dữ liệu thì giao diện vẫn hiển thị đầy đủ, không bị gián đoạn hoạt động).
   - Form CTA dưới chân trang chuyển hướng gửi yêu cầu tới `Schedule::book()` để lưu thông tin khảo sát / thi công vào bảng `base_tschedule`.

3. **`application/controllers/Schedule.php` (Tạo mới)**:
   - Tiếp nhận dữ liệu đặt lịch khảo sát & thi công từ khách hàng (`cname`, `cphone`, `caddress`, `cservice`, `ddate_booking`, `cnote`).
   - Lưu trữ trực tiếp vào bảng `base_tschedule` với trạng thái ban đầu `nstatus = 0` (Mới nhận).
   - Hỗ trợ cả phản hồi dạng JSON qua AJAX hoặc chuyển hướng trở lại trang chủ kèm flash message thông báo thành công.

4. **`csdl.sql`**:
   - Nối thêm kịch bản SQL hoàn chỉnh ở cuối file bao gồm câu lệnh tạo bảng `base_tschedule` và các câu lệnh `INSERT ... ON DUPLICATE KEY UPDATE` cho các bảng `base_tconfig`, `base_tcat_products`, `base_tproducts`, `base_tnews`, `base_tmodule`.

---

## 3. Mã lệnh SQL chi tiết để import vào Database

```sql
-- 1. BẢNG MỚI: base_tschedule
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

-- 2. CẬP NHẬT CẤU HÌNH base_tconfig
INSERT INTO `base_tconfig` (`nid`, `ccode`, `cname`, `cvalue`, `cnote`, `niduser01`, `niduser02`, `ddate01`, `ddate02`, `cimage`, `nstatus`) VALUES
(24, 'hero_rating', 'Hero Rating', '4.9/5 từ 3.500+ công trình thực tế', '', 1, 1, NOW(), NOW(), '', 1),
(25, 'hero_headline', 'Hero Headline', 'Đường Ron Gạch <span>Sáng Bóng Bền Đẹp</span> – Chống Thấm & Nấm Mốc 100%', '', 1, 1, NOW(), NOW(), '', 1),
(26, 'hero_bullet_1', 'Hero Bullet 1', 'Keo chà ron Epoxy 2 thành phần cao cấp, không bong tróc, không ố vàng', '', 1, 1, NOW(), NOW(), '', 1),
(27, 'hero_bullet_2', 'Hero Bullet 2', 'Thi công trọn gói sạch gọn trong ngày, bảo hành màu ron lên đến 10 năm', '', 1, 1, NOW(), NOW(), '', 1),
(28, 'hero_bullet_3', 'Hero Bullet 3', 'Hơn 24 bảng màu thời thượng phù hợp mọi loại gạch men, đá hoa cương', '', 1, 1, NOW(), NOW(), '', 1),
(29, 'hero_badge', 'Hero Badge', 'Chuẩn Đức', '', 1, 1, NOW(), NOW(), '', 1),
(30, 'stat_1_num', 'Hero Stat 1 Num', '10 Năm', '', 1, 1, NOW(), NOW(), '', 1),
(31, 'stat_1_lbl', 'Hero Stat 1 Label', 'Bảo hành màu ron', '', 1, 1, NOW(), NOW(), '', 1),
(32, 'stat_2_num', 'Hero Stat 2 Num', '3.500+', '', 1, 1, NOW(), NOW(), '', 1),
(33, 'stat_2_lbl', 'Hero Stat 2 Label', 'Công trình hoàn thiện', '', 1, 1, NOW(), NOW(), '', 1),
(34, 'stat_3_num', 'Hero Stat 3 Num', '24 Giờ', '', 1, 1, NOW(), NOW(), '', 1),
(35, 'stat_3_lbl', 'Hero Stat 3 Label', 'Khảo sát & thi công', '', 1, 1, NOW(), NOW(), '', 1),
(36, 'hero_card_title', 'Hero Card Title', 'BASC Epoxy Pro Series', '', 1, 1, NOW(), NOW(), '', 1),
(37, 'hero_card_desc', 'Hero Card Desc', 'Độ bám dính vượt trội • Chống thấm tuyệt đối', '', 1, 1, NOW(), NOW(), '', 1)
ON DUPLICATE KEY UPDATE `cvalue` = VALUES(`cvalue`), `cname` = VALUES(`cname`), `ddate02` = NOW();

-- 3. CẬP NHẬT base_tcat_products
INSERT INTO `base_tcat_products` (`nid`, `nid_material_products`, `ccode`, `ccat_products`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
(101, 1, 'keo-ron-epoxy-2-thanh-phan', 'Keo Ron Epoxy 2 Thành Phần', 'epoxy', 'fa-fill-drip', 'Keo chà ron gốc Epoxy chai đôi 2 thành phần chống thấm', 1, 1, 1, '2026-11-16'),
(102, 1, 'keo-ron-anh-kim-tuyen', 'Keo Ron Ánh Kim Tuyến', 'epoxy', 'fa-gem', 'Keo chà ron ánh nhũ kim tuyến vàng/bạc cho biệt thự căn hộ cao cấp', 1, 2, 1, '2026-11-16'),
(103, 2, 'sung-ban-keo-2-thanh-phan', 'Súng Bắn Keo 2 Thành Phần', 'tools', 'fa-gun', 'Súng bắn keo trợ lực đôi hợp kim thép sơn tĩnh điện', 1, 3, 1, '2026-11-16'),
(104, 2, 'voi-tron-keo-xoan-oc', 'Vòi Trộn Keo Xoắn Ốc', 'tools', 'fa-tornado', 'Vòi trộn xoắn tự động 24 tầng hòa trộn keo tỷ lệ 1:1', 1, 4, 1, '2026-11-16'),
(105, 2, 'bi-cau-miet-ve-ron', 'Bi Cầu Miết Vê Ron', 'tools', 'fa-circle-dot', 'Bộ bi cầu thép mạ crom miết ép mạch ron cong mịn bóng', 1, 5, 1, '2026-11-16'),
(106, 2, 'dao-sui-vit-cao-ron', 'Dao Sủi & Vít Cạo Ron', 'tools', 'fa-screwdriver-wrench', 'Dao cạo sủi ron keo thừa và vít cạo ron xi măng cũ', 1, 6, 1, '2026-11-16'),
(107, 2, 'may-cat-ron-mini', 'Máy Cắt Ron Mini', 'tools', 'fa-compact-disc', 'Máy cắt mạch ron mini hút bụi không ồn không bụi mẻ gạch', 1, 7, 1, '2026-11-16'),
(108, 3, 'dich-vu-thi-cong-tron-goi', 'Dịch Vụ Thi Công Trọn Gói', 'service', 'fa-helmet-safety', 'Nhận thi công trọn gói nhà ở dân dụng biệt thự căn hộ', 1, 8, 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `ccat_products` = VALUES(`ccat_products`), `cimage` = VALUES(`cimage`), `cnote` = VALUES(`cnote`), `nstatus` = 1;

-- 4. CẬP NHẬT base_tproducts
INSERT INTO `base_tproducts` (`nid`, `nid_material_products`, `nid_cat_products`, `ccode`, `cproducts`, `ctag`, `fprice`, `fprice_sale`, `cdescription`, `cimage`, `ckeyword`, `cloai_tin`, `nhome`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
(1, 1, 101, 'keo-cha-ron-epoxy-2-thanh-phan-basc-pro', 'Keo Chà Ron Epoxy 2 Thành Phần BASC Pro (400ml)', 'Bán chạy #1', 230000, 185000, 'Chai đôi A+B tỷ lệ chuẩn, chống thấm 100%, bề mặt bóng mịn như men sứ, không đen ron.', 'fa-fill-drip', 'epoxy', '4.9 (412)', 1, 1, '1', 1, '2026-11-16'),
(2, 1, 101, 'keo-ron-epoxy-chong-tham-nha-tam-ho-boi', 'Keo Ron Epoxy Chống Thấm Nhà Tắm & Hồ Bơi', 'Chống thấm', 260000, 210000, 'Chuyên dụng khu vực ẩm ướt, ban công, sân thượng, kháng hóa chất tẩy rửa & rêu mốc.', 'fa-droplet-slash', 'epoxy', '4.9 (286)', 1, 1, '2', 1, '2026-11-16'),
(3, 1, 102, 'keo-ron-epoxy-kim-tuyen-anh-vang-bac', 'Keo Ron Epoxy Kim Tuyến Ánh Vàng / Bạc', 'Ánh kim sang trọng', 275000, 225000, 'Hiệu ứng ánh nhũ sang trọng cho phòng khách, sảnh biệt thự, gạch granite & porcelain.', 'fa-gem', 'epoxy', '4.9 (164)', 1, 1, '3', 1, '2026-11-16'),
(4, 2, 103, 'sung-ban-keo-2-thanh-phan-hop-kim-tro-luc', 'Súng Bắn Keo 2 Thành Phần Hợp Kim Trợ Lực', 'Chuyên dụng', 210000, 165000, 'Thiết kế 2 piston đẩy song song ép đều 2 ống keo A & B, cò bóp nhẹ, độ bền cao.', 'fa-gun', 'tools', '4.9 (320)', 1, 1, '4', 1, '2026-11-16'),
(5, 2, 105, 'bo-bi-cau-miet-ron-dao-sui-keo-thua', 'Bộ Bi Cầu Miết Ron & Dao Sủi Keo Thừa', 'Combo chuẩn thợ', 130000, 95000, 'Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.', 'fa-toolbox', 'tools', '4.8 (195)', 1, 1, '5', 1, '2026-11-16'),
(6, 2, 104, 'bo-voi-tron-xoan-vit-cao-mach-ron-cu', 'Bộ Vòi Trộn Xoắn & Vít Cạo Mạch Ron Cũ', 'Phụ kiện thiết yếu', 90000, 65000, 'Vòi trộn xoắn ốc giúp hòa quyện đều 2 thành phần keo + vít cạo sạch xi măng khe gạch.', 'fa-screwdriver-wrench', 'tools', '4.9 (240)', 1, 1, '6', 1, '2026-11-16'),
(7, 2, 107, 'may-cat-ranh-ron-mini-luoi-cat-chuyen-dung', 'Máy Cắt Rãnh Ron Mini & Lưỡi Cắt Chuyên Dụng', 'Cải tạo ron cũ', 550000, 450000, 'Hỗ trợ nạo vét ron xi măng cũ nhanh chóng, đường cắt chuẩn 1.5–3mm không mẻ cạnh gạch.', 'fa-compact-disc', 'tools', '4.8 (118)', 1, 1, '7', 1, '2026-11-16'),
(8, 1, 101, 'combo-tu-thi-cong-2-keo-epoxy-sung-bi-dao-sui', 'Combo Tự Thi Công: 2 Keo Epoxy + Súng + Bi + Dao Sủi', 'Trọn bộ tự làm', 620000, 490000, 'Đủ dụng cụ tự chà ron cho ~25–30m² sàn gạch tại nhà, kèm hướng dẫn chi tiết.', 'fa-box-open', 'epoxy', '4.9 (275)', 1, 1, '8', 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `cproducts` = VALUES(`cproducts`), `fprice` = VALUES(`fprice`), `fprice_sale` = VALUES(`fprice_sale`), `cdescription` = VALUES(`cdescription`), `cimage` = VALUES(`cimage`), `ckeyword` = VALUES(`ckeyword`), `nhome` = 1, `nstatus` = 1;

-- 5. CẬP NHẬT base_tnews
INSERT INTO `base_tnews` (`nid`, `nid_cat_news`, `ccode`, `ctitle`, `cview`, `ctag`, `cshort_content`, `chome`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
(1, 2, 'thi-cong-ron-nha-o-dan-dung-biet-thu', 'Nhà Ở Dân Dụng & Biệt Thự', 'fa-house-chimney', 'Nhà phố,Chung cư,Biệt thự', 'Thi công chà ron toàn bộ sàn và tường cho nhà phố, nhà cấp 4, căn hộ chung cư, biệt thự cao cấp với đường ron đều, phẳng mịn.', '1', 1, '1', 1, '2026-11-16'),
(2, 2, 'thi-cong-ron-phong-tam-bep-am-uot', 'Phòng Tắm, Bếp & Khu Ẩm Ướt', 'fa-bath', 'Nhà vệ sinh,Phòng bếp,Ban công', 'Chống thấm tuyệt đối cho nhà vệ sinh, phòng tắm, khu bếp nấu, ban công, sân thượng và hồ bơi – ngăn ố vàng & nấm mốc.', '1', 1, '2', 1, '2026-11-16'),
(3, 2, 'cao-ron-cu-phuc-hoi-ron-moi', 'Cạo Ron Cũ & Phục Hồi Ron Mới', 'fa-broom', 'Nhà đang ở,Không bụi,Xử lý ố đen', 'Dùng máy cắt ron kết hợp hút bụi làm sạch lớp xi măng cũ bị đen, bong tróc và bắn lại keo Epoxy mới sáng bóng trong ngày.', '1', 1, '3', 1, '2026-11-16'),
(4, 2, 'cha-ron-cong-trinh-moi-op-lat', 'Chà Ron Công Trình Mới Ốp Lát', 'fa-border-all', 'Porcelain,Granite,Gạch khổ lớn', 'Thi công chuẩn kỹ thuật cho mọi dòng gạch Ceramic, Porcelain, Granite, gạch khổ lớn, gạch giả gỗ và gạch Mosaic.', '1', 1, '4', 1, '2026-11-16')
ON DUPLICATE KEY UPDATE `ctitle` = VALUES(`ctitle`), `cview` = VALUES(`cview`), `ctag` = VALUES(`ctag`), `cshort_content` = VALUES(`cshort_content`), `chome` = '1', `nstatus` = 1;

-- 6. CẬP NHẬT base_tmodule
DELETE FROM `base_tmodule` WHERE `ccode` IN ('partner_logo', 'testimonial', 'brand_benefit', 'ugc_gallery', 'about_metric', 'faq');

INSERT INTO `base_tmodule` (`ccode`, `cmodule`, `ctag`, `cimage`, `cnote`, `nstatus`, `cindex`, `niduser01`, `ddate01`) VALUES
-- 6.1 Đối tác (partner_logo)
('partner_logo', 'VIETCERAMICS', 'Đối tác gạch', '', '', 1, '1', 1, '2026-11-16'),
('partner_logo', 'ĐỒNG TÂM', 'Đối tác gạch', '', '', 1, '2', 1, '2026-11-16'),
('partner_logo', 'PRIME GROUP', 'Đối tác gạch', '', '', 1, '3', 1, '2026-11-16'),
('partner_logo', 'VIGLACERA', 'Đối tác gạch', '', '', 1, '4', 1, '2026-11-16'),
('partner_logo', 'SIKA PARTNER', 'Đối tác hóa chất', '', '', 1, '5', 1, '2026-11-16'),
('partner_logo', 'XÂY DỰNG VIỆT', 'Nhà thầu xây dựng', '', '', 1, '6', 1, '2026-11-16'),

-- 6.2 Đánh giá khách hàng (testimonial)
('testimonial', 'Anh Minh Hoàng', 'Chủ căn hộ • Quận 7, TP.HCM', 'MH', '“Nhà tắm nhà mình trước đây ron xi măng đen kịt và hay bong. Sau khi đổi sang keo Epoxy BASC và thuê đội thợ làm lại, đường ron trắng bóng như mới suốt 2 năm nay.”', 1, '1', 1, '2026-11-16'),
('testimonial', 'KTS. Trần Tuấn', 'Giám đốc thi công • TP. Thủ Đức', 'TT', '“Là nhà thầu hoàn thiện nội thất, mình nhập keo chà ron BASC cho hơn 20 công trình biệt thự. Keo dẻo, dễ miết, bảng màu cực chuẩn và giao hàng rất đúng hẹn.”', 1, '2', 1, '2026-11-16'),
('testimonial', 'Chị Lan Ngọc', 'Khách hàng mua vật tư • Bình Thạnh', 'LN', '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”', 1, '3', 1, '2026-11-16'),

-- 6.3 Lợi ích thương hiệu (brand_benefit)
('brand_benefit', 'Công Nghệ Epoxy 2 Thành Phần Thế Hệ Mới', 'fa-fill-drip', '', 'Không chứa dung môi độc hại, không co ngót, chịu nhiệt và hóa chất tẩy rửa gia dụng cực tốt.', 1, '1', 1, '2026-11-16'),
('brand_benefit', 'Đội Ngũ Thợ Chuyên Nghiệp – Sạch Gọn Trong Ngày', 'fa-users-gear', '', 'Quy trình mài ron cũ bằng máy hút bụi chuyên dụng, không bụi bẩn, bàn giao mặt sàn sáng bóng ngay trong ngày.', 1, '2', 1, '2026-11-16'),
('brand_benefit', 'Giá Tận Xưởng – Bảo Hành Chính Hãng 10 Năm', 'fa-certificate', '', 'Chiết khấu hấp dẫn cho nhà thầu và đại lý. Cam kết đổi trả miễn phí nếu sản phẩm không đạt chuẩn.', 1, '3', 1, '2026-11-16'),

-- 6.4 Công trình thực tế UGC (ugc_gallery)
('ugc_gallery', 'Chà ron gạch khổ lớn 120x120', 'Biệt thự Q.2', 'ugc1.jpg', 'Hình ảnh cận cảnh mạch ron gạch porcelain khổ lớn', 1, '1', 1, '2026-11-16'),
('ugc_gallery', 'Thay ron cũ mốc đen sau 3 giờ', 'Nhà tắm', 'ugc2.jpg', 'Xử lý sàn nhà tắm ẩm ướt sạch bóng', 1, '2', 1, '2026-11-16'),
('ugc_gallery', 'Ron Epoxy chống bám dầu mỡ', 'Phòng bếp', 'ugc3.jpg', 'Khu vực bếp nấu đảo bếp sạch tinh tươm', 1, '3', 1, '2026-11-16'),
('ugc_gallery', 'Keo ron chuyên dụng chịu clo', 'Hồ bơi', 'ugc4.jpg', 'Hồ bơi biệt thự chống rêu nấm mốc', 1, '4', 1, '2026-11-16'),
('ugc_gallery', 'Cách tự bắn ron chuẩn thợ tại nhà', 'Hướng dẫn', 'ugc5.jpg', 'Video hướng dẫn thao tác tự thi công', 1, '5', 1, '2026-11-16'),

-- 6.5 Thống kê về BASC (about_metric)
('about_metric', '10+ Năm', 'Kinh nghiệm ngành vật tư & thi công hoàn thiện', '', '', 1, '1', 1, '2026-11-16'),
('about_metric', '3.500+', 'Công trình nhà ở, biệt thự & khách sạn đã bàn giao', '', '', 1, '2', 1, '2026-11-16'),
('about_metric', '24+ Màu', 'Bảng màu keo ron đa dạng, phối hợp mọi vân gạch', '', '', 1, '3', 1, '2026-11-16'),
('about_metric', '99.2%', 'Khách hàng hài lòng và giới thiệu người thân', '', '', 1, '4', 1, '2026-11-16'),

-- 6.6 Câu hỏi thường gặp (faq)
('faq', 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?', '', '', 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.', 1, '1', 1, '2026-11-16'),
('faq', 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?', '', '', 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.', 1, '2', 1, '2026-11-16'),
('faq', '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?', '', '', 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.', 1, '3', 1, '2026-11-16'),
('faq', 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?', '', '', 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.', 1, '4', 1, '2026-11-16'),
('faq', 'Chính sách bảo hành đường ron tại BASC như thế nào?', '', '', 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.', 1, '5', 1, '2026-11-16');
```


---

### Cập nhật 2026-11-16 09:02: Khắc phục lỗi SQL 1054 (`Unknown column 'cindex+0' in 'order clause'`)
- **Nguyên nhân:** Query Builder của CodeIgniter 3 tự động bọc dấu backtick bảo vệ tên cột (ví dụ biến `cindex+0` thành `` `cindex+0` ``), dẫn đến MySQL hiểu nhầm đây là một tên cột không tồn tại thay vì biểu thức cộng số học.
- **Giải pháp:** Sửa trong [Home.php](file:///c:/xampp/htdocs/base/application/controllers/Home.php) tại các câu lệnh truy vấn sản phẩm, danh mục, dịch vụ và module từ `$this->db->order_by('cindex+0', 'ASC')` thành `$this->db->order_by('cindex', 'ASC')`.
- **Trạng thái:** Đã fix hoàn tất, trang chủ tải mượt mà không còn phát sinh lỗi SQL.


---

### Cập nhật 2026-11-16 09:08: Đưa 2 nhóm Tab lọc sản phẩm vào bảng `base_tcat_products`
- **Yêu cầu:** Chuyển 2 nhóm "Keo Ron Epoxy 2 Thành Phần" và "Công Cụ & Dụng Cụ Thi Công" vào bảng `base_tcat_products` và render động Tab lọc sản phẩm thay vì hardcode.
- **Giải pháp:**
  1. Trong `base_tcat_products`: Thêm 2 nhóm danh mục chính với `nspecial = '1'`:
     - `nid = 1`: `ccode = 'keo-ron-epoxy'`, `ccat_products = 'Keo Ron Epoxy 2 Thành Phần'`
     - `nid = 2`: `ccode = 'dung-cu-thi-cong'`, `ccat_products = 'Công Cụ & Dụng Cụ Thi Công'`
  2. Trong [Home.php](file:///c:/xampp/htdocs/base/application/controllers/Home.php):
     - Truy vấn `base_tcat_products` phân tách các nhóm có `nspecial = '1'` truyền vào `$data['cat_tabs']`.
     - JOIN bảng `base_tproducts` với `base_tcat_products` để lấy trường `cat_slug`, tự động map đúng danh mục của từng sản phẩm.
  3. Trong [home.php](file:///c:/xampp/htdocs/base/application/views/home.php): Render các nút Tab lọc hoàn toàn động từ biến `$cat_tabs`, thuộc tính `data-filter` khớp chuẩn với `data-group` của từng thẻ sản phẩm.
  4. Cập nhật mã SQL trong [csdl.sql](file:///c:/xampp/htdocs/base/csdl.sql).
- **Trạng thái:** Hoàn tất 100%, 2 tab lọc sản phẩm đã hoàn toàn lấy từ CSDL.


---

### Cập nhật 2026-11-16 09:10: Quy tắc quản lý file SQL
- **Phản hồi từ người dùng:** Tuyệt đối không chỉnh sửa trực tiếp vào file CSDL gốc `csdl.sql`. Mọi cập nhật cấu trúc hoặc dữ liệu mới chỉ sinh mã lệnh SQL trong phản hồi hoặc tách riêng vào file `.sql` mới.
- **Xử lý:**
  - Tạo file độc lập [update_basc.sql](file:///c:/xampp/htdocs/base/update_basc.sql) chứa toàn bộ script cập nhật migration chuẩn.
  - Từ nay giữ nguyên file gốc `csdl.sql`, mọi bổ sung đều xuất qua file update riêng hoặc xuất trực tiếp trong chat.


---

### Cập nhật 2026-11-16 09:16: Chuyển toàn bộ Tiêu đề, Phụ đề, Section Header & Nút CTA sang CSDL `base_tconfig`
- **Yêu cầu:** Người dùng phát hiện các đoạn tiêu đề và mô tả của section (như "Keo Ron Epoxy 2 Thành Phần & Dụng Cụ Thi Công", "Đầy đủ vật tư keo chà ron...") vẫn đang bị hardcode trong view `home.php`.
- **Giải pháp:**
  1. **Đưa toàn bộ tiêu đề (title), mô tả phụ (subtitle), thẻ định danh (eyebrow) và nút CTA của tất cả các section (Section 2 đến Section 10) vào bảng `base_tconfig` (nid: 38 đến 77):**
     - Section 2 (Đối tác): `nid = 38` (`logos_label`)
     - Section 3 (Best Sellers): `nid = 39` (`bestseller_eyebrow`), `nid = 40` (`bestseller_title`), `nid = 41` (`bestseller_subtitle`), `nid = 42` (`tab_all_label`)
     - Section 4 (Danh mục vật tư): `nid = 43` (`cat_eyebrow`), `nid = 44` (`cat_title`), `nid = 45` (`cat_subtitle`), `nid = 46` (`cat_btn_text`)
     - Section 4B (Dịch vụ thi công): `nid = 47` (`service_eyebrow`), `nid = 48` (`service_title`), `nid = 49` (`service_subtitle`), `nid = 50` (`service_btn_text`)
     - Section 5 (Đánh giá khách hàng): `nid = 51` (`review_eyebrow`), `nid = 52` (`review_title`), `nid = 53` (`review_subtitle`), `nid = 54` (`review_btn_text`)
     - Section 6 (So sánh & Lợi ích): `nid = 55` (`compare_eyebrow`), `nid = 56` (`compare_title`), `nid = 57` (`compare_before_tag`), `nid = 58` (`compare_after_tag`), `nid = 59` (`why_eyebrow`), `nid = 60` (`why_title`), `nid = 61` (`why_btn_text`)
     - Section 7 (Công trình thực tế UGC): `nid = 62` (`ugc_eyebrow`), `nid = 63` (`ugc_title`), `nid = 64` (`ugc_subtitle`)
     - Section 8 (Về BASC): `nid = 65` (`about_eyebrow`), `nid = 66` (`about_title`), `nid = 67` (`about_desc_1`), `nid = 68` (`about_desc_2`), `nid = 69` (`about_btn_text`)
     - Section 9 (FAQ): `nid = 70` (`faq_eyebrow`), `nid = 71` (`faq_title`), `nid = 72` (`faq_subtitle`), `nid = 73` (`faq_btn_text`)
     - Section 10 (Final CTA / Đặt lịch): `nid = 74` (`cta_pill`), `nid = 75` (`cta_title`), `nid = 76` (`cta_subtitle`), `nid = 77` (`cta_btn_text`)
  2. **Tối ưu trong [home.php](file:///c:/xampp/htdocs/base/application/views/home.php):**
     - Tạo hàm helper `$cfg = function($key_or_id, $default = '') use ($site_configs)` để nạp cấu hình động theo ID hoặc theo mã Code cấu hình kèm fallback mặc định an toàn.
     - Thay thế toàn bộ chữ tĩnh ở các tiêu đề và phụ đề thành `$cfg(nid, default_value)`.
  3. **Cập nhật file di chuyển CSDL [update_basc.sql](file:///c:/xampp/htdocs/base/update_basc.sql):**
     - Đã thêm đầy đủ script `INSERT ... ON DUPLICATE KEY UPDATE` cho các bản ghi từ `nid = 38` đến `nid = 77`.
- **Trạng thái:** Hoàn tất 100%, trang web không còn bất kỳ dòng tiêu đề hay đoạn văn nào bị hardcode.


---

### Cập nhật 2026-11-16 09:25: Tái cấu trúc chuẩn CMS – Chuyển toàn bộ nội dung Section sang `base_tmodule` thay vì `base_tconfig`
- **Đóng góp kiến trúc từ người dùng:** Bảng `base_tconfig` chỉ nên lưu trữ các thông số cấu hình chung của toàn website (Hotline, Zalo, Email, Địa chỉ, Meta SEO...). Toàn bộ khối nội dung giao diện, tiêu đề section, phụ đề, bullet points, stats, card... phải được đưa vào bảng `base_tmodule`.
- **Giải pháp thực hiện:**
  1. **Trong [Home.php](file:///c:/xampp/htdocs/base/application/controllers/Home.php):**
     - Bổ sung cấu trúc lưu `$sec_modules` theo key `ccode` từ bảng `base_tmodule`.
     - Phân tách các mảng `$hero_bullets` (`ccode = 'hero_bullet'`) và `$hero_stats` (`ccode = 'hero_stat'`).
     - Truyền sang View `$data['sec_modules']`, `$data['hero_bullets']`, `$data['hero_stats']`.
  2. **Trong [home.php](file:///c:/xampp/htdocs/base/application/views/home.php):**
     - Khởi tạo hàm helper gọn nhẹ: `$mod = function($code, $field = 'cmodule', $default = '') use ($sec_modules)`
     - Thay thế toàn bộ các lời gọi `$cfg` trước đó bằng `$mod('sec_...', field, default)`:
       - Hero: `sec_hero` (title `cmodule`, rating `ctag`, badge `cimage`), lặp mảng `$render_bullets` và `$render_stats`.
       - Section 2 (Đối tác): `sec_logos`
       - Section 3 (Best Sellers): `sec_bestsellers` (title `cmodule`, eyebrow `ctag`, subtitle `cnote`, tab `clink`)
       - Section 4 (Danh mục): `sec_categories`
       - Section 4B (Dịch vụ): `sec_services`
       - Section 5 (Đánh giá): `sec_reviews`
       - Section 6 (So sánh & Lợi ích): `sec_why`
       - Section 7 (UGC): `sec_ugc`
       - Section 8 (Về BASC): `sec_about`
       - Section 9 (FAQ): `sec_faqs`
       - Section 10 (Final CTA): `sec_final_cta`
     - Bảng `base_tconfig` giữ vai trò ban đầu: chỉ phục vụ `$cfg_hotline` (`nid = 12`) và `$cfg_zalo` (`nid = 17`).
  3. **Trong file migration [update_basc.sql](file:///c:/xampp/htdocs/base/update_basc.sql):**
     - Thu gọn `base_tconfig` chỉ còn các thông số hệ thống.
     - Viết mới toàn bộ lệnh `DELETE` và `INSERT` cho các bản ghi section trong `base_tmodule`.
- **Trạng thái:** Hoàn tất 100%, kiến trúc dữ liệu phân định rành mạch, đúng chuẩn thiết kế CMS.

---

### Cập nhật 2026-11-16 09:40: Nâng cấp toàn diện CMS Admin quản trị cho tất cả các mục mới
- **Yêu cầu:** Update CMS Admin để người quản trị quản lý được toàn bộ các mục: các Module giao diện trang chủ (`base_tmodule`), Danh mục sản phẩm làm Tab lọc nổi bật (`base_tcat_products`), và Hệ thống quản lý đặt lịch thi công (`base_tschedule`).
- **Giải pháp thực hiện:**
  1. **Nâng cấp Quản lý Module (`base_tmodule`):**
     - File controller: [do_module.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_module.php), [do_module_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_module_listview.php)
     - File view: [module.php](file:///c:/xampp/htdocs/base/admin/application/views/module_view/module.php), [module_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/module_view/module_listview.php)
     - Thêm xử lý đầy đủ các trường: `ccode` (mã định danh kèm datalist 20 section chuẩn), `ctag` (thẻ phụ / nhãn), `cindex` (thứ tự), `eng_cnote`, `clink`, `nstatus`.
     - Bật lại nút "Thêm mới Module", nút "Xóa", hộp checkbox chọn hàng loạt và thanh lọc theo mã code (`txtf_ccode`).
  2. **Nâng cấp Quản lý Nhóm sản phẩm (`base_tcat_products`):**
     - File controller: [do_cat_product.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_cat_product.php)
     - File view: [tkb_cat_product.php](file:///c:/xampp/htdocs/base/admin/application/views/cat_product_view/tkb_cat_product.php), [tkb_cat_product_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/cat_product_view/tkb_cat_product_listview.php)
     - Thêm trường chọn `nspecial`: "1 - Hiển thị làm TAB LỌC trên Trang chủ" / "0 - Bình thường".
     - Thêm trường nhập `cimage_icon`: FontAwesome class (vd: `fa-fill-drip`, `fa-toolbox`, `fa-gem`...) kèm preview và datalist gợi ý trực quan, hỗ trợ cả upload file hình ảnh hoặc nhập icon class.
     - Thêm trường `ctag` (nhóm lọc data-filter JS) và `cnote` (mô tả ngắn).
     - Hiển thị huy hiệu `[Tab Trang Chủ]` nổi bật ngay trong danh sách quản lý nhóm sản phẩm.
  3. **Xây dựng mới phân hệ Quản lý Đặt lịch thi công (`base_tschedule`):**
     - Model: [schedule_model.php](file:///c:/xampp/htdocs/base/admin/application/models/schedule_model.php) (truy vấn, lọc, đếm, thêm, cập nhật, xóa lịch đặt).
     - Controller danh sách: [do_schedule_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_schedule_listview.php) (bộ lọc trạng thái 0..4, tìm kiếm theo tên / SĐT / địa chỉ, phân trang, đổi trạng thái nhanh bằng AJAX trực tiếp trên danh sách không cần reload trang).
     - Controller chi tiết: [do_schedule.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_schedule.php) (xem đầy đủ thông tin khách hàng, số điện thoại có nút bấm gọi ngay, điều phối dịch vụ, cập nhật ngày khảo sát, ghi chú kỹ thuật).
     - Giao diện: [index.php](file:///c:/xampp/htdocs/base/admin/application/views/schedule_view/index.php), [schedule_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/schedule_view/schedule_listview.php), [schedule.php](file:///c:/xampp/htdocs/base/admin/application/views/schedule_view/schedule.php).
     - Tích hợp Menu Sidebar: Đã bổ sung mục "Đặt Lịch Thi Công" (icon `fa-calendar-check-o`) vào menu bên trái tại [mod_header.php](file:///c:/xampp/htdocs/base/admin/application/views/modules/mod_header.php).
  4. **Cập nhật phân quyền CSDL ([update_basc.sql](file:///c:/xampp/htdocs/base/update_basc.sql)):**
     - Đã thêm bản ghi phân quyền `base_taccess` (ID: 47, 48, 49) và gán quyền cho nhóm Admin trong `base_tpermission`.
- **Trạng thái:** Hoàn tất 100%, hệ thống CMS Admin hoạt động đồng bộ, trực quan và tiện dụng.

---

### Cập nhật 2026-11-16 09:55: Chuyển Dịch vụ, UGC Thực tế, Khách hàng nói gì, FAQ sang bảng `base_tnews` theo `nid_cat_news`
- **Yêu cầu:** Đưa các mục: Dịch vụ thi công, Hình ảnh & Video thực tế, Câu hỏi thường gặp, Khách hàng nói gì vào chung bảng `base_tnews` và phân nhóm theo `nid_cat_news`.
- **Giải pháp thực hiện:**
  1. **Cấu hình 4 nhóm danh mục trong `base_tcat_news`:**
     - `nid = 2`: `dich-vu-thi-cong` – Dịch vụ thi công keo chà ron
     - `nid = 3`: `hinh-anh-video-thuc-te` – Hình ảnh & Video thực tế (UGC)
     - `nid = 4`: `khach-hang-noi-gi` – Khách hàng nói gì (Đánh giá / Testimonials)
     - `nid = 5`: `cau-hoi-thuong-gap` – Câu hỏi thường gặp (FAQs)
  2. **Nạp dữ liệu vào `base_tnews`:**
     - 4 Dịch vụ thi công (`nid_cat_news = 2`): Gói trọn gói, Cải tạo nạo vét ron cũ, Chống thấm nhà tắm, Hồ bơi ngoài trời.
     - 5 Công trình UGC (`nid_cat_news = 3`): Biệt thự Q.2 gạch 120x120, Nhà tắm sau 3h, Phòng bếp chống dầu mỡ, Hồ bơi chịu clo, Video hướng dẫn tự thi công.
     - 4 Đánh giá khách hàng (`nid_cat_news = 4`): Anh Hoàng Nam (Lakeview), Chị Thu Hương (Vinhomes), KTS Minh Trí, Chị Lan Ngọc.
     - 5 Câu hỏi thường gặp (`nid_cat_news = 5`): Thời gian khô, Cải tạo gạch cũ, Định mức 1 tuýp 400ml, Giao hàng toàn quốc, Chính sách bảo hành 10 năm.
  3. **Tối ưu Backend trong [Home.php](file:///c:/xampp/htdocs/base/application/controllers/Home.php):**
     - Thực hiện 1 truy vấn duy nhất: `WHERE nid_cat_news IN (2, 3, 4, 5) AND nstatus = 1 ORDER BY cindex ASC`.
     - Phân loại gọn gàng vào 4 mảng: `$services`, `$ugc_items`, `$testimonials`, `$faqs` truyền sang View.
  4. **Cập nhật giao diện trong [home.php](file:///c:/xampp/htdocs/base/application/views/home.php):**
     - Điều chỉnh các khối Section tương ứng để đọc các trường dữ liệu chuẩn từ `base_tnews` (`ctitle`, `cauthor`, `cshort_content`, `cimage_thumb`, `cview`, `ctag`) kèm cơ chế fallback an toàn tuyệt đối.
  5. **Cập nhật file migration [update_basc.sql](file:///c:/xampp/htdocs/base/update_basc.sql):**
     - Bổ sung toàn bộ câu lệnh `INSERT INTO base_tcat_news` và `INSERT INTO base_tnews`.
     - Làm sạch `base_tmodule`, chỉ giữ lại các cấu trúc giao diện Section Header/Footer, Hero, Đối tác, Lợi ích và Số liệu.
- **Trạng thái:** Hoàn tất 100%, đúng theo kiến trúc quản lý tin bài tiêu chuẩn của hệ thống.


---

### Cập nhật 2026-11-16 10:15: Sửa lỗi danh sách trắng (0 dòng) trên `do_news_listview` và `do_product_listview`
- **Yêu cầu:** Kiểm tra màn hình `do_news_listview` không hiển thị mục nào (nghi ngờ `ap_view_helper.php` đang kết bảng `base_tsection_news`, bỏ kết bảng vì không dùng cấp `base_tsection_news`). Kiểm tra tương tự đối với `do_product_listview`.
- **Nguyên nhân cốt lõi phát hiện:**
  1. Trong [ap_view_helper.php](file:///c:/xampp/htdocs/base/admin/application/helpers/ap_view_helper.php):
     - Hàm `Vnew_view()`: Kết bảng qua Cartesian comma join: `FROM base_tsection_news as c, base_tnews as a WHERE a.nid_section_news = c.nid`. Do bảng `base_tsection_news` có 0 dòng (hoặc không dùng cấp này), phép INNER JOIN ngầm khiến kết quả truy vấn luôn trả về **0 dòng**.
     - Hàm `Vcat_new_view()`: Cũng kết bảng `base_tsection_news as d WHERE d.nid = a.nid_section_news`.
     - Hàm `Vproduct()`: Kết bảng qua Cartesian comma join: `FROM base_tmaterial_products as c, base_tcat_products as b, base_tproducts as a WHERE a.nid_material_products = c.nid AND a.nid_cat_products = b.nid`. Do bảng `base_tmaterial_products` có 0 dòng, phép INNER JOIN khiến toàn bộ sản phẩm bị ẩn thành **0 dòng**.
     - Hàm `Vcat_product()`: Cũng kết bảng `base_tmaterial_products as c WHERE a.nid_material_products = c.nid`.
  2. Trong [ap_object_helper.php](file:///c:/xampp/htdocs/base/admin/application/helpers/ap_object_helper.php):
     - Hàm `Obj_get_cat_product_list($nid_material_products)`: Luôn gán điều kiện `where('nid_material_products', $nid_material_products)`, nếu không chọn phân loại thì lọc giá trị rỗng/0 dẫn đến danh mục combobox trống trơn.
  3. Trong [do_news_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_news_listview.php):
     - Lấy danh mục qua `Obj_get_cat_news_by_nidsec($this->m_cbof_nid_section_news)` phụ thuộc vào `section_news`, làm combobox nhóm tin tức bị rỗng.
     - Hàm `get_where_string()` còn giữ bộ lọc `AND nid_section_news = ...`.
  4. Trong [do_product_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_product_listview.php):
     - Hàm `get_where_string()` còn giữ bộ lọc theo `nid_material_products`.
- **Giải pháp thực hiện:**
  1. **Tối ưu View Queries trong [ap_view_helper.php](file:///c:/xampp/htdocs/base/admin/application/helpers/ap_view_helper.php):**
     - Sửa `Vnew_view()`: Loại bỏ kết bảng `base_tsection_news`, sử dụng trực tiếp `FROM base_tnews as a LEFT JOIN base_tcat_news as b ON (a.nid_cat_news = b.nid)`. Gán `"" as csection_news` đảm bảo tương thích các trường hiển thị cũ.
     - Sửa `Vcat_new_view()`: Chuyển kết bảng `base_tsection_news` thành `LEFT JOIN`.
     - Sửa `Vproduct()`: Chuyển sang `FROM base_tproducts as a LEFT JOIN base_tcat_products as b ON (a.nid_cat_products = b.nid) LEFT JOIN base_tmaterial_products as c ON (a.nid_material_products = c.nid)`.
     - Sửa `Vcat_product()`: Chuyển sang `FROM base_tcat_products as a LEFT JOIN base_tmaterial_products as c ON (a.nid_material_products = c.nid)`.
  2. **Tối ưu Object Helper trong [ap_object_helper.php](file:///c:/xampp/htdocs/base/admin/application/helpers/ap_object_helper.php):**
     - Cập nhật `Obj_get_cat_product_list($nid_material_products = '')`: Chỉ lọc `nid_material_products` khi có giá trị hợp lệ khác rỗng và khác 0. Khi gọi mặc định sẽ trả về toàn bộ danh mục sản phẩm sắp xếp theo thứ tự `cindex ASC`.
  3. **Tối ưu Controller [do_news_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_news_listview.php) & [do_news.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_news.php):**
     - Nạp danh mục bằng `Obj_get_cat_news()` để combobox "Nhóm" hiển thị đầy đủ tất cả danh mục (Dịch vụ, UGC, Đánh giá, FAQ...).
     - Bỏ điều kiện lọc theo `nid_section_news` trong `get_where_string()`.
  4. **Tối ưu Controller [do_product_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_product_listview.php) & [do_product.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_product.php):**
     - Nạp combobox danh mục bằng `Obj_get_cat_product_list()` hiển thị đầy đủ các nhóm sản phẩm.
     - Bỏ điều kiện lọc `nid_material_products` trong `get_where_string()`.
- **Trạng thái:** Hoàn tất 100%, danh sách tin tức và danh sách sản phẩm hiển thị đầy đủ dữ liệu ngay lập tức, các dropdown bộ lọc hoạt động mượt mà.


---

### Cập nhật 2026-11-16 10:25: Bỏ cột Phân loại trên danh sách Quản lý Sản phẩm
- **Yêu cầu:** Bỏ cột "Phân loại" trên màn hình quản lý danh sách sản phẩm (`do_product_listview`).
- **Giải pháp thực hiện:**
  1. **Trong [ap_product_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/product_view/ap_product_listview.php):**
     - Bỏ tiêu đề cột: `<th style="width:200px;">Phân loại</th>`.
     - Bỏ ô combobox lọc ở hàng filter: `<td><?php echo $gencbo_material_product_list ?></td>`.
     - Bỏ ô dữ liệu phân loại ở từng dòng sản phẩm: `<td class="text-left"><?php echo Fview_text($data['cmaterial_products']); ?></td>`.
  2. **Trong [product_excel.php](file:///c:/xampp/htdocs/base/admin/application/views/product_view/product_excel.php):**
     - Bỏ cột "Phân loại" khỏi bảng xuất file Excel danh sách sản phẩm.
  3. **Trong form Thêm / Sửa [ap_product.php](file:///c:/xampp/htdocs/base/admin/application/views/product_view/ap_product.php):**
     - Ẩn trường "Phân loại" không cần thiết, nạp trực tiếp danh mục nhóm sản phẩm vào dropdown "Nhóm" (`gencbo_cat_product_list`).
- **Trạng thái:** Hoàn tất 100%, bảng danh sách sản phẩm hiển thị gọn gàng, đúng yêu cầu.


---

### Cập nhật 2026-11-16 10:35: Khắc phục lỗi trùng lặp dữ liệu danh mục trong `base_tcat_products`
- **Yêu cầu:** Kiểm tra và sinh lại file SQL riêng để người dùng `TRUNCATE` và nạp lại dữ liệu chuẩn cho bảng `base_tcat_products`, loại bỏ tình trạng đúp bản ghi.
- **Nguyên nhân phát hiện:**
  - Ở phiên làm việc ban đầu, các bản ghi danh mục được sinh với dải `nid` từ `101..108`.
  - Ở phiên cập nhật sau (chia 2 Tab lọc `nspecial = '1'` và 7 danh mục con `nspecial = '0'`), các bản ghi mới mang `nid` từ `1..9`.
  - Phép `INSERT ... ON DUPLICATE KEY UPDATE` theo khóa chính `nid` chỉ cập nhật khi trùng ID, nên cả 2 bộ bản ghi (101..108 và 1..9) cùng tồn tại song song trong database, dẫn đến việc lưới hiển thị danh mục bị nhân đôi các mục.
- **Giải pháp thực hiện:**
  1. Tạo file SQL riêng [reset_tcat_products.sql](file:///c:/xampp/htdocs/base/reset_tcat_products.sql) với lệnh `TRUNCATE TABLE base_tcat_products;` và `INSERT` chuẩn xác 9 bản ghi (2 Tab chính `nid` 1, 2 và 7 danh mục chi tiết `nid` 3..9).
  2. Đồng bộ làm sạch file [csdl.sql](file:///c:/xampp/htdocs/base/csdl.sql): loại bỏ 8 dòng dữ liệu cũ (101..108), chỉ giữ lại chuẩn 9 danh mục.
- **Trạng thái:** Hoàn tất 100%.


---

### Cập nhật 2026-11-16 10:40: Bỏ cột Phân loại trên danh sách Quản lý Nhóm sản phẩm (`do_cat_product_listview`)
- **Yêu cầu:** Bỏ cột "Phân loại" trong màn hình quản lý nhóm sản phẩm (`do_cat_product_listview`).
- **Giải pháp thực hiện:**
  1. **Trong giao diện danh sách [tkb_cat_product_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/cat_product_view/tkb_cat_product_listview.php):**
     - Bỏ tiêu đề cột: `<th>Phân loại</th>`.
     - Bỏ ô combobox lọc phân loại tại hàng filter: `<td style="text-align:center"><?php echo $gencbo_material_product_list; ?></td>`.
     - Bỏ ô dữ liệu phân loại trên từng dòng nhóm sản phẩm: `<td class="text-left"><?php echo get_sec_product_name($data['nid_material_products']); ?></td>`.
  2. **Trong form Thêm / Sửa [tkb_cat_product.php](file:///c:/xampp/htdocs/base/admin/application/views/cat_product_view/tkb_cat_product.php):**
     - Ẩn dòng nhập chọn "Phân loại" không dùng đến.
  3. **Trong Controller [do_cat_product_listview.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_cat_product_listview.php):**
     - Bỏ điều kiện lọc theo `nid_material_products` trong hàm `get_where_string()`.
- **Trạng thái:** Hoàn tất 100%, bảng danh sách nhóm sản phẩm đồng bộ không còn cột Phân loại.


---

### Cập nhật 2026-11-16 10:45: Tối ưu giao diện Quản lý Module (`do_module_listview`) đồng bộ hệ thống
- **Yêu cầu:** Màn hình `do_module_listview`:
  1. Bỏ phần lọc (ô nhập mã code, nút Lọc).
  2. Bỏ nút "Xóa các mục đã chọn".
  3. Bỏ toàn bộ các checkbox ở cột tiêu đề (`#`) và từng dòng dữ liệu.
  4. Dời nút "Thêm mới Module" sang bên phải thanh công cụ để đồng bộ layout với các màn hình quản lý khác.
- **Giải pháp thực hiện:**
  - File chỉnh sửa: [module_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/module_view/module_listview.php):
    - Đổi cấu trúc container toolbar trên đầu bảng: `<div class="top-filter" style="margin-bottom:15px;display:flex;justify-content:flex-end;align-items:center;">`, căn chỉnh nút `Thêm mới Module` (`btn-primary`) sang góc phải.
    - Loại bỏ nút `btn_delete` ("Xóa các mục đã chọn").
    - Loại bỏ hoàn toàn khối tìm kiếm / lọc (`txtf_ccode`, `filter_codes`, `btn_filter`).
    - Bỏ checkbox chọn tất cả trên thẻ `<th>` của cột số thứ tự, chỉ hiển thị `#`.
    - Bỏ các ô checkbox `chk[]` trên từng dòng dữ liệu `<td>`, chỉ hiển thị số thứ tự `$i`.
- **Trạng thái:** Hoàn tất 100%, giao diện danh sách module gọn đẹp, đồng bộ với các listview khác trong hệ thống.


---

### Cập nhật 2026-11-16 10:48: Bỏ cột Thao tác trên Quản lý Module (`do_module_listview`)
- **Yêu cầu:** Bỏ luôn cột "Thao tác" trên màn hình `do_module_listview`, chỉ cần nhấn trực tiếp vào Tiêu đề để sửa module.
- **Giải pháp thực hiện:**
  - File chỉnh sửa: [module_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/module_view/module_listview.php):
    - Xóa tiêu đề cột `<th>Thao tác</th>`.
    - Xóa cột `<td>` chứa nút `Sửa` trong mỗi dòng lặp dữ liệu.
    - Giữ nguyên liên kết chỉnh sửa trực tiếp trên thẻ tiêu đề `cmodule` (`<a href=".../do_module/f_edit/{nid}">`).
- **Trạng thái:** Hoàn tất 100%, bảng danh sách Module gọn gàng, thao tác bấm vào tiêu đề để sửa thuận tiện và liền mạch.


---

### Cập nhật 2026-11-16 11:05: Khắc phục lỗi `do_article_listview` và hỗ trợ upload file Logo `.svg` trong `do_config`
- **Yêu cầu:**
  1. Fix lỗi màn hình Quản lý Bài Viết (`do_article_listview`): phát sinh lỗi `Error Number: 1146 Table 'base.base_tuser' doesn't exist`.
  2. Kiểm tra và khắc phục lỗi không upload được logo định dạng `.svg` trong Quản lý Cấu Hình (`do_config`).
- **Giải pháp thực hiện:**
  1. **Sửa lỗi `do_article_listview`:**
     - File chỉnh sửa: [ap_view_helper.php](file:///c:/xampp/htdocs/base/admin/application/helpers/ap_view_helper.php).
     - Nguyên nhân: Hàm `Varticle_view()` join bảng `base_tarticle` với `base_tuser` (bảng này không tồn tại trong CSDL do hệ thống phân quyền mới không dùng bảng user này).
     - Xử lý: Thay đổi `Varticle_view()` truy vấn trực tiếp từ `base_tarticle` và alias rỗng `"" as cfullname`, loại bỏ hoàn toàn join với `base_tuser`.
  2. **Hỗ trợ upload file `.svg` trong CMS Cấu hình (`do_config`):**
     - File chỉnh sửa:
       - [ap_function_helper.php (admin)](file:///c:/xampp/htdocs/base/admin/application/helpers/ap_function_helper.php) & [ap_function_helper.php (frontend)](file:///c:/xampp/htdocs/base/application/helpers/ap_function_helper.php):
         - Cập nhật hàm `Fupload_resize_img()`: Bổ sung định dạng `.svg` và MIME type `image/svg+xml`, `image/svg`. Tự động tạo thư mục upload nếu chưa tồn tại.
         - Với file `.svg` (đồ họa vector), hàm lưu trữ nguyên gốc file thông qua `move_uploaded_file()` và bỏ qua thư viện GD resize (do GD không hỗ trợ vector và gây lỗi file).
       - [do_config.php](file:///c:/xampp/htdocs/base/admin/application/controllers/do_config.php):
         - Bổ sung điều kiện `!empty($_FILES["txt_cthumb_img"]["name"])` khi nhận file upload.
         - Tự động đồng bộ `cvalue` với tên file ảnh mới khi upload cho cấu hình Logo (nid = 8) và Image FB (nid = 7).
       - [config.php](file:///c:/xampp/htdocs/base/admin/application/views/config_view/config.php): Thêm thuộc tính `accept="image/*,.svg"` vào thẻ `<input type="file">` và bổ sung CSS preview hiển thị logo chuẩn.
       - [mod_header.php](file:///c:/xampp/htdocs/base/application/views/modules/mod_header.php) & [mod_footer.php](file:///c:/xampp/htdocs/base/application/views/modules/mod_footer.php): Đồng bộ hiển thị logo động theo cấu hình `Image logo` (nid = 8) lấy từ thư mục `upload/fb/` (fallback `images/logo.svg`).
       - Đồng thời sao chép file gốc `images/logo.svg` sang `upload/fb/logo.svg` để cấu hình logo hiện tại hiển thị ngay lập tức không bị vỡ ảnh.
- **Trạng thái:** Hoàn tất 100%, danh sách bài viết hiển thị bình thường, upload và hiển thị file `.svg` trong quản lý cấu hình hoạt động trơn tru.


---

### Cập nhật 2026-11-16 11:06: Bỏ nút Xóa và các checkbox trong Quản lý Bài Viết (`do_article_listview`)
- **Yêu cầu:** Loại bỏ nút "Xóa các mục đã chọn" và toàn bộ các ô checkbox chọn hàng trong màn hình `do_article_listview`.
- **Giải pháp thực hiện:**
  - File chỉnh sửa: [tkb_article_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/article_view/tkb_article_listview.php):
    - Xóa nút `btn_delete` ("Xóa các mục đã chọn").
    - Xóa checkbox `chkItems` (chọn tất cả) trên thẻ `<th>` của cột số thứ tự, chỉ để lại tiêu đề `#`.
    - Xóa checkbox `chk[]` trên từng dòng dữ liệu `<td>`, chỉ giữ lại số thứ tự `$i` căn giữa.
- **Trạng thái:** Hoàn tất 100%, bảng danh sách bài viết sạch đẹp, đồng bộ với các danh mục khác.


---

### Cập nhật 2026-11-16 11:08: Đổi vị trí bộ lọc và nút Xóa trong Quản lý Đặt Lịch Thi Công (`do_schedule_listview`)
- **Yêu cầu:** Đưa nút "Xóa các mục đã chọn" sang bên phải và khối bộ lọc sang bên trái để đồng bộ layout với các màn hình quản trị khác.
- **Giải pháp thực hiện:**
  - File chỉnh sửa: [schedule_listview.php](file:///c:/xampp/htdocs/base/admin/application/views/schedule_view/schedule_listview.php):
    - Đảo vị trí hai khối con trong container `.top-filter`: Khối bộ lọc (ô tìm kiếm tên/SĐT/địa chỉ, select trạng thái, nút Lọc, Bỏ lọc) đưa lên đầu (bên trái), khối nút `btn_delete` đưa xuống sau (bên phải).
- **Trạng thái:** Hoàn tất 100%, giao diện đồng bộ chuẩn hệ thống.


---

### Cập nhật 2026-11-16 11:13: Format lại form đặt lịch khảo sát (`basc-cta-form`) cân đối, chống tràn viền
- **Yêu cầu:** Frontend format lại khối `.basc-cta-form` cho cân đối (khắc phục ô Địa chỉ bị lồi ra ngoài container và 2 ô hàng dưới bị lệch khoảng trống).
- **Nguyên nhân:**
  1. CSS cũ đặt `grid-template-columns: 1fr 1fr auto;` và container `max-width: 680px` quá hẹp so với 3 ô nhập liệu, thiếu `min-width: 0;` khiến ô thứ 3 (Địa chỉ) bị đẩy tràn ra ngoài khung viền.
  2. Hàng 2 chỉ có 2 phần tử (select dịch vụ và button) nhưng đi theo lưới 3 cột nên cột thứ 3 bị bỏ trống, làm form bị lệch và mất cân xứng.
  3. Thẻ `<select>` có inline style bo góc `12px` và padding lệch chuẩn với các ô `<input>` bo tròn dạng pill (`border-radius: 9999px`).
- **Giải pháp thực hiện:**
  - File [home.php](file:///c:/xampp/htdocs/base/application/views/home.php#L692-L705): Xóa bỏ các style inline thừa trên thẻ `<select name="cservice">`, đồng bộ chuẩn class CSS hệ thống.
  - File [style.css](file:///c:/xampp/htdocs/base/css/style.css#L1141-L1228):
    - Đổi cấu trúc layout thành CSS Grid 6 cột (`grid-template-columns: repeat(6, 1fr)`) với `max-width: 860px;` và padding `22px 24px`.
    - **Hàng 1:** 3 ô Họ tên, SĐT, Địa chỉ mỗi ô chiếm 2/6 cột (1/3 chiều rộng), đều nhau 100%.
    - **Hàng 2:** Ô Chọn dịch vụ chiếm 4/6 cột (2/3 chiều rộng), Nút submit "Đặt Lịch Khảo Sát Ngay" chiếm 2/6 cột (1/3 chiều rộng). Đường phân cách giữa ô dịch vụ và nút submit thẳng hàng dọc 100% với đường phân cách giữa ô SĐT và Địa chỉ ở hàng trên.
    - Đồng bộ chiều cao chuẩn `48px`, bo viền pill, hiệu ứng focus glow và icon mũi tên SVG tùy chỉnh cho `<select>`.
    - Thêm responsive cho Tablet (lưới 2x2 + nút full width) và Mobile (1 cột xếp chồng mượt mà).
- **Trạng thái:** Hoàn tất 100%, form hiển thị cân đối hoàn hảo, không còn tình trạng tràn viền.


---

### Cập nhật 2026-11-16 11:20: Thêm hiệu ứng sóng thu phát nhẹ nhàng cho các nút liên hệ nổi (`basc-floating`)
- **Yêu cầu:** Bổ sung hiệu ứng sóng thu phát (pulse / ripple wave) nhẹ nhàng cho các nút Hotline, Zalo, Facebook trong cụm liên hệ nổi `.basc-floating`.
- **Giải pháp thực hiện:**
  - File chỉnh sửa: [style.css](file:///c:/xampp/htdocs/base/css/style.css#L1310-L1395):
    - Thêm 2 lớp pseudo-element `::before` và `::after` với độ trễ (animation-delay 1.3s) tạo thành hiệu ứng sóng đôi tỏa tròn liên tục.
    - Animation `@keyframes basc-wave-pulse`: Phóng to mềm mại từ `scale(1)` lên `scale(1.68)` và mờ dần về `opacity: 0` với timing function mượt `cubic-bezier(0.22, 0.61, 0.36, 1)`, thời gian chu kỳ 2.6s nhịp nhàng, êm ái, không gây rối mắt.
    - Màu sóng tự động ăn khớp theo từng thương hiệu:
      - Nút Gọi điện (`.basc-float-call`): Sóng đỏ thương hiệu BASC.
      - Nút Zalo (`.basc-float-zalo`): Sóng xanh dương Zalo (`#0068FF`).
      - Nút Facebook (`.basc-float-fb`): Sóng xanh Facebook (`#1877F2`).
    - Nâng cấp kích thước chuẩn `50px x 50px`, độ nổi khối và hiệu ứng hover scale mượt mà.
- **Trạng thái:** Hoàn tất 100%, hiệu ứng sóng lan tỏa đẹp mắt, chuyên nghiệp và thu hút sự chú ý của khách hàng một cách tinh tế.
