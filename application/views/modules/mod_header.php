<?php
$cfg_email   = trim((string) get_value_by_config(1));
$cfg_hotline = trim((string) get_value_by_config(12));
$cfg_address = trim((string) get_value_by_config(20));
$cfg_fb      = trim((string) get_value_by_config(9));
$cfg_zalo    = trim((string) get_value_by_config(17));
$cfg_map     = trim((string) get_value_by_config(11));
$cfg_logo    = trim((string) get_value_by_config(8));

$logo_url = base_url() . 'images/logo.svg';
if ($cfg_logo !== '') {
    if (file_exists(FCPATH . 'upload/fb/' . $cfg_logo)) {
        $logo_url = base_url() . 'upload/fb/' . $cfg_logo;
    } elseif (file_exists(FCPATH . 'images/' . $cfg_logo)) {
        $logo_url = base_url() . 'images/' . $cfg_logo;
    }
}

$hotline_tel = preg_replace('/[^0-9+]/', '', $cfg_hotline);
$current_menu = isset($menu_top) ? $menu_top : 'home';
$is_home_page = ($current_menu === 'home');
?>
<!-- Topbar thông tin liên hệ từ CSDL -->
<div class="basc-topbar">
    <div class="basc-container basc-topbar-inner">
        <div class="basc-topbar-info">
            <?php if ($cfg_hotline !== ''): ?>
                <a href="tel:<?php echo htmlspecialchars($hotline_tel); ?>">
                    <i class="fa-solid fa-phone-volume"></i>
                    <span>Hotline: <strong><?php echo htmlspecialchars($cfg_hotline); ?></strong></span>
                </a>
            <?php endif; ?>
            <?php if ($cfg_email !== ''): ?>
                <a href="mailto:<?php echo htmlspecialchars($cfg_email); ?>">
                    <i class="fa-regular fa-envelope"></i>
                    <span><?php echo htmlspecialchars($cfg_email); ?></span>
                </a>
            <?php endif; ?>
            <?php if ($cfg_address !== ''): ?>
                <span>
                    <i class="fa-solid fa-location-dot"></i>
                    <span><?php echo htmlspecialchars($cfg_address); ?></span>
                </span>
            <?php endif; ?>
        </div>
        <div class="basc-topbar-social">
            <?php if ($cfg_fb !== '' && $cfg_fb !== '#'): ?>
                <a href="<?php echo htmlspecialchars($cfg_fb); ?>" target="_blank" rel="noopener" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
            <?php endif; ?>
            <?php if ($cfg_zalo !== '' && $cfg_zalo !== '#'): ?>
                <a href="<?php echo htmlspecialchars($cfg_zalo); ?>" target="_blank" rel="noopener" aria-label="Zalo">Zalo</a>
            <?php endif; ?>
            <?php if ($cfg_map !== '' && $cfg_map !== '#'): ?>
                <a href="<?php echo htmlspecialchars($cfg_map); ?>" target="_blank" rel="noopener" aria-label="Bản đồ"><i class="fa-solid fa-map-location-dot"></i></a>
            <?php endif; ?>
        </div>
    </div>
</div>

