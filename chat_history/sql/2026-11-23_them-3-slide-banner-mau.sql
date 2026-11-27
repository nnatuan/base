-- ========================================================
-- Thêm 3 bản ghi Slide Banner mẫu vào bảng base_tbanner_images
-- Khắc phục lỗi: 1062 - Duplicate entry '0' for key 'PRIMARY'
-- Nguyên nhân: Cột nid chưa có AUTO_INCREMENT dẫn đến khi insert mặc định nhận nid = 0
-- Ngày tạo: 2026-11-23
-- ========================================================

-- Bước 1: Đảm bảo cột khóa chính nid có thuộc tính tự động tăng AUTO_INCREMENT
ALTER TABLE `base_tbanner_images` MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

-- Bước 2: Xóa bỏ dữ liệu rác nid = 0 (nếu có phát sinh trong lượt chạy trước)
DELETE FROM `base_tbanner_images` WHERE `nid` = 0;

-- Bước 3: Thêm 3 slide banner mẫu với khóa chính nid rõ ràng (1, 2, 3)
INSERT INTO `base_tbanner_images` 
(`nid`, `cbanner_images`, `cimage`, `cnote`, `ccode`, `ctag`, `nstatus`, `cindex`, `niduser01`, `ddate01`, `ddate02`) 
VALUES
(
  1,
  'KEO CHÀ RON EPOXY <span>2 THÀNH PHẦN</span> CAO CẤP',
  '',
  'Đường ron sáng bóng như men sứ, chống thấm 100%, kháng nấm mốc & không ố vàng trọn đời. Đầy đủ 24+ màu sắc thời thượng cho mọi loại gạch đá.',
  'BASC • CHUẨN CÔNG NGHỆ ĐỨC',
  'san-pham',
  1,
  '1',
  1,
  NOW(),
  NOW()
),
(
  2,
  'CẢI TẠO & PHỤC HỒI <span>RON GẠCH CŨ</span> TRONG NGÀY',
  '',
  'Nạo vét cắt rãnh hút bụi sạch sẽ không ồn không bụi mịn. Bắn keo mới chuẩn thợ cho nhà ở, biệt thự, căn hộ và hồ bơi. Bảo hành màu sắc lên đến 10 năm.',
  'DỊCH VỤ THI CÔNG TRỌN GÓI',
  'dich-vu',
  1,
  '2',
  1,
  NOW(),
  NOW()
),
(
  3,
  'TRỌN BỘ CÔNG CỤ <span>THI CÔNG RON</span> CHUẨN THỢ',
  '',
  'Cung cấp súng trợ lực đôi hợp kim, vòi trộn xoắn tự động 24 tầng, bộ bi cầu vê ron và dao cạo sủi ron cao cấp. Chiết khấu cao cho nhà thầu & đại lý.',
  'VẬT TƯ & DỤNG CỤ CHUYÊN DỤNG',
  'san-pham',
  1,
  '3',
  1,
  NOW(),
  NOW()
)
ON DUPLICATE KEY UPDATE 
  `cbanner_images` = VALUES(`cbanner_images`),
  `cnote`          = VALUES(`cnote`),
  `ccode`          = VALUES(`ccode`),
  `ctag`           = VALUES(`ctag`),
  `nstatus`        = VALUES(`nstatus`),
  `cindex`         = VALUES(`cindex`),
  `ddate02`        = NOW();
