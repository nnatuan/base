-- ========================================================
-- Tắt các module trong base_tmodule đã được chuyển sang base_tnews
-- Các module này hiện được quản lý tại Quản lý Tin tức (do_news_listview)
-- bao gồm:
-- 1. Câu hỏi thường gặp (ccode = 'faq', nid 22..26 -> tnews nid_cat_news = 5)
-- 2. Đánh giá khách hàng (ccode = 'testimonial', nid 7..9 -> tnews nid_cat_news = 4)
-- 3. Hình ảnh / Video thực tế (ccode = 'ugc_gallery', nid 13..17 -> tnews nid_cat_news = 3)
-- Ngày tạo: 2026-11-23
-- ========================================================

UPDATE `base_tmodule` 
SET `nstatus` = 0 
WHERE `ccode` IN ('faq', 'testimonial', 'ugc_gallery');
