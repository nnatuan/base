# Nhật ký xử lý: Giỏ hàng popup và Quản lý đơn hàng CMS

### Yêu cầu
- Khi click giỏ hàng trên frontend (`#basc-cart-btn`), mở Popup/Modal hiển thị danh sách sản phẩm thay vì cuộn trang.
- Cho phép thêm, xóa, sửa số lượng sản phẩm ngay trên popup và điền form đặt hàng (COD).
- Lưu đơn hàng và chi tiết vào 2 bảng `base_torder` và `base_torder_detail` (dựa trên schema `chat_history/sql/order.sql`).
- Cập nhật trang quản trị CMS admin (`do_order_listview`, `do_order`, sidebar menu).

### Giải pháp & Thay đổi
- `chat_history/sql/order.sql`: Bổ sung cấu trúc & dữ liệu bảng `base_torder_status` để đầy đủ trạng thái đơn hàng.
- `application/controllers/Cart.php`: Tạo mới Controller xử lý AJAX `cart/checkout`, lưu thông tin khách vào `base_torder` và chi tiết sản phẩm vào `base_torder_detail`.
- `application/config/routes.php`: Thêm route `$route['cart/checkout'] = 'cart/checkout'`.
- `application/views/home.php`: Thêm `data-id`, `data-price`, `data-price-str`, `data-icon` vào các nút `.js-add-cart`.
- `application/views/modules/mod_footer.php`:
  - Thêm modal popup `#basc-cart-modal`.
  - Viết JS quản lý giỏ hàng (`localStorage`: `basc_cart`), thêm/sửa/xóa realtime, tính tổng tiền, gửi AJAX đặt hàng thành công và reset giỏ.
- `css/style.css`: Thêm bộ style hoàn chỉnh cho modal giỏ hàng, bảng sản phẩm, bộ tăng giảm số lượng và form đặt hàng.
- `admin/application/controllers/do_order.php`: Loại bỏ đoạn mã độc eval/strrev ở đầu file (dòng 1-7).
- `admin/application/helpers/ap_view_helper.php`: Chuyển query `Vorder()` sang `LEFT JOIN base_torder_status` và thêm `a.ntotal as ntotal` để hiển thị đầy đủ đơn hàng.
- `admin/application/views/modules/mod_header.php`: Thêm mục menu "Quản Lý Đơn Hàng" (`do_order_listview`) vào sidebar CMS.
- `admin/application/views/order_view/order_listview.php`: Viết lại giao diện listview đơn hàng đẹp mắt, hiển thị cột Mã đơn, Khách hàng, SĐT, Địa chỉ, Tổng tiền, Trạng thái (badge màu) và phân trang chuẩn.
- Bỏ liên kết các bảng phụ (`base_tship_type`, `base_tward`, `base_tdistrict`, `base_tprovince`, `base_ttrip`):
  - `admin/application/helpers/ap_object_helper.php`: Chuyển `Obj_get_ship_type_list()`, `get_ward_name()`, `get_district_name()`, `get_province_name()` trả về rỗng để tránh query bảng phụ không tồn tại.
  - `admin/application/views/order_view/order.php` và `order_tmp.php`: Viết lại giao diện chi tiết đơn hàng tinh gọn, lấy trực tiếp thông tin từ `base_torder` và `base_torder_detail`, hiển thị địa chỉ trực tiếp, loại bỏ hoàn toàn phần hành trình Viettelpost.
  - `admin/application/controllers/do_order.php`: Tinh giản cập nhật đơn hàng, tránh lỗi gửi email khi khách không nhập email; bổ sung hàm `f_delete($nid)` xóa đơn hàng và chi tiết.
  - `admin/application/controllers/do_order_listview.php`: Bổ sung hàm `f_delete($nid)`.
  - `admin/application/views/order_view/order_listview.php`: Cập nhật cột Thao tác thành 2 nút ngang hàng (bút chì Sửa màu xanh và thùng rác Xóa màu đỏ kèm xác nhận confirm) đồng bộ với `do_schedule_listview`.
- `admin/application/views/schedule_view/schedule_listview.php`: Bổ sung `white-space:nowrap;` và bọc 2 nút Sửa / Xóa trong `display:inline-flex;gap:6px;` để cố định luôn nằm trên cùng 1 hàng.
- `application/views/modules/mod_header.php` & `css/style.css`: Thay thế icon user tròn trên navbar header thành nút "Đặt Lịch Khảo Sát" (`.btn-basc-schedule`) nổi bật với icon lịch, bo tròn pill và liên kết trực tiếp tới form `#final-cta`.
- `application/views/modules/mod_footer.php` & `css/style.css`: Thêm nút cuộn lên đầu trang (`#basc-scroll-top`) với khoảng cách `margin-bottom: 22px` tách biệt thoáng đãng khỏi cụm nút liên hệ và hiệu ứng sóng Zalo bên dưới.
- Sửa lỗi Flmngr 404 (`Unexpected HTTP code received: 404`):
  - `rgn_editor/source_editor/config.js` & `admin/application/views/modules/mod_footer.php`: Cấu hình động URL `urlFileManager` và `urlFiles` theo `base_url()` hiện hành của website, tránh bị trỏ nhầm về root domain khi web chạy trong subfolder (như `/base/`).
  - `flmngr/flmngr.php`: Chuẩn hóa đường dẫn lưu trữ `dirFiles` bằng đường dẫn tuyệt đối `__DIR__ . '/../fileman/Uploads'` và tự động tạo thư mục upload nếu chưa có.

### Trạng thái / Lưu ý
- **Hoàn thành 100%**: Popup giỏ hàng, đặt hàng lưu vào DB và CMS admin quản lý đơn hàng hoạt động đồng bộ.
- **Lưu ý CSDL**: Người dùng chạy file [order.sql](file:///c:/xampp/htdocs/base/chat_history/sql/order.sql) nếu cơ sở dữ liệu chưa có bảng `base_torder_status`, `base_torder` hoặc `base_torder_detail`.
