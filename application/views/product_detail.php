<?php
   $this->load->view('header');
   $this->load->view('header_end');	
   $this->load->view('modules/mod_header');

   // Xử lý ảnh đại diện chính (kiểm tra tồn tại file thật trên server)
   $has_img_main = false;
   $img_main = '';
   if (!empty($obj_detail['cimage']) && file_exists(FCPATH . 'upload/images_product/full_images/' . $obj_detail['cimage'])) {
       $img_main = base_url() . 'upload/images_product/full_images/' . $obj_detail['cimage'];
       $has_img_main = true;
   } elseif (!empty($obj_detail['cimage_resize']) && file_exists(FCPATH . 'upload/images_product/resize_images/' . $obj_detail['cimage_resize'])) {
       $img_main = base_url() . 'upload/images_product/resize_images/' . $obj_detail['cimage_resize'];
       $has_img_main = true;
   }

   // Xử lý giá bán
   $price_sale = isset($obj_detail['fprice_sale']) ? (float)$obj_detail['fprice_sale'] : 0;
   $price_old  = isset($obj_detail['fprice']) ? (float)$obj_detail['fprice'] : 0;
   $prod_price = $price_sale > 0 ? $price_sale : ($price_old > 0 ? $price_old : 0);
   $has_discount = ($price_old > $price_sale && $price_sale > 0);
   $discount_percent = $has_discount ? round((($price_old - $price_sale) / $price_old) * 100) : 0;

   // Tag & Đánh giá
   $badge_text = !empty($obj_detail['ctag']) ? $obj_detail['ctag'] : 'Chính hãng BASC';
   $rating_text = !empty($obj_detail['cloai_tin']) ? $obj_detail['cloai_tin'] : '4.9/5 (250+ đánh giá)';
   $hotline_main = get_value_by_config(12);
   if (empty($hotline_main)) {
       $hotline_main = '0333872153';
   }
?>

