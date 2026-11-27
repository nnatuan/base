<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');

   $slug_prefix = (!empty($slug_prefix)) ? $slug_prefix : 'tin-tuc';
   $cat_title   = (!empty($cat_title)) ? $cat_title : 'Tin tức';
   $article_title = (!empty($obj_news['ctitle'])) ? $obj_news['ctitle'] : '';
   $article_date  = (!empty($obj_news['ddate01'])) ? date('d/m/Y', strtotime($obj_news['ddate01'])) : date('d/m/Y');
   $article_content = (!empty($obj_news['ccontent'])) ? $obj_news['ccontent'] : '';
   $img_src = '';
   if (!empty($obj_news['cimage']) && file_exists(FCPATH . 'upload/image_article/' . $obj_news['cimage'])) {
       $img_src = base_url() . 'upload/image_article/' . $obj_news['cimage'];
   } elseif (!empty($obj_news['cimage_thumb']) && file_exists(FCPATH . 'upload/image_article/' . $obj_news['cimage_thumb'])) {
       $img_src = base_url() . 'upload/image_article/' . $obj_news['cimage_thumb'];
   }
   $hotline_main = get_value_by_config(12);
   if (empty($hotline_main)) {
       $hotline_main = '0333872153';
   }
?>

<div class="container article-page-wrapper reveal">
    <!-- Breadcrumb điều hướng chuẩn SEO -->
    <nav class="breadcrumb" aria-label="Breadcrumb">
        <a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i> Trang chủ</a>
        <span class="sep">&rsaquo;</span>
        <a href="<?php echo base_url().$slug_prefix; ?>"><?php echo htmlspecialchars($cat_title); ?></a>
        <span class="sep">&rsaquo;</span>
        <span class="current"><?php echo htmlspecialchars($article_title); ?></span>
    </nav>

    <div class="article-layout">
        <!-- Nội dung bài viết chính -->
        <main class="article-main-card">
            <header class="article-header">
                <h1><?php echo htmlspecialchars($article_title); ?></h1>
                <div class="article-meta">
                    <span><i class="far fa-calendar-alt"></i> <?php echo $article_date; ?></span>
                    <span><i class="fas fa-folder-open"></i> <?php echo htmlspecialchars($cat_title); ?></span>
                </div>
            </header>

            <?php if (!empty($img_src)): ?>
                <div class="article-featured-img">
                    <img src="<?php echo $img_src; ?>" alt="<?php echo htmlspecialchars($article_title); ?>">
                </div>
            <?php endif; ?>

            <article class="article-body">
                <?php echo fix_content_images($article_content); ?>
            </article>
        </main>

        <!-- Sidebar bên phải -->
        <aside class="article-sidebar">
            <!-- Bài viết cùng chuyên mục -->
            <?php if (!empty($related_news)): ?>
                <div class="sidebar-widget">
                    <div class="sidebar-widget-title">
                        <i class="fas fa-newspaper"></i>
                        <span>Bài Viết Cùng Chuyên Mục</span>
                    </div>
                    <ul class="related-news-list">
                        <?php foreach ($related_news as $rel): 
                            if (!empty($obj_news['ccode']) && $rel['ccode'] == $obj_news['ccode']) continue;
                            $has_rel_img = false;
                            $rel_thumb = '';
                            if (!empty($rel['cimage_thumb']) && file_exists(FCPATH . 'upload/image_article/' . $rel['cimage_thumb'])) {
                                $rel_thumb = base_url() . 'upload/image_article/' . $rel['cimage_thumb'];
                                $has_rel_img = true;
                            } elseif (!empty($rel['cimage']) && file_exists(FCPATH . 'upload/image_article/' . $rel['cimage'])) {
                                $rel_thumb = base_url() . 'upload/image_article/' . $rel['cimage'];
                                $has_rel_img = true;
                            }
                            $rel_url = base_url().$slug_prefix.'/'.$rel['ccode'];
                            $rel_date = (!empty($rel['ddate01'])) ? date('d/m/Y', strtotime($rel['ddate01'])) : date('d/m/Y');
                        ?>
                            <li class="related-news-item">
                                <a href="<?php echo $rel_url; ?>" class="related-thumb">
                                    <?php if ($has_rel_img): ?>
                                        <img src="<?php echo $rel_thumb; ?>" alt="<?php echo htmlspecialchars($rel['ctitle']); ?>" loading="lazy">
                                    <?php else: ?>
                                        <i class="fa-solid fa-newspaper"></i>
                                    <?php endif; ?>
                                </a>
                                <div class="related-info">
                                    <h4>
                                        <a href="<?php echo $rel_url; ?>"><?php echo htmlspecialchars($rel['ctitle']); ?></a>
                                    </h4>
                                    <span class="related-date"><i class="far fa-clock"></i> <?php echo $rel_date; ?></span>
                                </div>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            <?php endif; ?>

            <!-- Box Liên hệ hỗ trợ kỹ thuật -->
            <div class="sidebar-cta-widget">
                <i class="fas fa-headset"></i>
                <h4>Tư Vấn & Khảo Sát Miễn Phí</h4>
                <p>Quý khách có nhu cầu tư vấn phương án thi công chà ron hoặc báo giá vật tư xin vui lòng liên hệ ngay với chúng tôi.</p>
                <a href="tel:<?php echo $hotline_main; ?>" class="btn btn-primary btn-sm sidebar-cta-btn">
                    <i class="fas fa-phone-alt"></i> Hotline: <?php echo $hotline_main; ?>
                </a>
            </div>
        </aside>
    </div>
</div>

<?php 
   $this->load->view('modules/mod_footer');
   $this->load->view('footer');
?>
