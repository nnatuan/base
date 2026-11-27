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
                    <li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
                    <li><a href="<?php echo base_url('gioi-thieu'); ?>">Giới thiệu công ty</a></li>
                    <li><a href="<?php echo base_url('san-pham'); ?>">Sản phẩm vật tư ron gạch</a></li>
                    <li><a href="<?php echo base_url('dich-vu'); ?>">Dịch vụ thi công trọn gói</a></li>
                    <li><a href="<?php echo base_url('tin-tuc'); ?>">Tin tức &amp; Kinh nghiệm</a></li>
                    <li><a href="<?php echo base_url('lien-he'); ?>">Liên hệ tư vấn</a></li>
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
    <button type="button" class="basc-float-btn basc-float-top" id="basc-scroll-top" title="Lên đầu trang" aria-label="Cuộn lên đầu trang">
        <i class="fa-solid fa-chevron-up"></i>
    </button>
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

<!-- Modal Popup Giỏ Hàng & Đặt Hàng Nhanh -->
<div class="basc-cart-modal" id="basc-cart-modal" aria-hidden="true" role="dialog">
    <div class="basc-cart-backdrop" id="basc-cart-backdrop"></div>
    <div class="basc-cart-dialog">
        <div class="basc-cart-head">
            <h3 class="basc-cart-title">
                <i class="fa-solid fa-cart-shopping"></i> Giỏ Hàng Của Bạn
            </h3>
            <button type="button" class="basc-cart-close" id="basc-cart-close" aria-label="Đóng giỏ hàng">&times;</button>
        </div>
        <div class="basc-cart-content" id="basc-cart-content">
            <!-- Render động bằng Javascript -->
        </div>
    </div>
</div>

