<?php 
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');

   // Thiết lập biến phân trang và lấy danh sách sản phẩm
   $ncurr_page = (!empty($ncurr_page) && $ncurr_page > 0) ? (int)$ncurr_page : 1;
   $nrow_per_page = (!empty($nrow_per_page)) ? (int)$nrow_per_page : 24;

   // Lấy dữ liệu sản phẩm và danh mục
   $list_products = (!empty($list_products)) ? $list_products : get_product_page_all($nrow_per_page, $ncurr_page);
   $list_cats = (!empty($list_cats)) ? $list_cats : get_cat_product_all();
   
   $total_row = (isset($total_row) && $total_row > 0) ? (int)$total_row : get_count_product();
   $ntotal_page = (isset($ntotal_page) && $ntotal_page > 0) ? (int)$ntotal_page : (int)ceil($total_row / $nrow_per_page);
?>

<div class="container reveal">
    <!-- Breadcrumb -->
    <div class="breadcrumb">
        <a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i> Trang chủ</a>
        <span class="sep">&rsaquo;</span>
        <span class="current">Sản phẩm</span>
    </div>

    <!-- Layout 2 Cột: Danh mục bên trái, Sản phẩm bên phải -->
    <div class="products-page-container">
        
        <!-- Cột Trái: Menu Danh Mục -->
        <?php 
        $this->load->view('modules/mod_product_sidebar', [
            'active_type' => 'all',
            'active_code' => ''
        ]); 
        ?>

        <!-- Cột Phải: Danh Sách Sản Phẩm & Phân Trang -->
        <main class="products-main-content">
            <!-- Header Trang Sản Phẩm -->
            <div class="products-page-header">
                <div>
                    <h1>Tất Cả Sản Phẩm</h1>
                </div>
                <div class="products-count-tag">
                    Hiển thị <strong><?php echo count($list_products); ?></strong> trên tổng số <strong><?php echo $total_row; ?></strong> sản phẩm
                </div>
            </div>

            <!-- Lưới Sản Phẩm -->
            <?php if (!empty($list_products)): ?>
                <div class="products-grid-wrapper">
                    <?php 
                    foreach ($list_products as $item): 
                        $has_img = false;
                        $img_src = '';
                        if (!empty($item['cimage_resize']) && file_exists(FCPATH . 'upload/images_product/resize_images/' . $item['cimage_resize'])) {
                            $img_src = base_url() . 'upload/images_product/resize_images/' . $item['cimage_resize'];
                            $has_img = true;
                        } elseif (!empty($item['cimage']) && file_exists(FCPATH . 'upload/images_product/full_images/' . $item['cimage'])) {
                            $img_src = base_url() . 'upload/images_product/full_images/' . $item['cimage'];
                            $has_img = true;
                        }
                        $detail_url = base_url().'san-pham/'.$item['ccode'];

                        $badge = !empty($item['ctag']) ? $item['ctag'] : 'Chính hãng';
                        $rating_val = !empty($item['cloai_tin']) ? $item['cloai_tin'] : '4.9 (250)';
                        $price_sale = isset($item['fprice_sale']) ? (float)$item['fprice_sale'] : 0;
                        $price_old  = isset($item['fprice']) ? (float)$item['fprice'] : 0;
                        $price_str  = $price_sale > 0 ? number_format($price_sale, 0, ',', '.') . 'đ' : 'Liên hệ';
                        $old_str    = $price_old > $price_sale ? number_format($price_old, 0, ',', '.') . 'đ' : '';
                        $prod_id    = !empty($item['nid']) ? (int)$item['nid'] : 0;
                        $prod_price = $price_sale > 0 ? $price_sale : ($price_old > 0 ? $price_old : 0);

                        $desc = !empty($item['cdescription']) ? strip_tags($item['cdescription']) : '';
                        if (empty($desc) && !empty($item['cshort_content'])) {
                            $desc = strip_tags($item['cshort_content']);
                        }
                        if (empty($desc)) {
                            $desc = 'Keo chà ron Epoxy cao cấp chống thấm, kháng nấm mốc và bảo vệ đường ron bền đẹp.';
                        }
                    ?>
                        <article class="basc-product-card reveal" onclick="window.location.href='<?php echo $detail_url; ?>';">
                            <span class="basc-product-badge"><?php echo htmlspecialchars($badge); ?></span>
                            <div class="basc-product-thumb">
                                <?php if ($has_img): ?>
                                    <img src="<?php echo $img_src; ?>" alt="<?php echo htmlspecialchars($item['cproducts']); ?>" loading="lazy">
                                <?php else: ?>
                                    <i class="fa-solid fa-box-open"></i>
                                <?php endif; ?>
                            </div>
                            <div class="basc-product-rating">
                                <span class="basc-stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                </span>
                                <span><?php echo htmlspecialchars($rating_val); ?></span>
                            </div>
                            <h3 class="basc-product-name">
                                <a href="<?php echo $detail_url; ?>" class="basc-product-name-link" onclick="event.stopPropagation();">
                                    <?php echo htmlspecialchars($item['cproducts']); ?>
                                </a>
                            </h3>
                            <p class="basc-product-desc"><?php echo htmlspecialchars($desc); ?></p>
                            <div class="basc-product-price-row">
                                <span class="basc-price-now"><?php echo $price_str; ?></span>
                                <?php if ($old_str !== ''): ?>
                                    <span class="basc-price-old"><?php echo $old_str; ?></span>
                                <?php endif; ?>
                            </div>
                            <button type="button" class="basc-add-btn js-add-cart" 
                                data-id="<?php echo $prod_id; ?>" 
                                data-name="<?php echo htmlspecialchars($item['cproducts']); ?>" 
                                data-price="<?php echo $prod_price; ?>" 
                                data-price-str="<?php echo $price_str; ?>" 
                                data-icon="fa-box-open"
                                onclick="event.stopPropagation();">
                                <i class="fa-solid fa-cart-plus"></i> Thêm vào giỏ
                            </button>
                        </article>
                    <?php 
                    endforeach; 
                    ?>
                </div>

                <!-- Phân Trang -->
                <?php if ($ntotal_page > 1): ?>
                    <div class="pagination-wrapper">
                        <?php if ($ncurr_page > 1): ?>
                            <?php $prev_url = ($ncurr_page - 1 == 1) ? base_url().'san-pham' : base_url().'san-pham/trang-'.($ncurr_page - 1); ?>
                            <a href="<?php echo $prev_url; ?>">&laquo;</a>
                        <?php endif; ?>

                        <?php for ($i = 1; $i <= $ntotal_page; $i++): ?>
                            <?php if ($i == $ncurr_page): ?>
                                <span class="active"><?php echo $i; ?></span>
                            <?php else: ?>
                                <?php $page_url = ($i == 1) ? base_url().'san-pham' : base_url().'san-pham/trang-'.$i; ?>
                                <a href="<?php echo $page_url; ?>"><?php echo $i; ?></a>
                            <?php endif; ?>
                        <?php endfor; ?>

                        <?php if ($ncurr_page < $ntotal_page): ?>
                            <a href="<?php echo base_url(); ?>san-pham/trang-<?php echo ($ncurr_page + 1); ?>">&raquo;</a>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>

            <?php else: ?>
                <div class="empty-state">
                    <i class="fas fa-box-open basc-empty-icon"></i>
                    <h3>Hiện chưa có sản phẩm nào</h3>
                    <p>Vui lòng quay lại sau hoặc liên hệ với chúng tôi để được tư vấn sản phẩm phù hợp.</p>
                    <a href="<?php echo base_url(); ?>" class="btn btn-primary btn-sm">Về trang chủ</a>
                </div>
            <?php endif; ?>
        </main>
    </div>
</div>

<?php 
   $this->load->view('modules/mod_footer');
   $this->load->view('footer');
?>
