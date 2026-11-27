<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');		
?>

<div class="container contact-page-wrapper reveal">
    <!-- Breadcrumb -->
    <div class="breadcrumb">
        <a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i> Trang chủ</a>
        <span class="sep">&rsaquo;</span>
        <span class="current">Liên hệ</span>
    </div>

    <!-- Header Trang -->
    <div class="contact-header-card">
        <span class="sub-badge"><i class="fas fa-headset"></i> Liên Hệ & Tư Vấn Khảo Sát</span>
        <h1>Liên Hệ Với BASE - Chuyên Vật Tư & Thi Công Ron Gạch</h1>
        <p>Đội ngũ chuyên gia kỹ thuật BASE luôn sẵn sàng giải đáp mọi thắc mắc, tư vấn bảng màu keo ron phù hợp và khảo sát mặt bằng tận nơi hoàn toàn miễn phí.</p>
    </div>

    <!-- 3 Thẻ Thông Tin Liên Hệ Nổi Bật -->
    <div class="contact-info-grid">
        <!-- Showroom / Địa chỉ -->
        <div class="contact-info-box">
            <div class="contact-info-icon">
                <i class="fas fa-map-marked-alt"></i>
            </div>
            <h3>Kho Vật Tư & Trụ Sở</h3>
            <p><?php echo get_value_by_config(20); ?></p>
        </div>

        <!-- Hotline -->
        <div class="contact-info-box">
            <div class="contact-info-icon">
                <i class="fas fa-phone-volume"></i>
            </div>
            <h3>Hotline & Đặt Lịch</h3>
            <p>
                <a href="tel:<?php echo get_value_by_config(12); ?>"><?php echo get_value_by_config(12); ?></a>
            </p>
            <p class="contact-sub-text">Tư vấn kỹ thuật 24/7</p>
        </div>

        <!-- Email -->
        <div class="contact-info-box">
            <div class="contact-info-icon">
                <i class="fas fa-envelope-open-text"></i>
            </div>
            <h3>Email Tiếp Nhận</h3>
            <p>
                <a href="mailto:<?php echo get_value_by_config(1); ?>"><?php echo get_value_by_config(1); ?></a>
            </p>
            <p class="contact-sub-text">Phản hồi trong 30 phút</p>
        </div>
    </div>

    <!-- Bố Cục 2 Cột: Form Gửi Tin Nhắn + Cam Kết Dịch Vụ -->
    <div class="contact-main-grid">
        <!-- Cột Trái: Form Liên Hệ -->
        <div class="contact-form-card">
            <h2>Gửi Yêu Cầu Tư Vấn & Khảo Sát</h2>
            <p class="form-subtitle">Điền thông tin bên dưới, chuyên viên của BASE sẽ liên hệ tư vấn trực tiếp cho Quý khách.</p>

            <form action="<?php echo base_url(); ?>lien-he" method="post">
                <div class="form-group-row">
                    <div class="form-group">
                        <label for="cname">Họ và tên <span class="req">*</span></label>
                        <input type="text" id="cname" name="cname" class="form-control-basc" placeholder="Ví dụ: Nguyễn Văn A" required value="<?php echo htmlspecialchars($cname); ?>">
                    </div>
                    <div class="form-group">
                        <label for="cphone">Số điện thoại <span class="req">*</span></label>
                        <input type="tel" id="cphone" name="cphone" class="form-control-basc" placeholder="Ví dụ: 0912 345 678" required value="<?php echo htmlspecialchars($cphone); ?>">
                    </div>
                </div>

                <div class="form-group">
                    <label for="cemail">Địa chỉ Email</label>
                    <input type="email" id="cemail" name="cemail" class="form-control-basc" placeholder="Ví dụ: hotro@gmail.com" value="<?php echo htmlspecialchars($cemail); ?>">
                </div>

                <div class="form-group">
                    <label for="ccontent">Nhu cầu hoặc địa chỉ cần khảo sát <span class="req">*</span></label>
                    <textarea id="ccontent" name="ccontent" class="form-control-basc" rows="4" placeholder="Mô tả nhu cầu của bạn (Ví dụ: Khảo sát chà ron nhà mới 120m2, phục hồi ron cũ nhà vệ sinh bị ẩm mốc...)" required><?php echo htmlspecialchars($ccontent); ?></textarea>
                </div>

                <button type="submit" name="btn_submit" value="1" class="btn-submit-contact">
                    <i class="fas fa-paper-plane"></i> Gửi Yêu Cầu Ngay
                </button>
            </form>
        </div>

        <!-- Cột Phải: Cam Kết Chất Lượng & Thời Gian Làm Việc -->
        <aside class="contact-aside-card">
            <div>
                <h3><i class="fas fa-shield-alt"></i> Cam Kết Từ Thương Hiệu BASE</h3>
                <ul class="benefit-list">
                    <li>
                        <i class="fas fa-check-circle"></i>
                        <span><strong>Keo Ron Epoxy Đức:</strong> 100% chính hãng, chống thấm tuyệt đối, kháng hóa chất tẩy rửa.</span>
                    </li>
                    <li>
                        <i class="fas fa-check-circle"></i>
                        <span><strong>Thi Công Không Bụi:</strong> Sử dụng máy cắt nạo vét mạch kết hợp máy hút bụi công suất lớn.</span>
                    </li>
                    <li>
                        <i class="fas fa-check-circle"></i>
                        <span><strong>Độ Bền Vượt Trội:</strong> Bảo hành màu sắc và kết cấu liên kết đường ron lên đến 10 năm.</span>
                    </li>
                    <li>
                        <i class="fas fa-check-circle"></i>
                        <span><strong>Khảo Sát Miễn Phí:</strong> Kỹ thuật viên mang bảng màu mẫu đến tận công trình tư vấn trực tiếp.</span>
                    </li>
                </ul>
            </div>

            <div class="working-hours-box">
                <h4><i class="fas fa-clock"></i> Giờ Làm Việc & Tiếp Nhận</h4>
                <p><strong>08:00 - 21:00</strong> (Tất cả các ngày trong tuần, kể cả Thứ 7 và Chủ Nhật)</p>
                <p class="contact-hotline-note">Hotline tư vấn khẩn cấp: <strong><?php echo get_value_by_config(12); ?></strong></p>
            </div>
        </aside>
    </div>
</div>

<?php 
   $this->load->view('modules/mod_footer');
   $this->load->view('footer');
?>
