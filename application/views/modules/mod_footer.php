<?php
$cfg_email   = trim((string) get_value_by_config(1));
$cfg_fb      = trim((string) get_value_by_config(9));
$cfg_map     = trim((string) get_value_by_config(11));
$cfg_hotline = trim((string) get_value_by_config(12));
$cfg_shopee  = trim((string) get_value_by_config(14));
$cfg_tiktok  = trim((string) get_value_by_config(15));
$cfg_zalo    = trim((string) get_value_by_config(17));
$cfg_address = trim((string) get_value_by_config(20));
$cfg_vp      = trim((string) get_value_by_config(21));
$cfg_kho     = trim((string) get_value_by_config(22));
$cfg_slogan  = trim((string) get_value_by_config(23));
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
?>

<footer class="basc-footer">
    <div class="basc-container">
        <div class="basc-footer-grid">
            <div>
                <div class="basc-footer-logo-wrap">
                    <img src="<?php echo $logo_url; ?>" alt="BASC Logo">
                </div>
                <?php if ($cfg_slogan !== ''): ?>
                    <p class="basc-footer-slogan"><?php echo htmlspecialchars($cfg_slogan); ?></p>
                <?php endif; ?>
                <p class="basc-footer-desc">
                    Đơn vị chuyên cung cấp keo chà ron Epoxy, dụng cụ ốp lát và dịch vụ thi công ron gạch chuyên nghiệp, thẩm mỹ bền lâu cho mọi công trình.
                </p>
                <div class="basc-footer-social-row">
                    <?php if ($cfg_fb !== '' && $cfg_fb !== '#'): ?>
                        <a href="<?php echo htmlspecialchars($cfg_fb); ?>" target="_blank" rel="noopener" class="basc-icon-btn basc-icon-btn-footer" aria-label="Facebook">
                            <i class="fa-brands fa-facebook-f"></i>
                        </a>
                    <?php endif; ?>
                    <?php if ($cfg_zalo !== '' && $cfg_zalo !== '#'): ?>
                        <a href="<?php echo htmlspecialchars($cfg_zalo); ?>" target="_blank" rel="noopener" class="basc-icon-btn basc-icon-btn-footer basc-icon-btn-zalo" aria-label="Zalo">
                            Zalo
                        </a>
                    <?php endif; ?>
                    <?php if ($cfg_tiktok !== '' && $cfg_tiktok !== '#'): ?>
                        <a href="<?php echo htmlspecialchars($cfg_tiktok); ?>" target="_blank" rel="noopener" class="basc-icon-btn basc-icon-btn-footer" aria-label="TikTok">
                            <i class="fa-brands fa-tiktok"></i>
                        </a>
                    <?php endif; ?>
                    <?php if ($cfg_shopee !== '' && $cfg_shopee !== '#'): ?>
                        <a href="<?php echo htmlspecialchars($cfg_shopee); ?>" target="_blank" rel="noopener" class="basc-icon-btn basc-icon-btn-footer" aria-label="Shopee">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </a>
                    <?php endif; ?>
                </div>
            </div>

            <div>
                <h4>Liên Kết Nhanh</h4>
                <ul class="basc-footer-links">
                    <li><a href="#best-sellers">Sản phẩm bán chạy</a></li>
                    <li><a href="#categories">Danh mục vật tư ron gạch</a></li>
                    <li><a href="#why-choose-us">Tại sao chọn BASC</a></li>
                    <li><a href="#ugc-gallery">Công trình thực tế</a></li>
                    <li><a href="#faqs">Câu hỏi thường gặp</a></li>
                    <li><a href="<?php echo base_url('gioi-thieu'); ?>">Giới thiệu công ty</a></li>
                </ul>
            </div>

            <div>
                <h4>Thông Tin Liên Hệ</h4>
                <ul class="basc-footer-contact">
                    <?php if ($cfg_hotline !== ''): ?>
                        <li>
                            <i class="fa-solid fa-phone"></i>
                            <div>
                                <span class="basc-footer-label-sub">Hotline tư vấn &amp; đặt hàng:</span>
                                <a href="tel:<?php echo htmlspecialchars($hotline_tel); ?>" class="basc-footer-phone-link"><?php echo htmlspecialchars($cfg_hotline); ?></a>
                            </div>
                        </li>
                    <?php endif; ?>
                    <?php if ($cfg_email !== ''): ?>
                        <li>
                            <i class="fa-regular fa-envelope"></i>
                            <a href="mailto:<?php echo htmlspecialchars($cfg_email); ?>"><?php echo htmlspecialchars($cfg_email); ?></a>
                        </li>
                    <?php endif; ?>
                    <?php if ($cfg_address !== ''): ?>
                        <li>
                            <i class="fa-solid fa-location-dot"></i>
                            <span><strong>Trụ sở:</strong> <?php echo htmlspecialchars($cfg_address); ?></span>
                        </li>
                    <?php endif; ?>
                    <?php if ($cfg_vp !== ''): ?>
                        <li>
                            <i class="fa-solid fa-building"></i>
                            <span><strong>Văn phòng:</strong> <?php echo htmlspecialchars($cfg_vp); ?></span>
                        </li>
                    <?php endif; ?>
                    <?php if ($cfg_kho !== ''): ?>
                        <li>
                            <i class="fa-solid fa-warehouse"></i>
                            <span><strong>Tổng kho:</strong> <?php echo htmlspecialchars($cfg_kho); ?></span>
                        </li>
                    <?php endif; ?>
                    <?php if ($cfg_map !== '' && $cfg_map !== '#'): ?>
                        <li>
                            <i class="fa-solid fa-map-location-dot"></i>
                            <a href="<?php echo htmlspecialchars($cfg_map); ?>" target="_blank" rel="noopener" class="basc-footer-map-link">Xem chỉ đường trên Google Maps</a>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>

        <div class="basc-footer-bottom">
            <span>&copy; <?php echo date('Y'); ?> BASC – Chuyên Vật Tư &amp; Thi Công Ron Gạch.</span>
            <span>Thiết kế hiện đại &amp; tối ưu chuyển đổi</span>
        </div>
    </div>
