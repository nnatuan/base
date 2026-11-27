<?php
/**
 * Module Sidebar Danh Mục Sản Phẩm (Liệt kê đầy đủ 9 nhóm sản phẩm từ base_tcat_products)
 * @param string $active_type ('all', 'cat', 'sec')
 * @param string $active_code (ccode_cat hoặc ccode_sec)
 */

$list_cats = function_exists('get_cat_product_all') ? get_cat_product_all() : [];
$active_type = isset($active_type) ? $active_type : 'all';
$active_code = isset($active_code) ? $active_code : '';
?>
<aside class="products-sidebar">
    <div class="sidebar-card">
        <div class="sidebar-title">
            <i class="fa-solid fa-layer-group"></i>
            <span>Danh Mục Sản Phẩm</span>
        </div>
        <ul class="category-menu-list">
            <!-- Mục Tất cả sản phẩm -->
            <li class="menu-item-all">
                <a href="<?php echo base_url('san-pham'); ?>" class="<?php echo ($active_type === 'all') ? 'active' : ''; ?>">
                    <i class="fa-solid fa-boxes-stacked"></i>
                    <span class="cat-name">Tất cả sản phẩm</span>
                    <?php 
                    $total_prods = function_exists('get_count_product') ? get_count_product() : 0;
                    if ($total_prods > 0): 
                    ?>
                        <span class="sidebar-cat-count"><?php echo $total_prods; ?></span>
                    <?php endif; ?>
                </a>
            </li>

            <!-- Danh sách 9 nhóm sản phẩm từ base_tcat_products -->
            <?php if (!empty($list_cats)): ?>
                <?php foreach ($list_cats as $cat): 
                    $cat_slug = !empty($cat['ccode']) ? $cat['ccode'] : '';
                    $cat_url  = base_url('danh-muc/' . $cat_slug);
                    $cat_icon = !empty($cat['cimage']) ? $cat['cimage'] : 'fa-box';
                    if (strpos($cat_icon, 'fa-') === false) {
                        $cat_icon = 'fa-box';
                    }
                    $is_active = ($active_type === 'cat' && !empty($active_code) && ($active_code === $cat_slug || (string)$active_code === (string)$cat['nid']));
                    $prod_count = function_exists('get_count_product_by_cat') ? get_count_product_by_cat($cat_slug) : 0;
                ?>
                    <li class="menu-item-cat">
                        <a href="<?php echo $cat_url; ?>" class="<?php echo $is_active ? 'active' : ''; ?>" title="<?php echo htmlspecialchars($cat['ccat_products']); ?>">
                            <i class="fa-solid <?php echo htmlspecialchars($cat_icon); ?>"></i>
                            <span class="cat-name"><?php echo htmlspecialchars($cat['ccat_products']); ?></span>
                            <?php if ($prod_count > 0): ?>
                                <span class="sidebar-cat-count"><?php echo $prod_count; ?></span>
                            <?php endif; ?>
                        </a>
                    </li>
                <?php endforeach; ?>
            <?php endif; ?>
        </ul>
    </div>

    <!-- Box Hỗ Trợ Nhanh -->
    <div class="sidebar-support">
        <i class="fa-solid fa-headset"></i>
        <h4>Tư Vấn Kỹ Thuật</h4>
        <p>Liên hệ ngay để được hỗ trợ báo giá và tư vấn giải pháp tốt nhất.</p>
        <a href="tel:<?php echo get_value_by_config(12); ?>" class="hotline-btn">
            <i class="fa-solid fa-phone-volume"></i> <?php echo get_value_by_config(12); ?>
        </a>
    </div>
</aside>