<div class="container product-detail-page reveal">
    <!-- Breadcrumb điều hướng chuẩn SEO -->
    <nav class="breadcrumb" aria-label="Breadcrumb">
        <a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i> Trang chủ</a>
        <span class="sep">&rsaquo;</span>
        <a href="<?php echo base_url(); ?>san-pham">Sản phẩm</a>
        <?php if (!empty($obj_sec['cmaterial_products'])): 
            $sec_slug = function_exists('get_clean_material_slug') ? get_clean_material_slug($obj_sec) : (!empty($obj_sec['ccode']) ? $obj_sec['ccode'] : '');
        ?>
            <span class="sep">&rsaquo;</span>
            <a href="<?php echo base_url(); ?>danh-muc/<?php echo $sec_slug; ?>"><?php echo htmlspecialchars($obj_sec['cmaterial_products']); ?></a>
        <?php endif; ?>
        <?php if (!empty($obj_detail['ccat_products'])): ?>
            <span class="sep">&rsaquo;</span>
            <a href="<?php echo base_url(); ?>danh-muc/<?php echo $obj_detail['ccode_cat']; ?>"><?php echo htmlspecialchars($obj_detail['ccat_products']); ?></a>
        <?php endif; ?>
        <span class="sep">&rsaquo;</span>
        <span class="current"><?php echo htmlspecialchars($obj_detail['cproducts']); ?></span>
    </nav>

    <!-- Khối Chi Tiết Sản Phẩm 2 Cột -->
    <div class="product-grid">
        <!-- Cột Trái: Gallery Hình Ảnh -->
        <div class="product-gallery">
            <div class="main-image" <?php if ($has_img_main): ?>onclick="openImagePopup(document.getElementById('main-product-img'))" title="Click để phóng to ảnh"<?php endif; ?>>
                <?php if ($has_img_main): ?>
                    <img id="main-product-img" src="<?php echo $img_main; ?>" alt="<?php echo htmlspecialchars($obj_detail['cproducts']); ?>">
                <?php else: ?>
                    <i class="fa-solid fa-box-open"></i>
                <?php endif; ?>
            </div>

            <?php 
            $list_sub_images = get_img_by_product($obj_detail['nid']); 
            $valid_sub_images = [];
            if (!empty($list_sub_images)) {
                foreach ($list_sub_images as $sub_img) {
                    if (!empty($sub_img['cimage']) && file_exists(FCPATH . 'upload/images_product/sub_images/' . $sub_img['cimage'])) {
                        $valid_sub_images[] = base_url() . 'upload/images_product/sub_images/' . $sub_img['cimage'];
                    }
                }
            }
            ?>
            <?php if ($has_img_main || !empty($valid_sub_images)): ?>
            <div class="thumbnails">
                <?php if ($has_img_main): ?>
                <div class="thumb active" onclick="changeProductImage(this, '<?php echo $img_main; ?>')">
                    <img src="<?php echo $img_main; ?>" alt="<?php echo htmlspecialchars($obj_detail['cproducts']); ?>">
                </div>
                <?php endif; ?>
                <?php foreach ($valid_sub_images as $sub_img_src): ?>
                    <div class="thumb" onclick="changeProductImage(this, '<?php echo $sub_img_src; ?>')">
                        <img src="<?php echo $sub_img_src; ?>" alt="<?php echo htmlspecialchars($obj_detail['cproducts']); ?>">
                    </div>
                <?php endforeach; ?>
            </div>
            <?php endif; ?>
        </div>

        <!-- Cột Phải: Thông Tin & Đặt Hàng -->
        <div class="product-info">
            <div class="product-info-badges">
                <span class="product-info-tag"><?php echo htmlspecialchars($badge_text); ?></span>
                <span class="product-info-status">
                    <span class="status-dot"></span> Còn hàng (Sẵn sàng giao)
                </span>
            </div>

            <h1><?php echo htmlspecialchars($obj_detail['cproducts']); ?></h1>

            <div class="product-rating-box">
                <div class="product-stars">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
                <span class="product-rating-text"><?php echo htmlspecialchars($rating_text); ?></span>
            </div>

            <div class="product-meta-row">
                <div class="product-meta-item">Mã sản phẩm: <strong>#BASC-<?php echo $obj_detail['nid']; ?></strong></div>
                <?php if (!empty($obj_detail['ccat_products'])): ?>
                    <div class="product-meta-item">Danh mục: <strong><?php echo htmlspecialchars($obj_detail['ccat_products']); ?></strong></div>
                <?php endif; ?>
                <div class="product-meta-item">Bảo hành: <strong>Chính hãng</strong></div>
            </div>

            <!-- Khung Giá Bán -->
            <div class="product-price-section">
                <?php if ($price_sale > 0): ?>
                    <span class="product-price-now"><?php echo number_format($price_sale, 0, ',', '.'); ?>đ</span>
                    <?php if ($has_discount): ?>
                        <span class="product-price-old"><?php echo number_format($price_old, 0, ',', '.'); ?>đ</span>
                        <span class="product-price-discount">-<?php echo $discount_percent; ?>%</span>
                    <?php endif; ?>
                <?php elseif ($price_old > 0): ?>
                    <span class="product-price-now"><?php echo number_format($price_old, 0, ',', '.'); ?>đ</span>
                <?php else: ?>
                    <span class="product-price-contact">Liên hệ báo giá tốt nhất</span>
                <?php endif; ?>
            </div>

            <!-- Mô Tả Ngắn -->
            <div class="product-short-desc">
                <?php 
                if (!empty($obj_detail['cdescription'])) {
                    echo fix_content_images($obj_detail['cdescription']);
                } else {
                    echo '<p>Vật tư keo chà ron cao cấp BASC, chống thấm tuyệt đối, kháng rêu mốc và giữ màu sắc đường ron bền đẹp theo thời gian.</p>';
                }
                ?>
            </div>

            <!-- Khối Thao Tác Mua Hàng & Số Lượng -->
            <div class="product-actions-wrap">
                <div class="product-qty-row">
                    <span class="product-qty-label">Số lượng:</span>
                    <div class="product-qty-picker">
                        <button type="button" class="qty-btn" onclick="decreaseQty()">-</button>
                        <input type="number" id="detail-product-qty" class="qty-input" value="1" min="1" max="999" readonly>
                        <button type="button" class="qty-btn" onclick="increaseQty()">+</button>
                    </div>
                </div>

                <div class="product-button-group">
                    <button type="button" 
                            id="btn-detail-add-cart"
                            class="btn-add-to-cart" 
                            data-id="<?php echo $obj_detail['nid']; ?>" 
                            data-name="<?php echo htmlspecialchars($obj_detail['cproducts']); ?>" 
                            data-price="<?php echo $prod_price; ?>" 
                            data-img="<?php echo $img_main; ?>"
                            data-qty="1"
                            onclick="detailAddToCart(this)">
                        <i class="fa-solid fa-cart-plus"></i> THÊM VÀO GIỎ
                    </button>
                    <button type="button" class="btn-buy-instant" onclick="buyProductNow()">
                        <i class="fa-solid fa-bolt"></i> MUA NGAY
                    </button>
                </div>

                <!-- Khối Hotline & Tư Vấn Kỹ Thuật -->
                <div class="product-contact-support">
                    <a href="tel:<?php echo $hotline_main; ?>" class="product-tech-btn">
                        <i class="fas fa-headset"></i> LIÊN HỆ: <?php echo $hotline_main; ?>
                    </a>
                </div>
            </div>

            <!-- Box Cam Kết & Chính Sách BASC -->
            <div class="product-trust-box">
                <div class="trust-item">
                    <i class="fa-solid fa-shield-halved"></i>
                    <div>
                        <strong>100% Chính hãng</strong>
                        <span>Đầy đủ CO/CQ và kiểm định chất lượng</span>
                    </div>
                </div>
                <div class="trust-item">
                    <i class="fa-solid fa-truck-fast"></i>
                    <div>
                        <strong>Giao hàng toàn quốc</strong>
                        <span>Đóng gói cẩn thận, nhận hàng kiểm tra</span>
                    </div>
                </div>
                <div class="trust-item">
                    <i class="fa-solid fa-screwdriver-wrench"></i>
                    <div>
                        <strong>Tư vấn kỹ thuật 24/7</strong>
                        <span>Hỗ trợ định mức & phương pháp thi công</span>
                    </div>
                </div>
                <div class="trust-item">
                    <i class="fa-solid fa-rotate-left"></i>
                    <div>
                        <strong>Đổi trả linh hoạt</strong>
                        <span>Cam kết 1 đổi 1 nếu lỗi từ nhà sản xuất</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Tabs Chi Tiết: Mô Tả (cdetail) & Thông Số Kỹ Thuật (cgioi_thieu) -->
    <?php 
    $detail_str = isset($obj_detail['cdetail']) ? trim($obj_detail['cdetail']) : '';
    $specs_str = isset($obj_detail['cgioi_thieu']) ? trim($obj_detail['cgioi_thieu']) : '';
    ?>
    <div class="product-tabs-wrapper reveal">
        <div class="tab-nav">
            <button class="tab-btn active" type="button" onclick="switchTab(event, 'tab-detail')">Mô Tả Sản Phẩm</button>
            <?php if ($specs_str !== ''): ?>
                <button class="tab-btn" type="button" onclick="switchTab(event, 'tab-specs')">Thông Số Kỹ Thuật</button>
            <?php endif; ?>
        </div>
        
        <div id="tab-detail" class="tab-pane active">
            <?php 
            if ($detail_str !== '') {
                echo fix_content_images($detail_str);
            } elseif ($specs_str === '') {
                echo '<p>Thông tin chi tiết sản phẩm đang được cập nhật...</p>';
            }

            if ($specs_str !== '' && $detail_str === '') {
                echo fix_content_images($specs_str);
            }
            ?>
        </div>

        <?php if ($specs_str !== ''): ?>
            <div id="tab-specs" class="tab-pane">
                <div class="product-specs-section">
                    <h3 class="product-specs-title">
                        <i class="fas fa-sliders-h product-specs-icon"></i> Thông số kỹ thuật chi tiết
                    </h3>
                    <?php echo fix_content_images($specs_str); ?>
                </div>
            </div>
        <?php endif; ?>
    </div>

    <!-- Sản Phẩm Liên Quan (Sử dụng đồng bộ component .basc-product-card) -->
    <div class="related-products">
        <h2 class="section-title reveal">Sản phẩm liên quan</h2>
        <div class="basc-products-grid">
            <?php 
            $list_relate = get_product_relate($obj_detail['nid'], $obj_detail['nid_cat_products']);
            if (!empty($list_relate)):
                foreach ($list_relate as $rel):
                    $rel_has_img = false;
                    $rel_img = '';
                    if (!empty($rel['cimage_resize']) && file_exists(FCPATH . 'upload/images_product/resize_images/' . $rel['cimage_resize'])) {
                        $rel_img = base_url() . 'upload/images_product/resize_images/' . $rel['cimage_resize'];
                        $rel_has_img = true;
                    } elseif (!empty($rel['cimage']) && file_exists(FCPATH . 'upload/images_product/full_images/' . $rel['cimage'])) {
                        $rel_img = base_url() . 'upload/images_product/full_images/' . $rel['cimage'];
                        $rel_has_img = true;
                    }
                    $rel_url = base_url().'san-pham/'.$rel['ccode'];
                    $rel_badge = !empty($rel['ctag']) ? $rel['ctag'] : 'Chính hãng';
                    $rel_rating = !empty($rel['cloai_tin']) ? $rel['cloai_tin'] : '4.9 (250)';
                    $rel_price_sale = isset($rel['fprice_sale']) ? (float)$rel['fprice_sale'] : 0;
                    $rel_price_old  = isset($rel['fprice']) ? (float)$rel['fprice'] : 0;
                    $rel_price_str  = $rel_price_sale > 0 ? number_format($rel_price_sale, 0, ',', '.') . 'đ' : 'Liên hệ';
                    $rel_old_str    = $rel_price_old > $rel_price_sale ? number_format($rel_price_old, 0, ',', '.') . 'đ' : '';
                    $rel_id         = !empty($rel['nid']) ? (int)$rel['nid'] : 0;
                    $rel_price      = $rel_price_sale > 0 ? $rel_price_sale : ($rel_price_old > 0 ? $rel_price_old : 0);

                    $rel_desc = !empty($rel['cdescription']) ? strip_tags($rel['cdescription']) : '';
                    if (empty($rel_desc) && !empty($rel['cshort_content'])) {
                        $rel_desc = strip_tags($rel['cshort_content']);
                    }
                    if (empty($rel_desc)) {
                        $rel_desc = 'Keo chà ron Epoxy cao cấp chống thấm, kháng nấm mốc và bảo vệ đường ron bền đẹp.';
                    }
            ?>
                <article class="basc-product-card reveal" onclick="window.location.href='<?php echo $rel_url; ?>';">
                    <span class="basc-product-badge"><?php echo htmlspecialchars($rel_badge); ?></span>
                    <div class="basc-product-thumb">
                        <?php if ($rel_has_img): ?>
                            <img src="<?php echo $rel_img; ?>" alt="<?php echo htmlspecialchars($rel['cproducts']); ?>" loading="lazy">
                        <?php else: ?>
                            <i class="fa-solid fa-box-open"></i>
                        <?php endif; ?>
                    </div>
                    <div class="basc-product-rating">
                        <span class="basc-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        </span>
                        <span><?php echo htmlspecialchars($rel_rating); ?></span>
                    </div>
                    <h3 class="basc-product-name">
                        <a href="<?php echo $rel_url; ?>" class="basc-product-name-link" onclick="event.stopPropagation();">
                            <?php echo htmlspecialchars($rel['cproducts']); ?>
                        </a>
                    </h3>
                    <p class="basc-product-desc"><?php echo htmlspecialchars($rel_desc); ?></p>
                    <div class="basc-product-price-row">
                        <span class="basc-price-now"><?php echo $rel_price_str; ?></span>
                        <?php if (!empty($rel_old_str)): ?>
                            <span class="basc-price-old"><?php echo $rel_old_str; ?></span>
                        <?php endif; ?>
                    </div>
                    <button type="button" 
                            class="basc-add-btn js-add-cart" 
                            data-id="<?php echo $rel_id; ?>" 
                            data-name="<?php echo htmlspecialchars($rel['cproducts']); ?>" 
                            data-price="<?php echo $rel_price; ?>" 
                            data-price-str="<?php echo $rel_price_str; ?>" 
                            data-icon="fa-box-open" 
                            onclick="event.stopPropagation();">
                        <i class="fa-solid fa-cart-plus"></i> Thêm vào giỏ
                    </button>
                </article>
            <?php 
                endforeach;
            else:
                echo '<p class="empty-state">Không có sản phẩm liên quan nào trong cùng danh mục.</p>';
            endif;
            ?>
        </div>
    </div>