</footer>

<!-- Floating Contact Buttons -->
<div class="basc-floating">
    <?php if ($cfg_zalo !== '' && $cfg_zalo !== '#'): ?>
        <a href="<?php echo htmlspecialchars($cfg_zalo); ?>" target="_blank" rel="noopener" class="basc-float-btn basc-float-zalo" title="Chat Zalo">Zalo</a>
    <?php endif; ?>
    <?php if ($cfg_fb !== '' && $cfg_fb !== '#'): ?>
        <a href="<?php echo htmlspecialchars($cfg_fb); ?>" target="_blank" rel="noopener" class="basc-float-btn basc-float-fb" title="Facebook BASC"><i class="fa-brands fa-facebook-f"></i></a>
    <?php endif; ?>
    <?php if ($cfg_hotline !== ''): ?>
        <a href="tel:<?php echo htmlspecialchars($hotline_tel); ?>" class="basc-float-btn basc-float-call" title="Gọi Hotline"><i class="fa-solid fa-phone"></i></a>
    <?php endif; ?>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
    // 1. Ẩn Preloader ngay khi DOM sẵn sàng
    var preloader = document.getElementById('page-preloader');
    if (preloader) {
        preloader.classList.add('is-hidden');
        setTimeout(function () { preloader.style.display = 'none'; }, 400);
    }

    // 2. Sticky Navbar shadow
    var navbar = document.getElementById('basc-navbar');
    window.addEventListener('scroll', function () {
        if (!navbar) return;
        if (window.scrollY > 20) navbar.classList.add('is-scrolled');
        else navbar.classList.remove('is-scrolled');
    });

    // 3. Mobile Drawer
    var drawer = document.getElementById('basc-mobile-drawer');
    var openBtn = document.getElementById('basc-mobile-open');
    var closeBtn = document.getElementById('basc-mobile-close');
    function toggleDrawer(open) {
        if (!drawer) return;
        drawer.classList.toggle('is-open', open);
        drawer.setAttribute('aria-hidden', open ? 'false' : 'true');
    }
    if (openBtn) openBtn.addEventListener('click', function () { toggleDrawer(true); });
    if (closeBtn) closeBtn.addEventListener('click', function () { toggleDrawer(false); });
    if (drawer) {
        drawer.addEventListener('click', function (e) {
            if (e.target === drawer) toggleDrawer(false);
        });
        drawer.querySelectorAll('.basc-mobile-nav-link').forEach(function (link) {
            link.addEventListener('click', function () { toggleDrawer(false); });
        });
    }

    // 4. FAQ Accordion
    document.querySelectorAll('.basc-faq-q').forEach(function (btn) {
        btn.addEventListener('click', function () {
            var item = btn.closest('.basc-faq-item');
            var ans = item.querySelector('.basc-faq-a');
            var isOpen = item.classList.contains('is-open');

            document.querySelectorAll('.basc-faq-item').forEach(function (other) {
                other.classList.remove('is-open');
                other.querySelector('.basc-faq-a').style.maxHeight = null;
            });

            if (!isOpen) {
                item.classList.add('is-open');
                ans.style.maxHeight = ans.scrollHeight + 'px';
            } else {
                ans.style.maxHeight = null;
            }
        });
    });

    // 5. Lọc nhóm sản phẩm (Keo Epoxy 2 thành phần / Công cụ thi công)
    document.querySelectorAll('.basc-tab-btn').forEach(function (tab) {
        tab.addEventListener('click', function () {
            var filter = tab.getAttribute('data-filter');
            document.querySelectorAll('.basc-tab-btn').forEach(function (t) {
                t.classList.remove('is-active');
            });
            tab.classList.add('is-active');

            document.querySelectorAll('.basc-product-card').forEach(function (card) {
                var group = card.getAttribute('data-group');
                if (filter === 'all' || group === filter) {
                    card.classList.remove('is-hidden');
                } else {
                    card.classList.add('is-hidden');
                }
            });
        });
    });

    // 6. Toast & Cart Counter
    var cartCount = 0;
    var badge = document.getElementById('basc-cart-count');
    var toast = document.getElementById('basc-toast');
    var toastTimer = null;

    function showToast(msg) {
        if (!toast) return;
        toast.textContent = msg;
        toast.classList.add('is-visible');
        clearTimeout(toastTimer);
        toastTimer = setTimeout(function () {
            toast.classList.remove('is-visible');
        }, 2800);
    }

    document.querySelectorAll('.js-add-cart').forEach(function (btn) {
        btn.addEventListener('click', function () {
            cartCount += 1;
            if (badge) badge.textContent = cartCount;
            var name = btn.getAttribute('data-name') || 'Sản phẩm';
            showToast('Đã thêm "' + name + '" vào giỏ hàng (' + cartCount + ')');
        });
    });

    var cartBtn = document.getElementById('basc-cart-btn');
    if (cartBtn) {
        cartBtn.addEventListener('click', function () {
            if (cartCount === 0) {
                showToast('Giỏ hàng đang trống. Hãy chọn sản phẩm bên dưới!');
            } else {
                showToast('Bạn đang có ' + cartCount + ' sản phẩm. Vui lòng để lại SĐT bên dưới để chốt đơn!');
                var cta = document.getElementById('final-cta');
                if (cta) cta.scrollIntoView({ behavior: 'smooth' });
            }
        });
    }

    document.querySelectorAll('.js-ugc-item').forEach(function (card) {
        card.addEventListener('click', function () {
            var title = card.getAttribute('data-title') || 'Công trình BASC';
            showToast('Đang mở xem: ' + title);
        });
    });
});
</script>

