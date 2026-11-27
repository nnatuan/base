<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');

   $title = (!empty($obj_content['ctitle'])) ? $obj_content['ctitle'] : 'Giới thiệu về chúng tôi';
   $short_content = (!empty($obj_content['cshort_content'])) ? $obj_content['cshort_content'] : '';
   $content = (!empty($obj_content['ccontent'])) ? $obj_content['ccontent'] : '';
   $hotline_main = get_value_by_config(12);
   if (empty($hotline_main)) {
       $hotline_main = '0333872153';
   }
?>

<div class="container about-page-wrapper reveal">
    <!-- Breadcrumb -->
    <div class="breadcrumb">
        <a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i> Trang chủ</a>
        <span class="sep">&rsaquo;</span>
        <span class="current"><?php echo htmlspecialchars($title); ?></span>
    </div>

    <!-- Khối Nội Dung Giới Thiệu -->
    <article class="about-card">
        <header class="about-header">
            <span class="sub-badge"><i class="fas fa-certificate"></i> Thương hiệu & Giải pháp</span>
            <h1><?php echo htmlspecialchars($title); ?></h1>
        </header>

        <?php if (!empty($short_content)): ?>
            <div class="about-lead-box">
                <?php echo nl2br(htmlspecialchars($short_content)); ?>
            </div>
        <?php endif; ?>

        <!-- Nội dung chi tiết lấy động từ bảng base_tarticle (nid = 1) -->
        <div class="about-article-body">
            <?php 
                if (!empty($content)) {
                    echo $content;
                } else {
                    echo '<p class="empty-state">Đang cập nhật nội dung bài viết...</p>';
                }
            ?>
        </div>

        <!-- Khối Liên Hệ & Khảo Sát -->
        <div class="about-cta-card">
            <h3>Đồng Hành Cùng BASE Kiến Tạo Không Gian Sang Trọng</h3>
            <p>Liên hệ ngay hôm nay để nhận tư vấn bảng màu keo ron Epoxy cao cấp và đặt lịch khảo sát công trình hoàn toàn miễn phí!</p>
            <div class="cta-btns">
                <a href="tel:<?php echo $hotline_main; ?>" class="btn-cta-white">
                    <i class="fas fa-phone-alt"></i> Hotline: <?php echo $hotline_main; ?>
                </a>
                <a href="<?php echo base_url(); ?>san-pham" class="btn-cta-outline">
                    <i class="fas fa-cubes"></i> Xem Vật Tư Keo Ron
                </a>
            </div>
        </div>
    </article>
</div>

<?php 
   $this->load->view('modules/mod_footer');
   $this->load->view('footer');
?>