</div>

<!-- Image Lightbox Modal Phóng To Ảnh (Zero Inline CSS) -->
<div id="imageLightboxModal" class="image-lightbox-modal" onclick="closeImagePopup(event)">
    <span class="image-lightbox-close" onclick="closeImagePopup(event)" title="Đóng">&times;</span>
    <div class="image-lightbox-content" onclick="event.stopPropagation()">
        <img id="imageLightboxImg" src="" alt="Popup Image">
    </div>
</div>

<script>
function changeProductImage(elem, imgSrc) {
    var mainWrap = document.querySelector('.product-gallery .main-image');
    var mainImg = document.getElementById('main-product-img');
    if (!mainImg && mainWrap) {
        mainWrap.innerHTML = '<img id="main-product-img" src="' + imgSrc + '" alt="Product Image">';
        mainWrap.onclick = function() { openImagePopup(document.getElementById('main-product-img')); };
        mainWrap.title = "Click để phóng to ảnh";
    } else if (mainImg) {
        mainImg.src = imgSrc;
    }
    var thumbs = document.querySelectorAll('.product-gallery .thumb');
    thumbs.forEach(function(th) {
        th.classList.remove('active');
    });
    if (elem) {
        elem.classList.add('active');
    }
}

function increaseQty() {
    var input = document.getElementById('detail-product-qty');
    var btnAdd = document.getElementById('btn-detail-add-cart');
    if (input) {
        var current = parseInt(input.value) || 1;
        input.value = current + 1;
        if (btnAdd) {
            btnAdd.setAttribute('data-qty', input.value);
        }
    }
}

