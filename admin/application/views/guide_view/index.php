<?php 
	$this->load->view('header');
	$this->load->view('header_end');
	$this->load->view('modules/mod_header'); 

	// Hàm hỗ trợ kiểm tra và hiển thị ảnh hướng dẫn linh hoạt
	if (!function_exists('render_guide_image')) {
		function render_guide_image($img_name, $alt_text, $hint_text) {
			$root_path = dirname(FCPATH) . DIRECTORY_SEPARATOR;
			$site_url = str_replace('admin/', '', base_url());

			$possible_paths = array(
				$root_path . 'guide' . DIRECTORY_SEPARATOR . $img_name,
				FCPATH . 'guide' . DIRECTORY_SEPARATOR . $img_name,
				$root_path . 'images' . DIRECTORY_SEPARATOR . 'guide' . DIRECTORY_SEPARATOR . $img_name,
				FCPATH . 'images' . DIRECTORY_SEPARATOR . 'guide' . DIRECTORY_SEPARATOR . $img_name
			);

			$found_url = '';
			foreach ($possible_paths as $p) {
				if (file_exists($p)) {
					$found_url = $site_url . 'guide/' . $img_name;
					break;
				}
			}

			echo '<div class="guide-img-container">';
			if (!empty($found_url)) {
				echo '<div class="guide-img-wrapper" title="Click để phóng to ảnh">';
				echo '  <img src="' . htmlspecialchars($found_url) . '" alt="' . htmlspecialchars($alt_text) . '" class="guide-real-img" />';
				echo '  <div class="guide-zoom-badge"><i class="fa fa-search-plus"></i> Phóng to</div>';
				echo '</div>';
				echo '<div class="guide-img-caption"><i class="fa fa-eye"></i> ' . htmlspecialchars($alt_text) . '</div>';
			} else {
				echo '<div class="guide-placeholder">';
				echo '  <i class="fa fa-camera"></i>';
				echo '  <div class="guide-placeholder-hint">' . htmlspecialchars($hint_text) . '</div>';
				echo '  <span class="guide-placeholder-path">guide/' . htmlspecialchars($img_name) . '</span>';
				echo '</div>';
			}
			echo '</div>';
		}
	}
?> 