<!-- Toast thông báo toàn trang -->
<div class="basc-toast" id="basc-toast"></div>

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
    var scrollTopBtn = document.getElementById('basc-scroll-top');
    window.addEventListener('scroll', function () {
        if (navbar) {
            if (window.scrollY > 20) navbar.classList.add('is-scrolled');
            else navbar.classList.remove('is-scrolled');
        }
        if (scrollTopBtn) {
            if (window.scrollY > 300) {
                scrollTopBtn.classList.add('is-visible');
            } else {
                scrollTopBtn.classList.remove('is-visible');
            }
        }
    });

    if (scrollTopBtn) {
        scrollTopBtn.addEventListener('click', function () {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
    }

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

    // 5. Lọc nhóm sản phẩm
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

    // 6. Toast Notification
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

    // 7. QUẢN LÝ GIỎ HÀNG (BASC_CART)
    var CART_STORAGE_KEY = 'basc_cart';
    var cartBadge = document.getElementById('basc-cart-count');
    var cartModal = document.getElementById('basc-cart-modal');
    var cartBackdrop = document.getElementById('basc-cart-backdrop');
    var cartCloseBtn = document.getElementById('basc-cart-close');
    var cartContent = document.getElementById('basc-cart-content');

    function getCart() {
        try {
            var raw = localStorage.getItem(CART_STORAGE_KEY);
            return raw ? JSON.parse(raw) : [];
        } catch (e) {
            return [];
        }
    }

    function saveCart(cart) {
        localStorage.setItem(CART_STORAGE_KEY, JSON.stringify(cart));
        updateCartBadge();
    }

    function updateCartBadge() {
        var cart = getCart();
        var totalQty = cart.reduce(function (sum, it) { return sum + (it.qty || 0); }, 0);
        if (cartBadge) {
            cartBadge.textContent = totalQty;
        }
    }

    function formatVND(num) {
        return new Intl.NumberFormat('vi-VN').format(num) + 'đ';
    }

    function openCartModal() {
        renderCartModal();
        if (cartModal) {
            cartModal.classList.add('is-open');
            cartModal.setAttribute('aria-hidden', 'false');
            document.body.style.overflow = 'hidden';
        }
    }

    function closeCartModal() {
        if (cartModal) {
            cartModal.classList.remove('is-open');
            cartModal.setAttribute('aria-hidden', 'true');
            document.body.style.overflow = '';
        }
    }

    if (cartCloseBtn) cartCloseBtn.addEventListener('click', closeCartModal);
    if (cartBackdrop) cartBackdrop.addEventListener('click', closeCartModal);

    // Mở giỏ hàng khi click icon giỏ hàng trên header
    var cartBtn = document.getElementById('basc-cart-btn');
    if (cartBtn) {
        cartBtn.addEventListener('click', function (e) {
            e.preventDefault();
            openCartModal();
        });
    }

    // Hàm thêm sản phẩm vào giỏ hàng dùng chung
    function addItemToCart(item, showNotification) {
        var id = parseInt(item.id || '0', 10);
        var name = item.name || 'Sản phẩm BASC';
        var price = parseFloat(item.price || '0');
        var priceStr = item.priceStr || (price > 0 ? formatVND(price) : 'Liên hệ');
        var icon = item.icon || 'fa-box-open';
        var img = item.img || '';
        var qty = parseInt(item.qty || '1', 10);
        if (isNaN(qty) || qty < 1) qty = 1;

        var cart = getCart();
        var existingIndex = cart.findIndex(function (it) {
            return (id > 0 && it.id === id) || (it.name === name);
        });

        if (existingIndex > -1) {
            cart[existingIndex].qty += qty;
            if (img && !cart[existingIndex].img) {
                cart[existingIndex].img = img;
            }
        } else {
            cart.push({
                id: id,
                name: name,
                price: price,
                priceStr: priceStr,
                icon: icon,
                img: img,
                qty: qty
            });
        }

        saveCart(cart);
        if (showNotification !== false) {
            showToast('Đã thêm ' + (qty > 1 ? qty + ' x ' : '') + '"' + name + '" vào giỏ hàng!');
        }
    }

    // Thêm vào giỏ từ nút .js-add-cart
    document.querySelectorAll('.js-add-cart').forEach(function (btn) {
        btn.addEventListener('click', function (e) {
            if (e) {
                e.preventDefault();
                e.stopPropagation();
            }
            var id = parseInt(btn.getAttribute('data-id') || '0', 10);
            var name = btn.getAttribute('data-name') || 'Sản phẩm BASC';
            var price = parseFloat(btn.getAttribute('data-price') || '0');
            var priceStr = btn.getAttribute('data-price-str') || formatVND(price);
            var icon = btn.getAttribute('data-icon') || 'fa-box-open';
            var img = btn.getAttribute('data-img') || '';
            var qty = parseInt(btn.getAttribute('data-qty') || '1', 10);
            if (isNaN(qty) || qty < 1) qty = 1;

            addItemToCart({
                id: id,
                name: name,
                price: price,
                priceStr: priceStr,
                icon: icon,
                img: img,
                qty: qty
            }, true);
        });
    });

    // Render nội dung bên trong Popup Giỏ hàng
    function renderCartModal() {
        if (!cartContent) return;
        var cart = getCart();

        if (cart.length === 0) {
            cartContent.innerHTML = 
                '<div class="basc-cart-empty">' +
                    '<div class="basc-cart-empty-icon"><i class="fa-solid fa-cart-arrow-down"></i></div>' +
                    '<p style="font-size:1.05rem;font-weight:600;margin-bottom:6px;">Giỏ hàng của bạn đang trống</p>' +
                    '<p style="font-size:0.88rem;color:#94A3B8;">Hãy dạo qua các sản phẩm keo ron và dụng cụ để chọn mua nhé!</p>' +
                    '<button type="button" class="btn-basc btn-basc-cta basc-cart-empty-btn" id="js-cart-shop-now">' +
                        '<i class="fa-solid fa-bag-shopping"></i> Khám phá sản phẩm ngay' +
                    '</button>' +
                '</div>';

            var shopNowBtn = document.getElementById('js-cart-shop-now');
            if (shopNowBtn) {
                shopNowBtn.addEventListener('click', function () {
                    closeCartModal();
                    var sec = document.getElementById('best-sellers');
                    if (sec) sec.scrollIntoView({ behavior: 'smooth' });
                });
            }
            return;
        }

        var totalAmount = 0;
        var itemsHtml = '';

        cart.forEach(function (it, idx) {
            var itemTotal = (it.price || 0) * (it.qty || 1);
            totalAmount += itemTotal;

            var thumbHtml = it.img 
                ? '<img src="' + it.img + '" alt="' + it.name + '">' 
                : '<i class="fa-solid ' + (it.icon || 'fa-box-open') + '"></i>';

            itemsHtml += 
                '<div class="basc-cart-item" data-idx="' + idx + '">' +
                    '<div class="basc-cart-item-thumb">' +
                        thumbHtml +
                    '</div>' +
                    '<div class="basc-cart-item-info">' +
                        '<h4 class="basc-cart-item-name" title="' + it.name + '">' + it.name + '</h4>' +
                        '<div class="basc-cart-item-price">' + (it.price > 0 ? formatVND(it.price) : 'Liên hệ') + '</div>' +
                    '</div>' +
                    '<div class="basc-cart-qty-ctrl">' +
                        '<button type="button" class="basc-cart-qty-btn js-cart-minus" data-idx="' + idx + '" title="Giảm">−</button>' +
                        '<input type="text" class="basc-cart-qty-val" value="' + it.qty + '" readonly>' +
                        '<button type="button" class="basc-cart-qty-btn js-cart-plus" data-idx="' + idx + '" title="Tăng">+</button>' +
                    '</div>' +
                    '<div class="basc-cart-item-total">' +
                        (it.price > 0 ? formatVND(itemTotal) : 'Liên hệ') +
                    '</div>' +
                    '<button type="button" class="basc-cart-item-del js-cart-del" data-idx="' + idx + '" title="Xóa khỏi giỏ">' +
                        '<i class="fa-solid fa-trash-can"></i>' +
                    '</button>' +
                '</div>';
        });

        cartContent.innerHTML = 
            '<div class="basc-cart-list">' + itemsHtml + '</div>' +
            '<div class="basc-cart-total-box">' +
                '<span>Tổng cộng tiền hàng:</span>' +
                '<strong>' + (totalAmount > 0 ? formatVND(totalAmount) : 'Liên hệ') + '</strong>' +
            '</div>' +
            '<div class="basc-cart-checkout-section">' +
                '<h4 class="basc-cart-sec-title">' +
                    '<i class="fa-solid fa-truck-fast"></i> Thông tin nhận hàng (Giao hàng COD tận nơi)' +
                '</h4>' +
                '<form id="basc-cart-form">' +
                    '<div class="basc-cart-form-grid">' +
                        '<input type="text" name="cfullname" placeholder="Họ và tên của bạn *" required>' +
                        '<input type="tel" name="cphone" placeholder="Số điện thoại (Zalo) *" required>' +
                        '<input type="text" name="caddress" placeholder="Địa chỉ giao hàng (Số nhà, đường, quận/huyện) *" class="full-span" required>' +
                        '<textarea name="cnote" placeholder="Ghi chú đơn hàng (Thời gian nhận, yêu cầu màu sắc keo...)" rows="2" class="full-span"></textarea>' +
                    '</div>' +
                    '<button type="submit" class="basc-cart-btn-submit" id="js-btn-submit-order">' +
                        '<i class="fa-solid fa-shield-halved"></i> XÁC NHẬN ĐẶT HÀNG' +
                    '</button>' +
                '</form>' +
            '</div>';

        // Gắn sự kiện tăng / giảm / xóa cho các item
        cartContent.querySelectorAll('.js-cart-plus').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var idx = parseInt(btn.getAttribute('data-idx'), 10);
                var c = getCart();
                if (c[idx]) {
                    c[idx].qty += 1;
                    saveCart(c);
                    renderCartModal();
                }
            });
        });

        cartContent.querySelectorAll('.js-cart-minus').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var idx = parseInt(btn.getAttribute('data-idx'), 10);
                var c = getCart();
                if (c[idx]) {
                    if (c[idx].qty > 1) {
                        c[idx].qty -= 1;
                    } else {
                        c.splice(idx, 1);
                    }
                    saveCart(c);
                    renderCartModal();
                }
            });
        });

        cartContent.querySelectorAll('.js-cart-del').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var idx = parseInt(btn.getAttribute('data-idx'), 10);
                var c = getCart();
                if (c[idx]) {
                    var removedName = c[idx].name;
                    c.splice(idx, 1);
                    saveCart(c);
                    renderCartModal();
                    showToast('Đã xóa "' + removedName + '" khỏi giỏ hàng');
                }
            });
        });

        // Xử lý gửi đặt hàng qua AJAX
        var orderForm = document.getElementById('basc-cart-form');
        var submitBtn = document.getElementById('js-btn-submit-order');
        if (orderForm) {
            orderForm.addEventListener('submit', function (e) {
                e.preventDefault();
                var currentCart = getCart();
                if (currentCart.length === 0) {
                    showToast('Giỏ hàng đang trống!');
                    return;
                }

                var formData = {
                    cfullname: orderForm.querySelector('[name="cfullname"]').value.trim(),
                    cphone: orderForm.querySelector('[name="cphone"]').value.trim(),
                    caddress: orderForm.querySelector('[name="caddress"]').value.trim(),
                    cnote: orderForm.querySelector('[name="cnote"]').value.trim(),
                    items: currentCart
                };

                if (!formData.cfullname || !formData.cphone || !formData.caddress) {
                    showToast('Vui lòng điền đầy đủ họ tên, SĐT và địa chỉ nhận hàng.');
                    return;
                }

                if (submitBtn) {
                    submitBtn.disabled = true;
                    submitBtn.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Đang tạo đơn hàng...';
                }

                fetch('<?php echo base_url('cart/checkout'); ?>', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(formData)
                })
                .then(function (res) { return res.json(); })
                .then(function (data) {
                    if (data.status === 'success') {
                        // Xóa giỏ hàng khi đặt thành công
                        saveCart([]);
                        cartContent.innerHTML = 
                            '<div class="basc-cart-success-box">' +
                                '<div class="basc-cart-success-icon"><i class="fa-solid fa-circle-check"></i></div>' +
                                '<h4>ĐẶT HÀNG THÀNH CÔNG!</h4>' +
                                '<p>Mã đơn hàng của bạn: <strong style="color:var(--basc-primary);font-size:1.1rem;">' + (data.order_code || '') + '</strong></p>' +
                                '<p style="color:#475569;margin-bottom:20px;">' + data.message + '</p>' +
                                '<button type="button" class="btn-basc btn-basc-cta" id="js-cart-close-success">' +
                                    '<i class="fa-solid fa-check"></i> Hoàn tất' +
                                '</button>' +
                            '</div>';

                        var closeSuccessBtn = document.getElementById('js-cart-close-success');
                        if (closeSuccessBtn) {
                            closeSuccessBtn.addEventListener('click', closeCartModal);
                        }

                        setTimeout(function () {
                            closeCartModal();
                        }, 3500);
                    } else {
                        showToast(data.message || 'Có lỗi xảy ra, vui lòng thử lại!');
                        if (submitBtn) {
                            submitBtn.disabled = false;
                            submitBtn.innerHTML = '<i class="fa-solid fa-shield-halved"></i> XÁC NHẬN ĐẶT HÀNG';
                        }
                    }
                })
                .catch(function (err) {
                    showToast('Lỗi kết nối máy chủ, vui lòng thử lại sau.');
                    if (submitBtn) {
                        submitBtn.disabled = false;
                        submitBtn.innerHTML = '<i class="fa-solid fa-shield-halved"></i> XÁC NHẬN ĐẶT HÀNG';
                    }
                });
            });
        }
    }

    // Khởi tạo badge giỏ hàng từ localStorage khi vừa vào web
    updateCartBadge();

    // Expose đối tượng giỏ hàng ra window toàn cục cho toàn bộ các trang gọi
    window.BASC_CART = {
        getCart: getCart,
        saveCart: saveCart,
        addItem: addItemToCart,
        openModal: openCartModal,
        closeModal: closeCartModal,
        showToast: showToast
    };

    // ==========================================
    // HERO SLIDER CONTROLLER (ĐẦU TRANG CHỦ)
    // ==========================================
    var heroSlider = document.getElementById('basc-hero-slider');
    if (heroSlider) {
        var slides = heroSlider.querySelectorAll('.basc-slide');
        var dots = heroSlider.querySelectorAll('.basc-slider-dot');
        var prevBtn = heroSlider.querySelector('.basc-slider-prev');
        var nextBtn = heroSlider.querySelector('.basc-slider-next');
        var currentSlide = 0;
        var slideCount = slides.length;
        var slideTimer = null;
        var slideInterval = 5000;

        function goToSlide(index) {
            if (index < 0) {
                index = slideCount - 1;
            } else if (index >= slideCount) {
                index = 0;
            }
            currentSlide = index;

            slides.forEach(function (slide, idx) {
                if (idx === currentSlide) {
                    slide.classList.add('is-active');
                } else {
                    slide.classList.remove('is-active');
                }
            });

            dots.forEach(function (dot, idx) {
                if (idx === currentSlide) {
                    dot.classList.add('is-active');
                } else {
                    dot.classList.remove('is-active');
                }
            });
        }

        function startAutoPlay() {
            stopAutoPlay();
            if (slideCount > 1) {
                slideTimer = setInterval(function () {
                    goToSlide(currentSlide + 1);
                }, slideInterval);
            }
        }

        function stopAutoPlay() {
            if (slideTimer) {
                clearInterval(slideTimer);
                slideTimer = null;
            }
        }

        if (nextBtn) {
            nextBtn.addEventListener('click', function () {
                goToSlide(currentSlide + 1);
                startAutoPlay();
            });
        }

        if (prevBtn) {
            prevBtn.addEventListener('click', function () {
                goToSlide(currentSlide - 1);
                startAutoPlay();
            });
        }

        dots.forEach(function (dot) {
            dot.addEventListener('click', function () {
                var targetIdx = parseInt(dot.getAttribute('data-slide'), 10);
                if (!isNaN(targetIdx)) {
                    goToSlide(targetIdx);
                    startAutoPlay();
                }
            });
        });

        // Tạm dừng khi rê chuột vào slider
        heroSlider.addEventListener('mouseenter', stopAutoPlay);
        heroSlider.addEventListener('mouseleave', startAutoPlay);

        // Hỗ trợ vuốt chạm trên màn hình cảm ứng
        var touchStartX = 0;
        var touchEndX = 0;
        heroSlider.addEventListener('touchstart', function (e) {
            touchStartX = e.changedTouches[0].screenX;
            stopAutoPlay();
        }, { passive: true });

        heroSlider.addEventListener('touchend', function (e) {
            touchEndX = e.changedTouches[0].screenX;
            var diff = touchStartX - touchEndX;
            if (Math.abs(diff) > 40) {
                if (diff > 0) {
                    goToSlide(currentSlide + 1); // Vuốt sang trái -> slide tiếp
                } else {
                    goToSlide(currentSlide - 1); // Vuốt sang phải -> slide trước
                }
            }
            startAutoPlay();
        }, { passive: true });

        // Bắt đầu tự động chuyển slide
        startAutoPlay();
    }

    document.querySelectorAll('.js-ugc-item').forEach(function (card) {
        card.addEventListener('click', function () {
            var title = card.getAttribute('data-title') || 'Công trình BASC';
            showToast('Đang mở xem: ' + title);
        });
    });
});
</script>