function decreaseQty() {
    var input = document.getElementById('detail-product-qty');
    var btnAdd = document.getElementById('btn-detail-add-cart');
    if (input) {
        var current = parseInt(input.value) || 1;
        if (current > 1) {
            input.value = current - 1;
            if (btnAdd) {
                btnAdd.setAttribute('data-qty', input.value);
            }
        }
    }
}

function detailAddToCart(btn) {
    var qtyInput = document.getElementById('detail-product-qty');
    var qty = qtyInput ? (parseInt(qtyInput.value) || 1) : 1;
    if (btn) {
        btn.setAttribute('data-qty', qty);
        var id = parseInt(btn.getAttribute('data-id') || '0', 10);
        var name = btn.getAttribute('data-name') || 'Sản phẩm BASC';
        var price = parseFloat(btn.getAttribute('data-price') || '0');
        var img = btn.getAttribute('data-img') || '';

        if (window.BASC_CART && typeof window.BASC_CART.addItem === 'function') {
            window.BASC_CART.addItem({
                id: id,
                name: name,
                price: price,
                img: img,
                qty: qty
            }, true);
        }

        // Hiệu ứng phản hồi trạng thái nút
        var originalHtml = '<i class="fa-solid fa-cart-plus"></i> THÊM VÀO GIỎ';
        btn.innerHTML = '<i class="fa-solid fa-check"></i> ĐÃ THÊM (' + qty + ')!';
        btn.classList.add('btn-added-success');
        setTimeout(function() {
            btn.innerHTML = originalHtml;
            btn.classList.remove('btn-added-success');
        }, 1600);
    }
}