<!-- Navbar chính theo layout -->
<header class="basc-navbar" id="basc-navbar">
    <div class="basc-container basc-navbar-inner">
        <a href="<?php echo base_url(); ?>" class="basc-logo" aria-label="BASC - Chuyên Vật Tư & Thi Công Ron Gạch">
            <img src="<?php echo $logo_url; ?>" alt="BASC - Chuyên Vật Tư & Thi Công Ron Gạch">
        </a>

        <nav class="basc-nav-links" aria-label="Điều hướng chính">
            <a href="<?php echo base_url(); ?>" class="<?php echo ($current_menu === 'home') ? 'active' : ''; ?>">Trang chủ</a>
            <a href="<?php echo base_url('gioi-thieu'); ?>" class="<?php echo ($current_menu === 'about') ? 'active' : ''; ?>">Giới thiệu</a>
            <a href="<?php echo base_url('san-pham'); ?>" class="<?php echo ($current_menu === 'products' || $current_menu === 'product_detail') ? 'active' : ''; ?>">Sản phẩm</a>
            <a href="<?php echo base_url('dich-vu'); ?>" class="<?php echo ($current_menu === 'services') ? 'active' : ''; ?>">Dịch vụ thi công</a>
            <a href="<?php echo base_url('tin-tuc'); ?>" class="<?php echo ($current_menu === 'news') ? 'active' : ''; ?>">Tin tức</a>
            <a href="<?php echo base_url('lien-he'); ?>" class="<?php echo ($current_menu === 'contact') ? 'active' : ''; ?>">Liên hệ</a>
        </nav>

        <div class="basc-nav-actions">
            <a href="<?php echo $is_home_page ? '#final-cta' : base_url() . '#final-cta'; ?>" class="btn-basc-schedule" title="Đặt lịch khảo sát">
                <i class="fa-solid fa-calendar-check"></i>
                <span>Đặt Lịch Khảo Sát</span>
            </a>
            <button type="button" class="basc-icon-btn" id="basc-cart-btn" title="Giỏ hàng" aria-label="Giỏ hàng">
                <i class="fa-solid fa-cart-shopping"></i>
                <span class="basc-cart-badge" id="basc-cart-count">0</span>
            </button>
            <button type="button" class="basc-mobile-toggle" id="basc-mobile-open" aria-label="Mở menu">
                <i class="fa-solid fa-bars"></i>
            </button>
        </div>
    </div>
</header>

<!-- Mobile Drawer -->
<div class="basc-mobile-drawer" id="basc-mobile-drawer" aria-hidden="true">
    <div class="basc-mobile-panel">
        <div class="basc-mobile-head">
            <img src="<?php echo $logo_url; ?>" alt="BASC Logo">
            <button type="button" id="basc-mobile-close" class="basc-mobile-close-btn" aria-label="Đóng menu">
                <i class="fa-solid fa-xmark"></i>
            </button>
        </div>
        <div class="basc-mobile-links">
            <a href="<?php echo base_url(); ?>" class="basc-mobile-nav-link <?php echo ($current_menu === 'home') ? 'active' : ''; ?>">Trang chủ</a>
            <a href="<?php echo base_url('gioi-thieu'); ?>" class="basc-mobile-nav-link <?php echo ($current_menu === 'about') ? 'active' : ''; ?>">Giới thiệu</a>
            <a href="<?php echo base_url('san-pham'); ?>" class="basc-mobile-nav-link <?php echo ($current_menu === 'products' || $current_menu === 'product_detail') ? 'active' : ''; ?>">Sản phẩm</a>
            <a href="<?php echo base_url('dich-vu'); ?>" class="basc-mobile-nav-link <?php echo ($current_menu === 'services') ? 'active' : ''; ?>">Dịch vụ thi công</a>
            <a href="<?php echo base_url('tin-tuc'); ?>" class="basc-mobile-nav-link <?php echo ($current_menu === 'news') ? 'active' : ''; ?>">Tin tức</a>
            <a href="<?php echo base_url('lien-he'); ?>" class="basc-mobile-nav-link <?php echo ($current_menu === 'contact') ? 'active' : ''; ?>">Liên hệ</a>
            <a href="<?php echo $is_home_page ? '#final-cta' : base_url() . '#final-cta'; ?>" class="basc-mobile-nav-link basc-mobile-schedule-link">
                <i class="fa-solid fa-calendar-check"></i> Đặt lịch khảo sát
            </a>
        </div>
        <div class="basc-mobile-contact">
            <?php if ($cfg_hotline !== ''): ?>
                <p class="basc-mobile-contact-item"><i class="fa-solid fa-phone"></i> <a href="tel:<?php echo htmlspecialchars($hotline_tel); ?>" class="basc-mobile-phone-link"><?php echo htmlspecialchars($cfg_hotline); ?></a></p>
            <?php endif; ?>
            <?php if ($cfg_email !== ''): ?>
                <p class="basc-mobile-contact-item"><i class="fa-regular fa-envelope"></i> <?php echo htmlspecialchars($cfg_email); ?></p>
            <?php endif; ?>
        </div>
    </div>
</div>