<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="guide-wrapper">

			<!-- BANNER CHÀO MỪNG -->
			<div class="guide-hero">
				<h1><i class="fa fa-book"></i> Sổ Tay Hướng Dẫn Vận Hành Website</h1>
				<p>Tài liệu trực quan dành cho người quản trị website: Giải thích chi tiết ý nghĩa từng menu chức năng, cách cập nhật nội dung và vị trí hiển thị tương ứng trên website khách hàng xem hàng ngày.</p>
			</div>

			<!-- MỤC LỤC ĐIỀU HƯỚNG NHANH -->
			<div class="guide-toc-wrap">
				<div class="guide-toc-title"><i class="fa fa-list-ul"></i> Chọn nhanh mục cần xem hướng dẫn:</div>
				<ul class="guide-toc-list">
					<li><a href="#sec-config" class="guide-toc-btn"><i class="fa fa-cogs"></i> 1. Quản Lý Cấu Hình</a></li>
					<li><a href="#sec-user" class="guide-toc-btn"><i class="fa fa-user"></i> 2. Quản Lý Người Dùng</a></li>
					<li><a href="#sec-module" class="guide-toc-btn"><i class="fa fa-puzzle-piece"></i> 3. Quản Lý Module</a></li>
					<li><a href="#sec-slide" class="guide-toc-btn"><i class="fa fa-picture-o"></i> 4. Quản Lý Slide</a></li>
					<li><a href="#sec-article" class="guide-toc-btn"><i class="fa fa-pencil-square-o"></i> 5. Quản Lý Bài Viết</a></li>
					<li><a href="#sec-news" class="guide-toc-btn"><i class="fa fa-newspaper-o"></i> 6. Quản Lý Tin Tức & Dịch Vụ</a></li>
					<li><a href="#sec-product" class="guide-toc-btn"><i class="fa fa-sitemap"></i> 7. Quản Lý Sản Phẩm</a></li>
					<li><a href="#sec-order" class="guide-toc-btn"><i class="fa fa-shopping-cart"></i> 8. Quản Lý Đơn Hàng</a></li>
					<li><a href="#sec-schedule" class="guide-toc-btn"><i class="fa fa-calendar-check-o"></i> 9. Đặt Lịch Thi Công</a></li>
				</ul>
			</div>

			<!-- 1. QUẢN LÝ CẤU HÌNH -->
			<div class="guide-card" id="sec-config">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-cogs"></i> 1. Quản Lý Cấu Hình</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Đầu trang (Header) & Chân trang (Footer)</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Dùng để quản lý các thông tin dùng chung toàn website: Số điện thoại Hotline, Email hỗ trợ, Địa chỉ công ty, Logo thương hiệu, Biểu tượng website (Favicon) và các liên kết mạng xã hội (Facebook, Zalo).</p>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-eye"></i> Vị trí hiển thị trên website khách xem:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">A</div>
									<div class="guide-step-text"><strong>Thanh thông tin trên cùng (Top Bar):</strong> Hiển thị số Hotline (bấm vào là gọi ngay), Email tiếp nhận thông tin và Tỉnh/Thành phố văn phòng.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">B</div>
									<div class="guide-step-text"><strong>Thanh đầu trang chính (Header):</strong> Logo thương hiệu nằm ở góc bên trái trên toàn bộ các trang con.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">C</div>
									<div class="guide-step-text"><strong>Chân trang (Footer):</strong> Thông tin bản quyền, địa chỉ trụ sở, email, số điện thoại tư vấn và liên kết Zalo.</div>
								</div>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Bấm vào menu <strong>Quản Lý Cấu Hình</strong> bên cột trái.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Tìm đến dòng thông tin cần đổi (ví dụ: Hotline, Email hoặc Địa chỉ) và bấm biểu tượng cây bút để sửa.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Nhập nội dung mới và bấm <strong>Lưu</strong>. Toàn bộ website sẽ tự động cập nhật ngay lập tức.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-lightbulb-o"></i> Mẹo hay:</strong> Số Hotline nên viết liền hoặc cách nhau bằng dấu chấm (ví dụ: <code>0909 688 810</code>) để khách hàng xem trên điện thoại có thể chạm vào là gọi trực tiếp.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_1_1.png', 'Vị trí Hotline, Email và Logo ở đầu trang', 'Chụp ảnh thanh Header & Top Bar website'); ?>
							<div style="margin-top: 15px;"></div>
							<?php render_guide_image('menu_1_2.png', 'Vị trí thông tin liên hệ và bản quyền ở chân trang', 'Chụp ảnh khối Footer chân trang website'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 2. QUẢN LÝ NGƯỜI DÙNG -->
			<div class="guide-card" id="sec-user">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-user"></i> 2. Quản Lý Người Dùng</h3>
					<span class="guide-badge-fe" style="background: #f1f5f9; color: #475569; border-color: #cbd5e1;"><i class="fa fa-lock"></i> Nội bộ quản trị (Không hiển thị ra website)</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Dùng để quản lý danh sách các tài khoản nhân viên được phép đăng nhập vào hệ thống quản trị này: thêm tài khoản mới cho nhân viên trực website, đổi mật khẩu và phân quyền quản lý.</p>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Bấm <strong>Thêm mới</strong> nếu muốn cấp thêm tài khoản cho nhân viên mới.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Để đổi mật khẩu tài khoản đang dùng: Bấm nút Sửa tại dòng tên của mình -> Nhập mật khẩu mới -> Bấm <strong>Lưu</strong>.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Nếu nhân viên nghỉ việc: Bạn có thể bấm khóa tài khoản (chuyển trạng thái sang Tắt) để bảo mật website.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-shield"></i> Lưu ý bảo mật:</strong> Nên đặt mật khẩu có cả chữ hoa, chữ thường và chữ số. Tránh đặt các mật khẩu dễ đoán như 123456 hoặc ngày sinh.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_2_1.png', 'Giao diện quản lý danh sách tài khoản quản trị', 'Chụp ảnh màn hình danh sách tài khoản'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 3. QUẢN LÝ MODULE -->
			<div class="guide-card" id="sec-module">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-puzzle-piece"></i> 3. Quản Lý Module</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Các khối nội dung cố định trên Trang chủ</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Dùng để quản lý các thành phần cố định trên Trang chủ giúp tăng uy tín cho thương hiệu, bao gồm:</p>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Logo Đối tác:</strong> Dải logo các hãng keo, đối tác chạy ngang ngay dưới banner trang chủ.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Cam kết thương hiệu:</strong> 3 khối cam kết vàng (Keo chính hãng 100%, Thợ tay nghề cao, Bảo hành 10 năm).</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Con số thống kê thực tế:</strong> Khối thành tựu (99.2% Khách hài lòng, 15.000+ Công trình hoàn thiện...).</div>
								</div>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Mở <strong>Quản Lý Module</strong> -> Chọn module cần sửa (ví dụ dòng cam kết hoặc con số thống kê).</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Bấm Sửa -> Đổi tiêu đề con số (ví dụ: đổi thành 20.000+ công trình) hoặc đổi ảnh logo đối tác.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Bấm <strong>Lưu</strong> để hoàn tất.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-check-circle"></i> Nâng cấp tiện lợi:</strong> Các mục Câu hỏi thường gặp (FAQ) và Đánh giá từ khách hàng đã được chuyển sang quản lý tập trung tại mục <strong>Quản Lý Tin Tức</strong> để bạn dễ dàng soạn thảo văn bản dài và hình ảnh minh họa sinh động.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_3_1.png', 'Dải Logo đối tác và 3 khối Cam kết chất lượng trên Trang chủ', 'Chụp ảnh dải Logo đối tác và 3 Cam kết trên Trang chủ'); ?>
							<div style="margin-top: 15px;"></div>
							<?php render_guide_image('menu_3_2.png', 'Khối con số thống kê năng lực thực tế trên Trang chủ', 'Chụp ảnh khối 99.2% hài lòng & 15.000+ công trình'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 4. QUẢN LÝ SLIDE -->
			<div class="guide-card" id="sec-slide">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-picture-o"></i> 4. Quản Lý Slide (Banner tự động chạy)</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Banner lớn nhất đầu Trang chủ</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Quản lý banner chuyển động (Slide) lớn nhất ở vị trí đầu Trang chủ. Đây là nơi đập vào mắt khách hàng đầu tiên, truyền tải các thông điệp khuyến mãi, hình ảnh công trình đẹp và nút dẫn khách bấm xem chi tiết sản phẩm / dịch vụ.</p>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Bấm nút <strong>Thêm mới</strong> để tạo một banner mới.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Tải lên hình ảnh banner từ máy tính.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Nhập Tiêu đề nổi bật, mô tả ngắn và liên kết nút bấm (ví dụ dẫn về <code>san-pham</code> hoặc <code>dich-vu</code>).</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">4</div>
									<div class="guide-step-text">Nhập số thứ tự hiển thị (1, 2, 3...) và bấm <strong>Lưu</strong>.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-picture-o"></i> Kích thước ảnh chuẩn:</strong> Kích thước chuẩn là <strong>1920x600px</strong> là đẹp nhất để banner hiển thị sắc nét, chuẩn giao diện và tối ưu đẹp mắt trên cả máy tính lẫn điện thoại thông minh.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_4_1.png', 'Banner Slider chuyển động tự động ở đầu Trang chủ', 'Chụp ảnh màn hình banner trượt đầu Trang chủ'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 5. QUẢN LÝ BÀI VIẾT -->
			<div class="guide-card" id="sec-article">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-pencil-square-o"></i> 5. Quản Lý Bài Viết (Giới thiệu công ty)</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Trang "Giới thiệu" (/gioi-thieu)</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Dùng để quản lý nội dung bài viết Giới thiệu công ty. Khi khách bấm vào menu <strong>Giới thiệu</strong> trên thanh điều hướng chính, toàn bộ bài viết này sẽ xuất hiện trang trọng: giới thiệu bề dày kinh nghiệm, đội thợ tay nghề cao, trang thiết bị chuyên dụng và cam kết bảo hành.</p>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Vào <strong>Quản Lý Bài Viết</strong> -> Chọn bài viết Giới thiệu -> Bấm nút Sửa.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Soạn thảo văn bản trong khung soạn thảo: Có thể in đậm, gạch đầu dòng, chèn thêm ảnh chụp đội thợ thực tế.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Bấm <strong>Lưu</strong>. Nội dung trên trang <code>/gioi-thieu</code> sẽ được làm mới ngay tức thì.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-heart"></i> Mẹo viết bài:</strong> Hãy chia bài viết thành các đoạn ngắn có tiêu đề phụ rõ ràng và chèn 2-3 hình ảnh thực tế để khách hàng cảm nhận được sự chuyên nghiệp và an tâm đặt dịch vụ.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_5_1.png', 'Toàn bộ nội dung hiển thị trên trang Giới thiệu', 'Chụp ảnh giao diện trang /gioi-thieu'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 6. QUẢN LÝ TIN TỨC & DỊCH VỤ -->
			<div class="guide-card" id="sec-news">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-newspaper-o"></i> 6. Quản Lý Tin Tức & Dịch Vụ</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Trang Dịch vụ, Tin tức & Trang chủ</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Đây là khu vực đăng bài linh hoạt và quan trọng nhất website, được phân theo các chuyên mục rõ ràng:</p>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Dịch vụ thi công:</strong> Các gói dịch vụ (Chà ron hồ bơi, chống thấm toilet, thay ron cũ ố mốc...) hiển thị tại trang <code>/dich-vu</code>.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Tin tức & Kinh nghiệm:</strong> Cẩm nang chia sẻ bí quyết chọn keo, mẹo vệ sinh nền gạch hiển thị tại trang <code>/tin-tuc</code>.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Hình ảnh & Video thực tế:</strong> Khối công trình thực tế ngoài Trang chủ.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Khách hàng đánh giá:</strong> Nhận xét, cảm nhận của khách ngoài Trang chủ.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Câu hỏi thường gặp:</strong> Các thắc mắc thường gặp được giải đáp ngắn gọn ngoài Trang chủ.</div>
								</div>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Bấm nút <strong>Thêm mới</strong> -> Nhập Tiêu đề bài viết và mô tả tóm tắt.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text"><strong>Chọn đúng Chuyên mục:</strong> Rất quan trọng! Chọn "Dịch vụ" thì bài sẽ lên trang Dịch vụ, chọn "Tin tức" bài sẽ lên trang Tin tức, chọn "Đánh giá" hoặc "Câu hỏi" bài sẽ ra đúng khối ở Trang chủ.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Tải ảnh đại diện và soạn thảo nội dung -> Bấm <strong>Lưu</strong>.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-magic"></i> Tự động hiển thị icon:</strong> Nếu bài viết chưa kịp tải ảnh, hệ thống đã cài đặt sẵn biểu tượng tờ báo chuyên nghiệp, đảm bảo trang web luôn đẹp mắt và không bao giờ bị vỡ khung hình.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_6_1.png', 'Danh sách các gói dịch vụ trên trang Dịch vụ và Tin tức', 'Chụp ảnh lưới bài viết trên trang /dich-vu hoặc /tin-tuc'); ?>
							<div style="margin-top: 15px;"></div>
							<?php render_guide_image('menu_6_2.png', 'Khối Đánh giá khách hàng và Câu hỏi thường gặp ở Trang chủ', 'Chụp ảnh khối Đánh giá khách hàng & Hỏi đáp trên Trang chủ'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 7. QUẢN LÝ SẢN PHẨM -->
			<div class="guide-card" id="sec-product">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-sitemap"></i> 7. Quản Lý Sản Phẩm</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Trang Sản phẩm, Chi tiết sản phẩm & Trang chủ</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Gồm 2 mục con liên kết chặt chẽ:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text"><strong>Nhóm Sản Phẩm:</strong> Dùng để phân loại danh mục (Keo chà ron Epoxy, Dụng cụ thi công, Súng bắn keo...). Danh mục này xuất hiện ở cột dọc bên trái của trang <code>/san-pham</code> giúp khách lọc hàng nhanh.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text"><strong>Sản Phẩm:</strong> Đăng bán từng sản phẩm cụ thể. Hiển thị ở khối "Sản Phẩm Nổi Bật" ngoài Trang chủ, danh sách trang <code>/san-pham</code> và trang Chi tiết sản phẩm với nút <em>"Thêm vào giỏ"</em> và <em>"Mua ngay"</em>.</div>
								</div>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước thao tác chuẩn:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">Bước 1</div>
									<div class="guide-step-text">Tạo <strong>Nhóm sản phẩm</strong> trước (nếu nhóm chưa có sẵn trong danh sách).</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">Bước 2</div>
									<div class="guide-step-text">Vào <strong>Sản Phẩm</strong> -> Bấm Thêm mới -> Chọn Nhóm sản phẩm tương ứng.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">Bước 3</div>
									<div class="guide-step-text">Điền Tên sản phẩm, Giá bán hiện tại, Giá cũ trước khuyến mãi (nếu có để tạo nhãn giảm giá hấp dẫn), Tóm tắt công dụng.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">Bước 4</div>
									<div class="guide-step-text">Tải ảnh chụp sản phẩm (ưu tiên ảnh vuông tỷ lệ 1:1 rõ nét) -> Bấm <strong>Lưu</strong>.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-gift"></i> Tối ưu mua hàng:</strong> Khi khách bấm vào khung sản phẩm bất kỳ, hệ thống sẽ tự động dẫn vào trang Chi tiết sản phẩm có chức năng chọn số lượng và đặt hàng COD nhanh chóng.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_7_1.png', 'Cột danh mục Nhóm sản phẩm bên trái trang Sản phẩm', 'Chụp ảnh cột danh mục bên trái trang /san-pham'); ?>
							<div style="margin-top: 15px;"></div>
							<?php render_guide_image('menu_7_2.png', 'Khối sản phẩm trên Trang chủ và trang Chi tiết sản phẩm', 'Chụp ảnh thẻ sản phẩm có nút Thêm vào giỏ và Mua ngay'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 8. QUẢN LÝ ĐƠN HÀNG -->
			<div class="guide-card" id="sec-order">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-shopping-cart"></i> 8. Quản Lý Đơn Hàng</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Tiếp nhận từ Giỏ hàng & Nút Mua ngay</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Khi khách hàng xem sản phẩm ngoài website và bấm nút <strong>"Mua ngay"</strong> hoặc mở <strong>"Giỏ hàng"</strong> điền thông tin đặt mua (Họ tên, Số điện thoại, Địa chỉ giao hàng), toàn bộ thông tin đơn hàng này sẽ ngay lập tức được gửi vào mục này để nhân viên bán hàng xử lý.</p>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước xử lý đơn hàng hàng ngày:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Mở mục <strong>Quản Lý Đơn Hàng</strong> để kiểm tra các đơn hàng mới nhất (được xếp theo thứ tự ngày giờ mới nhất ở trên cùng).</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Bấm vào xem chi tiết đơn để lấy Số điện thoại gọi điện cho khách xác nhận số lượng keo/dụng cụ và địa chỉ giao hàng.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Sau khi gửi hàng qua bưu điện/đơn vị vận chuyển, cập nhật trạng thái đơn (Đang giao hàng -> Đã hoàn thành) để theo dõi doanh thu chính xác.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-bell"></i> Lời khuyên:</strong> Nên kiểm tra danh sách đơn hàng 2 đến 3 lần mỗi ngày để gọi xác nhận sớm, tạo ấn tượng phục vụ chu đáo và chuyên nghiệp với người mua.
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_8_1.png', 'Cửa sổ Giỏ hàng đặt mua COD trên website và tiếp nhận đơn', 'Chụp ảnh popup giỏ hàng COD ngoài website và danh sách đơn'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

			<!-- 9. ĐẶT LỊCH THI CÔNG -->
			<div class="guide-card" id="sec-schedule">
				<div class="guide-card-header">
					<h3 class="guide-card-title"><i class="fa fa-calendar-check-o"></i> 9. Đặt Lịch Thi Công</h3>
					<span class="guide-badge-fe"><i class="fa fa-globe"></i> Xuất hiện: Nút Đặt Lịch Khảo Sát & Form tư vấn cuối trang</span>
				</div>
				<div class="guide-card-body">
					<div class="guide-grid-2">
						<div>
							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-info-circle"></i> Mục này dùng để làm gì?</div>
								<p class="guide-step-text">Dùng để tiếp nhận và quản lý toàn bộ yêu cầu của khách hàng cần dịch vụ chà ron sàn gạch tại công trình. Khách đăng ký từ 2 vị trí nổi bật trên website:</p>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Nút xanh "Đặt Lịch Khảo Sát":</strong> Nằm trên thanh menu đầu trang web.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">•</div>
									<div class="guide-step-text"><strong>Form "Đăng Ký Tư Vấn & Khảo Sát Miễn Phí":</strong> Nằm ở cuối Trang chủ và trang Dịch vụ thi công.</div>
								</div>
							</div>

							<div class="guide-feature-box">
								<div class="guide-feature-title"><i class="fa fa-pencil"></i> Các bước xử lý lịch khảo sát:</div>
								<div class="guide-step-row">
									<div class="guide-step-num">1</div>
									<div class="guide-step-text">Vào <strong>Đặt Lịch Thi Công</strong> để xem danh sách khách hàng mới gửi yêu cầu.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">2</div>
									<div class="guide-step-text">Xem chi tiết: Tên khách hàng, Số điện thoại, Dịch vụ cần làm (chà ron hồ bơi, phục hồi ron cũ...), Diện tích công trình và Ngày giờ khách mong muốn khảo sát.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">3</div>
									<div class="guide-step-text">Nhân viên kỹ thuật gọi điện chốt lịch hẹn và phân công thợ đến tận nhà khảo sát báo giá.</div>
								</div>
								<div class="guide-step-row">
									<div class="guide-step-num">4</div>
									<div class="guide-step-text">Cập nhật trạng thái (Chờ liên hệ -> Đã xác nhận -> Đã khảo sát thành công) để quản lý tiến độ khoa học.</div>
								</div>
							</div>

							<div class="guide-tip-box">
								<strong><i class="fa fa-thumbs-up"></i> Hiệu quả kinh doanh:</strong> Khảo sát thực tế nhanh chóng trong vòng 30 - 60 phút sau khi khách đăng ký là yếu tố quyết định giúp bạn chốt hợp đồng thi công thành công cao nhất!
							</div>
						</div>

						<div>
							<?php render_guide_image('menu_9_1.png', 'Nút Đặt Lịch Khảo Sát trên menu và Form đăng ký khảo sát cuối trang', 'Chụp ảnh nút Đặt Lịch Khảo Sát và Form đăng ký tư vấn cuối trang'); ?>
						</div>
					</div>
					<a href="#" class="guide-back-to-top"><i class="fa fa-arrow-up"></i> Về đầu trang</a>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- /page content --> 

<!-- Modal Zoom Ảnh Hướng Dẫn (Lightbox) -->
<div id="guideZoomModal" class="guide-zoom-modal" style="display:none;">
	<div class="guide-zoom-backdrop"></div>
	<div class="guide-zoom-content">
		<button type="button" class="guide-zoom-close" title="Đóng (ESC)"><i class="fa fa-times"></i></button>
		<img id="guideZoomImg" src="" alt="Ảnh phóng to" class="guide-zoom-img" />
		<div id="guideZoomCaption" class="guide-zoom-title"></div>
	</div>
</div>

<?php
	$this->load->view('modules/mod_footer');
?>
<script>
$(document).ready(function() {
	// Cuộn mượt khi click các nút mục lục
	$('.guide-toc-btn, .guide-back-to-top').on('click', function(e) {
		var target = $(this).attr('href');
		if (target && target.indexOf('#') !== -1) {
			e.preventDefault();
			var targetId = (target === '#' || target === '') ? 'body' : target;
			var $targetElem = $(targetId);
			if ($targetElem.length) {
				var offsetTop = (target === '#' || target === '') ? 0 : ($targetElem.offset().top - 70);
				$('html, body').stop().animate({
					scrollTop: Math.max(0, offsetTop)
				}, 600, 'swing');
				if (history.pushState && target !== '#' && target !== '') {
					history.pushState(null, null, target);
				}
			}
		}
	});

	// Mở popup phóng to ảnh khi click vào ảnh hoặc badge zoom
	$(document).on('click', '.guide-img-wrapper', function() {
		var $img = $(this).find('img.guide-real-img');
		var src = $img.attr('src');
		var alt = $img.attr('alt') || '';
		if (src) {
			$('#guideZoomImg').attr('src', src);
			$('#guideZoomCaption').text(alt);
			$('#guideZoomModal').fadeIn(200);
			$('body').addClass('guide-modal-open');
		}
	});

	// Đóng popup zoom ảnh
	function closeGuideZoom() {
		$('#guideZoomModal').fadeOut(200, function() {
			$('#guideZoomImg').attr('src', '');
		});
		$('body').removeClass('guide-modal-open');
	}

	$(document).on('click', '.guide-zoom-close, .guide-zoom-backdrop', function() {
		closeGuideZoom();
	});

	// Đóng popup khi nhấn phím ESC
	$(document).on('keydown', function(e) {
		if (e.keyCode === 27 && $('#guideZoomModal').is(':visible')) {
			closeGuideZoom();
		}
	});
});
</script>
<?php
	$this->load->view('footer');
?>