function buyProductNow() {
    var btn = document.getElementById('btn-detail-add-cart');
    var qtyInput = document.getElementById('detail-product-qty');
    var qty = qtyInput ? (parseInt(qtyInput.value) || 1) : 1;
    if (btn) {
        btn.setAttribute('data-qty', qty);
        var id = parseInt(btn.getAttribute('data-id') || '0', 10);
        var name = btn.getAttribute('data-name') || 'Sản phẩm BASC';
        var price = parseFloat(btn.getAttribute('data-price') || '0');
        var img = btn.getAttribute('data-img') || '';

        if (window.BASC_CART && typeof window.BASC_CART.addItem === 'function') {
            window.BASC_CART.addItem({
                id: id,
                name: name,
                price: price,
                img: img,
                qty: qty
            }, false); // Mua ngay sẽ mở popup ngay nên không cần toast
        }
    }

    if (window.BASC_CART && typeof window.BASC_CART.openModal === 'function') {
        window.BASC_CART.openModal();
    } else {
        var modal = document.getElementById('basc-cart-modal');
        if (modal) {
            modal.classList.add('is-open');
            modal.setAttribute('aria-hidden', 'false');
            document.body.style.overflow = 'hidden';
        }
    }
}

function switchTab(evt, tabId) {
    var panes = document.querySelectorAll('.tab-pane');
    panes.forEach(function(pane) {
        pane.classList.remove('active');
    });

    var buttons = document.querySelectorAll('.tab-btn');
    buttons.forEach(function(btn) {
        btn.classList.remove('active');
    });

    var targetPane = document.getElementById(tabId);
    if (targetPane) {
        targetPane.classList.add('active');
    }
    if (evt && evt.currentTarget) {
        evt.currentTarget.classList.add('active');
    }
}

function openImagePopup(target) {
    var modal = document.getElementById('imageLightboxModal');
    var modalImg = document.getElementById('imageLightboxImg');
    if (!modal || !modalImg) return;

    var src = '';
    if (typeof target === 'string') {
        src = target;
    } else if (target && target.nodeType) {
        if (target.tagName === 'IMG') {
            src = target.src || target.getAttribute('src');
        } else {
            var innerImg = target.querySelector('img');
            src = innerImg ? (innerImg.src || innerImg.getAttribute('src')) : (target.getAttribute('href') || target.getAttribute('data-src') || '');
        }
    }

    if (src) {
        if (!src.startsWith('http://') && !src.startsWith('https://') && !src.startsWith('data:') && !src.startsWith('blob:')) {
            var baseUrl = '<?php echo base_url(); ?>'.replace(/\/+$/, '') + '/';
            var cleanPath = src.replace(/^\/+/, '');
            src = baseUrl + cleanPath;
        }
        modalImg.src = src;
        modal.classList.add('active');
    }
}

function closeImagePopup(event) {
    var modal = document.getElementById('imageLightboxModal');
    if (modal) {
        modal.classList.remove('active');
    }
}

document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
        closeImagePopup();
    }
});
</script>

<?php 
	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>
