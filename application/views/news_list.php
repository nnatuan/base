<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');

   $slug_prefix = (!empty($slug_prefix)) ? $slug_prefix : (($nid_cat == 2) ? 'dich-vu' : 'tin-tuc');
   $page_title  = (!empty($page_title)) ? $page_title : (($nid_cat == 2) ? 'Dịch vụ thi công' : 'Tin tức');
   $cur_page    = (!empty($cur_page) && $cur_page > 0) ? (int)$cur_page : 1;
   $total_page  = (!empty($total_page)) ? (int)$total_page : 1;
   $total_row   = (isset($total_row)) ? (int)$total_row : 0;
   $obj_news_list = (!empty($obj_news_list)) ? $obj_news_list : array();
?>

<div class="container news-page-wrapper reveal">
    <!-- Breadcrumb -->
    <nav class="breadcrumb" aria-label="Breadcrumb">
        <a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i> Trang chủ</a>
        <span class="sep">&rsaquo;</span>
        <span class="current"><?php echo htmlspecialchars($page_title); ?></span>
    </nav>

    <!-- Header Trang -->
    <div class="news-page-header">
        <div class="header-top">
            <h1><?php echo htmlspecialchars($page_title); ?></h1>
            <div class="news-count-tag">
                Tổng số <strong><?php echo $total_row; ?></strong> bài viết
            </div>
        </div>
        <div class="news-desc">
            <?php if ($nid_cat == 2): ?>
                Tổng hợp các dịch vụ thi công chà ron gạch cao cấp, chống thấm, xử lý ron cũ ố mốc và bảo vệ thẩm mỹ công trình dài lâu.
            <?php else: ?>
                Cập nhật những tin tức mới nhất về hoạt động, kinh nghiệm và cẩm nang thi công chà ron gạch chuyên nghiệp từ BASE.
            <?php endif; ?>
        </div>
    </div>

    <!-- Lưới bài viết -->
    <?php if (!empty($obj_news_list)): ?>
        <div class="news-grid-wrapper">
            <?php 
            foreach ($obj_news_list as $data): 
                $has_img = false;
                $img_src = '';
                if (!empty($data['cimage_thumb']) && file_exists(FCPATH . 'upload/image_article/' . $data['cimage_thumb'])) {
                    $img_src = base_url() . 'upload/image_article/' . $data['cimage_thumb'];
                    $has_img = true;
                } elseif (!empty($data['cimage']) && file_exists(FCPATH . 'upload/image_article/' . $data['cimage'])) {
                    $img_src = base_url() . 'upload/image_article/' . $data['cimage'];
                    $has_img = true;
                }
                
                $item_url = base_url().$slug_prefix.'/'.$data['ccode'];
                $item_date = (!empty($data['ddate01'])) ? date('d/m/Y', strtotime($data['ddate01'])) : date('d/m/Y');
            ?>
                <article class="news-card reveal">
                    <div class="news-thumb">
                        <a href="<?php echo $item_url; ?>" class="news-thumb-link">
                            <?php if ($has_img): ?>
                                <img src="<?php echo $img_src; ?>" alt="<?php echo htmlspecialchars($data['ctitle']); ?>" loading="lazy">
                            <?php else: ?>
                                <i class="fa-solid fa-newspaper"></i>
                            <?php endif; ?>
                        </a>
                    </div>
                    <div class="news-content">
                        <div class="news-meta">
                            <span><i class="far fa-calendar-alt"></i> <?php echo $item_date; ?></span>
                            <span><i class="fas fa-tag"></i> <?php echo htmlspecialchars($page_title); ?></span>
                        </div>
                        <h3 class="news-title">
                            <a href="<?php echo $item_url; ?>" title="<?php echo htmlspecialchars($data['ctitle']); ?>">
                                <?php echo htmlspecialchars($data['ctitle']); ?>
                            </a>
                        </h3>
                        <?php if (!empty($data['cshort_content'])): ?>
                            <p class="news-excerpt">
                                <?php echo strip_tags($data['cshort_content']); ?>
                            </p>
                        <?php endif; ?>
                        <div class="news-footer">
                            <a href="<?php echo $item_url; ?>" class="read-more-link">
                                Xem chi tiết <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </article>
            <?php 
            endforeach; 
            ?>
        </div>

        <!-- Phân Trang -->
        <?php if ($total_page > 1): ?>
            <div class="pagination-wrapper">
                <?php if ($cur_page > 1): ?>
                    <?php $prev_url = ($cur_page - 1 == 1) ? base_url().$slug_prefix : base_url().$slug_prefix.'/trang-'.($cur_page - 1); ?>
                    <a href="<?php echo $prev_url; ?>">&laquo;</a>
                <?php endif; ?>

                <?php for ($i = 1; $i <= $total_page; $i++): ?>
                    <?php if ($i == $cur_page): ?>
                        <span class="active"><?php echo $i; ?></span>
                    <?php else: ?>
                        <?php $page_url = ($i == 1) ? base_url().$slug_prefix : base_url().$slug_prefix.'/trang-'.$i; ?>
                        <a href="<?php echo $page_url; ?>"><?php echo $i; ?></a>
                    <?php endif; ?>
                <?php endfor; ?>

                <?php if ($cur_page < $total_page): ?>
                    <a href="<?php echo base_url().$slug_prefix.'/trang-'.($cur_page + 1); ?>">&raquo;</a>
                <?php endif; ?>
            </div>
        <?php endif; ?>

    <?php else: ?>
        <div class="empty-state">
            <i class="fas fa-newspaper basc-empty-icon"></i>
            <h3>Chưa có bài viết nào trong chuyên mục này</h3>
            <p>Nội dung đang được cập nhật, vui lòng quay lại sau.</p>
            <a href="<?php echo base_url(); ?>" class="btn btn-primary btn-sm">Về trang chủ</a>
        </div>
    <?php endif; ?>
</div>

<?php 
   $this->load->view('modules/mod_footer');
   $this->load->view('footer');
?>
