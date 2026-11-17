<?php
$this->load->view('header');
$this->load->view('header_end');
$this->load->view('modules/mod_header');

$cfg_hotline = trim((string) get_value_by_config(12));
$cfg_zalo    = trim((string) get_value_by_config(17));
$hotline_tel = preg_replace('/[^0-9+]/', '', $cfg_hotline);

// Helper lấy nội dung giao diện từ base_tmodule theo ccode và field (cmodule, ctag, cnote, clink, cimage, eng_cnote)
$sec_modules = !empty($sec_modules) ? $sec_modules : [];
$mod = function($code, $field = 'cmodule', $default = '') use ($sec_modules) {
    if (!empty($sec_modules[$code][$field]) && trim((string)$sec_modules[$code][$field]) !== '') {
        return $sec_modules[$code][$field];
    }
    return $default;
};

// Hero configurations from base_tmodule with fallback
$hero_rating   = $mod('sec_hero', 'ctag', '4.9/5 từ 3.500+ công trình thực tế');
$hero_title    = $mod('sec_hero', 'cmodule', 'Đường Ron Gạch <span>Sáng Bóng Bền Đẹp</span> – Chống Thấm & Nấm Mốc 100%');
$hero_badge    = $mod('sec_hero', 'cimage', 'Chuẩn Đức');

// Hero bullets from base_tmodule (ccode = 'hero_bullet')
$default_bullets = [
    'Keo chà ron Epoxy 2 thành phần cao cấp, không bong tróc, không ố vàng',
    'Thi công trọn gói sạch gọn trong ngày, bảo hành màu ron lên đến 10 năm',
    'Hơn 24 bảng màu thời thượng phù hợp mọi loại gạch men, đá hoa cương',
];
$render_bullets = [];
if (!empty($hero_bullets)) {
    foreach ($hero_bullets as $hb) {
        if (!empty($hb['cmodule'])) $render_bullets[] = $hb['cmodule'];
    }
}
if (empty($render_bullets)) {
    $render_bullets = $default_bullets;
}

// Hero stats from base_tmodule (ccode = 'hero_stat')
$default_stats = [
    ['num' => '10 Năm', 'lbl' => 'Bảo hành màu ron'],
    ['num' => '3.500+', 'lbl' => 'Công trình hoàn thiện'],
    ['num' => '24 Giờ', 'lbl' => 'Khảo sát & thi công'],
];
$render_stats = [];
if (!empty($hero_stats)) {
    foreach ($hero_stats as $hs) {
        $render_stats[] = ['num' => $hs['cmodule'], 'lbl' => $hs['ctag']];
    }
}
if (empty($render_stats)) {
    $render_stats = $default_stats;
}

$hero_c_title  = $mod('hero_card', 'cmodule', 'BASC Epoxy Pro Series');
$hero_c_desc   = $mod('hero_card', 'cnote', 'Độ bám dính vượt trội • Chống thấm tuyệt đối');

// Fallback arrays if database tables haven't been imported yet
$fallback_products = [
    [
        'ckeyword' => 'epoxy',
        'ctag' => 'Bán chạy #1',
        'cimage' => 'fa-fill-drip',
        'cloai_tin' => '4.9 (412)',
        'cproducts' => 'Keo Chà Ron Epoxy 2 Thành Phần BASC Pro (400ml)',
        'cdescription' => 'Chai đôi A+B tỷ lệ chuẩn, chống thấm 100%, bề mặt bóng mịn như men sứ, không đen ron.',
        'fprice_sale' => 185000,
        'fprice' => 230000,
    ],
    [
        'ckeyword' => 'epoxy',
        'ctag' => 'Chống thấm',
        'cimage' => 'fa-droplet-slash',
        'cloai_tin' => '4.9 (286)',
        'cproducts' => 'Keo Ron Epoxy Chống Thấm Nhà Tắm & Hồ Bơi',
        'cdescription' => 'Chuyên dụng khu vực ẩm ướt, ban công, sân thượng, kháng hóa chất tẩy rửa & rêu mốc.',
        'fprice_sale' => 210000,
        'fprice' => 260000,
    ],
    [
        'ckeyword' => 'epoxy',
        'ctag' => 'Ánh kim sang trọng',
        'cimage' => 'fa-gem',
        'cloai_tin' => '4.9 (164)',
        'cproducts' => 'Keo Ron Epoxy Kim Tuyến Ánh Vàng / Bạc',
        'cdescription' => 'Hiệu ứng ánh nhũ sang trọng cho phòng khách, sảnh biệt thự, gạch granite & porcelain.',
        'fprice_sale' => 225000,
        'fprice' => 275000,
    ],
    [
        'ckeyword' => 'tools',
        'ctag' => 'Chuyên dụng',
        'cimage' => 'fa-gun',
        'cloai_tin' => '4.9 (320)',
        'cproducts' => 'Súng Bắn Keo 2 Thành Phần Hợp Kim Trợ Lực',
        'cdescription' => 'Thiết kế 2 piston đẩy song song ép đều 2 ống keo A & B, cò bóp nhẹ, độ bền cao.',
        'fprice_sale' => 165000,
        'fprice' => 210000,
    ],
    [
        'ckeyword' => 'tools',
        'ctag' => 'Combo chuẩn thợ',
        'cimage' => 'fa-toolbox',
        'cloai_tin' => '4.8 (195)',
        'cproducts' => 'Bộ Bi Cầu Miết Ron & Dao Sủi Keo Thừa',
        'cdescription' => 'Bi cầu thép vê tròn nén chặt mạch ron, kèm dao sủi làm sạch keo thừa hai bên mép gạch.',
        'fprice_sale' => 95000,
        'fprice' => 130000,
    ],
    [
        'ckeyword' => 'tools',
        'ctag' => 'Phụ kiện thiết yếu',
        'cimage' => 'fa-screwdriver-wrench',
        'cloai_tin' => '4.9 (240)',
        'cproducts' => 'Bộ Vòi Trộn Xoắn & Vít Cạo Mạch Ron Cũ',
        'cdescription' => 'Vòi trộn xoắn ốc giúp hòa quyện đều 2 thành phần keo + vít cạo sạch xi măng khe gạch.',
        'fprice_sale' => 65000,
        'fprice' => 90000,
    ],
    [
        'ckeyword' => 'tools',
        'ctag' => 'Cải tạo ron cũ',
        'cimage' => 'fa-compact-disc',
        'cloai_tin' => '4.8 (118)',
        'cproducts' => 'Máy Cắt Rãnh Ron Mini & Lưỡi Cắt Chuyên Dụng',
        'cdescription' => 'Hỗ trợ nạo vét ron xi măng cũ nhanh chóng, đường cắt chuẩn 1.5–3mm không mẻ cạnh gạch.',
        'fprice_sale' => 450000,
        'fprice' => 550000,
    ],
    [
        'ckeyword' => 'epoxy',
        'ctag' => 'Trọn bộ tự làm',
        'cimage' => 'fa-box-open',
        'cloai_tin' => '4.9 (275)',
        'cproducts' => 'Combo Tự Thi Công: 2 Keo Epoxy + Súng + Bi + Dao Sủi',
        'cdescription' => 'Đủ dụng cụ tự chà ron cho ~25–30m² sàn gạch tại nhà, kèm hướng dẫn chi tiết.',
        'fprice_sale' => 490000,
        'fprice' => 620000,
    ],
];
$render_products = !empty($best_sellers) ? $best_sellers : $fallback_products;

$fallback_tabs = [
    ['ccode' => 'keo-ron-epoxy', 'ctag' => 'epoxy', 'ccat_products' => 'Keo Ron Epoxy 2 Thành Phần'],
    ['ccode' => 'dung-cu-thi-cong', 'ctag' => 'tools', 'ccat_products' => 'Công Cụ & Dụng Cụ Thi Công'],
];
$render_tabs = !empty($cat_tabs) ? $cat_tabs : $fallback_tabs;

$fallback_categories = [
    ['cimage' => 'fa-fill-drip', 'ccat_products' => 'Keo Ron Epoxy 2 Thành Phần'],
    ['cimage' => 'fa-gem', 'ccat_products' => 'Keo Ron Ánh Kim Tuyến'],
    ['cimage' => 'fa-gun', 'ccat_products' => 'Súng Bắn Keo 2 Thành Phần'],
    ['cimage' => 'fa-tornado', 'ccat_products' => 'Vòi Trộn Keo Xoắn Ốc'],
    ['cimage' => 'fa-circle-dot', 'ccat_products' => 'Bi Cầu Miết Vê Ron'],
    ['cimage' => 'fa-screwdriver-wrench', 'ccat_products' => 'Dao Sủi & Vít Cạo Ron'],
    ['cimage' => 'fa-compact-disc', 'ccat_products' => 'Máy Cắt Ron Mini'],
    ['cimage' => 'fa-helmet-safety', 'ccat_products' => 'Dịch Vụ Thi Công Trọn Gói'],
];
$render_categories = !empty($categories) ? $categories : $fallback_categories;

$fallback_services = [
    [
        'cview' => 'fa-house-chimney',
        'ctitle' => 'Nhà Ở Dân Dụng & Biệt Thự',
        'cshort_content' => 'Thi công chà ron toàn bộ sàn và tường cho nhà phố, nhà cấp 4, căn hộ chung cư, biệt thự cao cấp với đường ron đều, phẳng mịn.',
        'ctag' => 'Nhà phố,Chung cư,Biệt thự'
    ],
    [
        'cview' => 'fa-bath',
        'ctitle' => 'Phòng Tắm, Bếp & Khu Ẩm Ướt',
        'cshort_content' => 'Chống thấm tuyệt đối cho nhà vệ sinh, phòng tắm, khu bếp nấu, ban công, sân thượng và hồ bơi – ngăn ố vàng & nấm mốc.',
        'ctag' => 'Nhà vệ sinh,Phòng bếp,Ban công'
    ],
    [
        'cview' => 'fa-broom',
        'ctitle' => 'Cạo Ron Cũ & Phục Hồi Ron Mới',
        'cshort_content' => 'Dùng máy cắt ron kết hợp hút bụi làm sạch lớp xi măng cũ bị đen, bong tróc và bắn lại keo Epoxy mới sáng bóng trong ngày.',
        'ctag' => 'Nhà đang ở,Không bụi,Xử lý ố đen'
    ],
    [
        'cview' => 'fa-border-all',
        'ctitle' => 'Chà Ron Công Trình Mới Ốp Lát',
        'cshort_content' => 'Thi công chuẩn kỹ thuật cho mọi dòng gạch Ceramic, Porcelain, Granite, gạch khổ lớn, gạch giả gỗ và gạch Mosaic.',
        'ctag' => 'Porcelain,Granite,Gạch khổ lớn'
    ],
];
$render_services = !empty($services) ? $services : $fallback_services;

$fallback_logos = [
    ['cmodule' => 'VIETCERAMICS'],
    ['cmodule' => 'ĐỒNG TÂM'],
    ['cmodule' => 'PRIME GROUP'],
    ['cmodule' => 'VIGLACERA'],
    ['cmodule' => 'SIKA PARTNER'],
    ['cmodule' => 'XÂY DỰNG VIỆT'],
];
$render_logos = !empty($partner_logos) ? $partner_logos : $fallback_logos;

$fallback_testimonials = [
    [
        'cimage' => 'MH',
        'cmodule' => 'Anh Minh Hoàng',
        'ctag' => 'Chủ căn hộ • Quận 7, TP.HCM',
        'cnote' => '“Nhà tắm nhà mình trước đây ron xi măng đen kịt và hay bong. Sau khi đổi sang keo Epoxy BASC và thuê đội thợ làm lại, đường ron trắng bóng như mới suốt 2 năm nay.”'
    ],
    [
        'cimage' => 'TT',
        'cmodule' => 'KTS. Trần Tuấn',
        'ctag' => 'Giám đốc thi công • TP. Thủ Đức',
        'cnote' => '“Là nhà thầu hoàn thiện nội thất, mình nhập keo chà ron BASC cho hơn 20 công trình biệt thự. Keo dẻo, dễ miết, bảng màu cực chuẩn và giao hàng rất đúng hẹn.”'
    ],
    [
        'cimage' => 'LN',
        'cmodule' => 'Chị Lan Ngọc',
        'ctag' => 'Khách hàng mua vật tư • Bình Thạnh',
        'cnote' => '“Tự mua bộ keo + súng bắn của BASC về làm cho phòng bếp, có video hướng dẫn chi tiết nên làm rất nhàn. Lau dầu mỡ trên đường ron cực kỳ dễ.”'
    ],
];
$render_testimonials = !empty($testimonials) ? $testimonials : $fallback_testimonials;

$fallback_benefits = [
    [
        'cmodule' => 'Công Nghệ Epoxy 2 Thành Phần Thế Hệ Mới',
        'cnote' => 'Không chứa dung môi độc hại, không co ngót, chịu nhiệt và hóa chất tẩy rửa gia dụng cực tốt.',
    ],
    [
        'cmodule' => 'Đội Ngũ Thợ Chuyên Nghiệp – Sạch Gọn Trong Ngày',
        'cnote' => 'Quy trình mài ron cũ bằng máy hút bụi chuyên dụng, không bụi bẩn, bàn giao mặt sàn sáng bóng ngay trong ngày.',
    ],
    [
        'cmodule' => 'Giá Tận Xưởng – Bảo Hành Chính Hãng 10 Năm',
        'cnote' => 'Chiết khấu hấp dẫn cho nhà thầu và đại lý. Cam kết đổi trả miễn phí nếu sản phẩm không đạt chuẩn.',
    ],
];
$render_benefits = !empty($brand_benefits) ? $brand_benefits : $fallback_benefits;

$fallback_ugcs = [
    ['ctag' => 'Biệt thự Q.2', 'cmodule' => 'Chà ron gạch khổ lớn 120x120'],
    ['ctag' => 'Nhà tắm', 'cmodule' => 'Thay ron cũ mốc đen sau 3 giờ'],
    ['ctag' => 'Phòng bếp', 'cmodule' => 'Ron Epoxy chống bám dầu mỡ'],
    ['ctag' => 'Hồ bơi', 'cmodule' => 'Keo ron chuyên dụng chịu clo'],
    ['ctag' => 'Hướng dẫn', 'cmodule' => 'Cách tự bắn ron chuẩn thợ tại nhà'],
];
$render_ugcs = !empty($ugc_items) ? $ugc_items : $fallback_ugcs;

$fallback_metrics = [
    ['cmodule' => '10+ Năm', 'ctag' => 'Kinh nghiệm ngành vật tư & thi công hoàn thiện'],
    ['cmodule' => '3.500+', 'ctag' => 'Công trình nhà ở, biệt thự & khách sạn đã bàn giao'],
    ['cmodule' => '24+ Màu', 'ctag' => 'Bảng màu keo ron đa dạng, phối hợp mọi vân gạch'],
    ['cmodule' => '99.2%', 'ctag' => 'Khách hàng hài lòng và giới thiệu người thân'],
];
$render_metrics = !empty($about_metrics) ? $about_metrics : $fallback_metrics;

$fallback_faqs = [
    [
        'cmodule' => 'Keo chà ron Epoxy BASC khô hoàn toàn trong bao lâu?',
        'cnote'   => 'Sau khi thi công, bề mặt keo khô se sau khoảng 2–3 giờ và đóng rắn hoàn toàn sau 12–24 giờ. Bạn có thể đi lại nhẹ nhàng sau 4 giờ và vệ sinh nước thoải mái sau 24 giờ.'
    ],
    [
        'cmodule' => 'Nhà đã lát gạch cũ bị đen ron có thi công lại bằng keo BASC được không?',
        'cnote'   => 'Hoàn toàn được. Đội ngũ BASC sẽ dùng máy cắt rãnh chuyên dụng kèm máy hút bụi để lấy sạch lớp ron xi măng cũ bị ố mốc, sau đó bắn mới bằng keo Epoxy giúp sàn nhà đẹp như vừa mới ốp lát.'
    ],
    [
        'cmodule' => '1 tuýp keo chà ron 400ml dùng được cho diện tích bao nhiêu m²?',
        'cnote'   => 'Tùy vào kích thước gạch và độ rộng khe ron (thường 2–3mm), 1 tuýp 400ml có thể chà được khoảng 12–18m² đối với gạch 60x60cm hoặc 20–25m² đối với gạch 80x80cm.'
    ],
    [
        'cmodule' => 'BASC có giao hàng toàn quốc và hỗ trợ thợ thi công không?',
        'cnote'   => 'BASC giao hàng hỏa tốc toàn quốc (nhận hàng kiểm tra trước khi thanh toán) và có đội ngũ thợ thi công trực tiếp tại TP.HCM, Bình Dương, Đồng Nai, Hà Nội cùng các tỉnh lân cận.'
    ],
    [
        'cmodule' => 'Chính sách bảo hành đường ron tại BASC như thế nào?',
        'cnote'   => 'Toàn bộ công trình do BASC thi công đều được cấp phiếu bảo hành điện tử lên đến 10 năm cho lỗi bong tróc, thấm nước và ố màu ron.'
    ],
];
$render_faqs = !empty($faqs) ? $faqs : $fallback_faqs;
?>

<main>
    <!-- 1. HERO SECTION (NẠP TỪ base_tmodule) -->
    <section class="basc-hero">
        <div class="basc-container basc-hero-grid">
            <div class="basc-hero-content">
                <div class="basc-rating-pill">
                    <span class="basc-stars">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                    </span>
                    <span><?php echo htmlspecialchars($hero_rating); ?></span>
                </div>

                <h1 class="basc-hero-title">
                    <?php echo $hero_title; ?>
                </h1>

                <ul class="basc-hero-bullets">
                    <?php foreach ($render_bullets as $bullet): ?>
                        <li><i class="fa-solid fa-check"></i> <?php echo htmlspecialchars($bullet); ?></li>
                    <?php endforeach; ?>
                </ul>

                <div class="basc-hero-cta">
                    <a href="#best-sellers" class="btn-basc btn-basc-cta">
                        <i class="fa-solid fa-bag-shopping"></i> Mua Vật Tư Ngay
                    </a>
                    <a href="#final-cta" class="btn-basc btn-basc-outline">
                        <i class="fa-solid fa-helmet-safety"></i> Đặt Lịch Thi Công
                    </a>
                </div>
            </div>

            <div class="basc-hero-visual">
                <div class="basc-hero-card">
                    <div class="basc-tile-preview">
                        <div class="basc-tile-grid-demo">
                            <div class="basc-tile-cell"></div>
                            <div class="basc-tile-cell"></div>
                            <div class="basc-tile-cell"></div>
                            <div class="basc-tile-cell"></div>
                            <div class="basc-tile-cell"></div>
                            <div class="basc-tile-cell"></div>
                        </div>
                        <div class="basc-hero-preview-meta">
                            <div>
                                <strong class="basc-hero-preview-title"><?php echo htmlspecialchars($hero_c_title); ?></strong>
                                <span class="basc-hero-preview-sub"><?php echo htmlspecialchars($hero_c_desc); ?></span>
                            </div>
                            <span class="basc-hero-preview-tag"><?php echo htmlspecialchars($hero_badge); ?></span>
                        </div>
                    </div>

                    <div class="basc-hero-stats">
                        <?php foreach ($render_stats as $st): ?>
                        <div class="basc-hero-stat-item">
                            <strong><?php echo htmlspecialchars($st['num']); ?></strong>
                            <span><?php echo htmlspecialchars($st['lbl']); ?></span>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. SOCIAL PROOF #1 (LOGO STRIP - NẠP TỪ base_tmodule ccode='partner_logo') -->
    <section class="basc-logos-strip" aria-label="Đối tác tin dùng">
        <div class="basc-container basc-logos-inner">
            <span class="basc-logos-label"><?php echo htmlspecialchars($mod('sec_logos', 'cmodule', 'Tin dùng & đồng hành cùng:')); ?></span>
            <div class="basc-logos-list">
                <?php foreach ($render_logos as $logo): ?>
                    <span class="basc-partner-badge"><?php echo htmlspecialchars($logo['cmodule']); ?></span>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- 3. BEST SELLERS (SẢN PHẨM BÁN CHẠY - NẠP TỪ base_tproducts) -->
    <section class="section-pad" id="best-sellers">
        <div class="basc-container">
            <div class="section-header">
                <span class="section-eyebrow"><i class="fa-solid fa-fire"></i> <?php echo htmlspecialchars($mod('sec_bestsellers', 'ctag', 'Nhóm sản phẩm chủ lực')); ?></span>
                <h2 class="section-title"><?php echo htmlspecialchars($mod('sec_bestsellers', 'cmodule', 'Keo Ron Epoxy 2 Thành Phần & Dụng Cụ Thi Công')); ?></h2>
                <p class="section-subtitle"><?php echo htmlspecialchars($mod('sec_bestsellers', 'cnote', 'Đầy đủ vật tư keo chà ron Epoxy chai đôi và bộ công cụ chuyên dụng giúp đường ron phẳng mịn, bền đẹp chuẩn thợ.')); ?></p>
            </div>

            <div class="basc-tabs" role="tablist" aria-label="Lọc nhóm sản phẩm">
                <button type="button" class="basc-tab-btn is-active" data-filter="all"><?php echo htmlspecialchars($mod('sec_bestsellers', 'clink', 'Tất cả sản phẩm')); ?></button>
                <?php foreach ($render_tabs as $tab):
                    $tab_filter = !empty($tab['ccode']) ? $tab['ccode'] : (!empty($tab['ctag']) ? $tab['ctag'] : 'cat-' . $tab['nid']);
                    if ($tab_filter === 'epoxy') $tab_filter = 'keo-ron-epoxy';
                    if ($tab_filter === 'tools') $tab_filter = 'dung-cu-thi-cong';
                ?>
                <button type="button" class="basc-tab-btn" data-filter="<?php echo htmlspecialchars($tab_filter); ?>">
                    <?php echo htmlspecialchars($tab['ccat_products']); ?>
                </button>
                <?php endforeach; ?>
            </div>

            <div class="basc-products-grid">
                <?php foreach ($render_products as $item):
                    $group = !empty($item['cat_slug']) ? $item['cat_slug'] : (!empty($item['ckeyword']) ? $item['ckeyword'] : 'keo-ron-epoxy');
                    if ($group === 'epoxy' || $group === 'keo-ron-epoxy-2-thanh-phan') {
                        $group = 'keo-ron-epoxy';
                    } elseif ($group === 'tools' || $group === 'cong-cu-dung-cu-thi-cong') {
                        $group = 'dung-cu-thi-cong';
                    }
                    $badge = !empty($item['ctag']) ? $item['ctag'] : 'Chính hãng';
                    $icon  = !empty($item['cimage']) ? $item['cimage'] : 'fa-fill-drip';
                    if (strpos($icon, 'fa-') === false) {
                        $icon = 'fa-fill-drip';
                    }
                    $rating_val = !empty($item['cloai_tin']) ? $item['cloai_tin'] : '4.9 (250)';
                    $price_sale = isset($item['fprice_sale']) ? (float)$item['fprice_sale'] : 0;
                    $price_old  = isset($item['fprice']) ? (float)$item['fprice'] : 0;
                    $price_str  = $price_sale > 0 ? number_format($price_sale, 0, ',', '.') . 'đ' : 'Liên hệ';
                    $old_str    = $price_old > $price_sale ? number_format($price_old, 0, ',', '.') . 'đ' : '';
                ?>
                <article class="basc-product-card" data-group="<?php echo htmlspecialchars($group); ?>">
                    <span class="basc-product-badge"><?php echo htmlspecialchars($badge); ?></span>
                    <div class="basc-product-thumb">
                        <i class="fa-solid <?php echo htmlspecialchars($icon); ?>"></i>
                    </div>
                    <div class="basc-product-rating">
                        <span class="basc-stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        </span>
                        <span><?php echo htmlspecialchars($rating_val); ?></span>
                    </div>
                    <h3 class="basc-product-name"><?php echo htmlspecialchars($item['cproducts']); ?></h3>
                    <p class="basc-product-desc"><?php echo htmlspecialchars($item['cdescription']); ?></p>
                    <div class="basc-product-price-row">
                        <span class="basc-price-now"><?php echo $price_str; ?></span>
                        <?php if ($old_str !== ''): ?>
                            <span class="basc-price-old"><?php echo $old_str; ?></span>
                        <?php endif; ?>
                    </div>
                    <button type="button" class="basc-add-btn js-add-cart" data-name="<?php echo htmlspecialchars($item['cproducts']); ?>">
                        <i class="fa-solid fa-cart-plus"></i> Thêm vào giỏ
                    </button>
                </article>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- 4. PRODUCT CATEGORIES (DANH MỤC VẬT TƯ - NẠP TỪ base_tcat_products) -->
    <section class="section-pad section-alt" id="categories">
        <div class="basc-container basc-categories-layout">
            <div class="basc-cat-intro">
                <span class="section-eyebrow"><i class="fa-solid fa-layer-group"></i> <?php echo htmlspecialchars($mod('sec_categories', 'ctag', 'Danh mục sản phẩm')); ?></span>
                <h2 class="section-title"><?php echo htmlspecialchars($mod('sec_categories', 'cmodule', 'Keo Ron Epoxy & Công Cụ Hỗ Trợ Thi Công')); ?></h2>
                <p class="section-subtitle basc-cat-intro-subtitle">
                    <?php echo htmlspecialchars($mod('sec_categories', 'cnote', 'Cung cấp đồng bộ từ keo chà ron Epoxy 2 thành phần đến súng bắn keo, vòi trộn xoắn, bi cầu miết ron và dao sủi chuyên dụng.')); ?>
                </p>
                <a href="#final-cta" class="btn-basc btn-basc-primary">
                    <?php echo htmlspecialchars($mod('sec_categories', 'clink', 'Nhận bảng giá sỉ & lẻ')); ?> <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>

            <div class="basc-cat-grid">
                <?php foreach ($render_categories as $cat):
                    $c_icon = !empty($cat['cimage']) ? $cat['cimage'] : 'fa-layer-group';
                    if (strpos($c_icon, 'fa-') === false) {
                        $c_icon = 'fa-layer-group';
                    }
                    $c_slug = !empty($cat['ccode']) ? $cat['ccode'] : '';
                    $link_url = $c_slug !== '' ? base_url('danh-muc/' . $c_slug) : '#final-cta';
                ?>
                <a href="<?php echo $link_url; ?>" class="basc-cat-tile">
                    <div class="basc-cat-icon"><i class="fa-solid <?php echo htmlspecialchars($c_icon); ?>"></i></div>
                    <span class="basc-cat-name"><?php echo htmlspecialchars($cat['ccat_products']); ?></span>
                </a>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- 4B. NHÓM DỊCH VỤ: THI CÔNG KEO CHÀ RON GẠCH (NẠP TỪ base_tnews cat=2) -->
    <section class="section-pad" id="services">
        <div class="basc-container">
            <div class="section-header">
                <span class="section-eyebrow"><i class="fa-solid fa-helmet-safety"></i> <?php echo htmlspecialchars($mod('sec_services', 'ctag', 'Nhóm dịch vụ chuyên nghiệp')); ?></span>
                <h2 class="section-title"><?php echo htmlspecialchars($mod('sec_services', 'cmodule', 'Dịch Vụ Thi Công Keo Chà Ron Gạch Trọn Gói')); ?></h2>
                <p class="section-subtitle"><?php echo htmlspecialchars($mod('sec_services', 'cnote', 'Nhận thi công cho nhà ở dân dụng, công trình mới ốp lát và cải tạo thay ron cũ ố mốc trên mọi chất liệu gạch.')); ?></p>
            </div>

            <div class="basc-services-grid">
                <?php foreach ($render_services as $srv):
                    $srv_icon = !empty($srv['cview']) ? $srv['cview'] : 'fa-house-chimney';
                    if (strpos($srv_icon, 'fa-') === false) {
                        $srv_icon = 'fa-house-chimney';
                    }
                    $srv_tags = !empty($srv['ctag']) ? explode(',', $srv['ctag']) : [];
                ?>
                <div class="basc-service-card">
                    <div class="basc-service-icon"><i class="fa-solid <?php echo htmlspecialchars($srv_icon); ?>"></i></div>
                    <h3><?php echo htmlspecialchars($srv['ctitle']); ?></h3>
                    <p><?php echo htmlspecialchars($srv['cshort_content']); ?></p>
                    <?php if (!empty($srv_tags)): ?>
                        <div class="basc-service-tags">
                            <?php foreach ($srv_tags as $tg): ?>
                                <span><?php echo htmlspecialchars(trim($tg)); ?></span>
                            <?php endforeach; ?>
                        </div>
                    <?php endif; ?>
                </div>
                <?php endforeach; ?>
            </div>

            <div class="basc-text-center basc-mt-md">
                <a href="#final-cta" class="btn-basc btn-basc-cta">
                    <i class="fa-solid fa-calendar-check"></i> <?php echo htmlspecialchars($mod('sec_services', 'clink', 'Đặt Lịch Khảo Sát & Báo Giá Thi Công Miễn Phí')); ?>
                </a>
            </div>
        </div>
    </section>

    <!-- 5. SOCIAL PROOF #2 (ĐÁNH GIÁ KHÁCH HÀNG - NẠP TỪ base_tmodule ccode='testimonial') -->
    <section class="section-pad" id="reviews">
        <div class="basc-container">
            <div class="section-header">
                <span class="section-eyebrow"><i class="fa-solid fa-heart"></i> <?php echo htmlspecialchars($mod('sec_reviews', 'ctag', 'Khách hàng nói gì')); ?></span>
                <h2 class="section-title"><?php echo htmlspecialchars($mod('sec_reviews', 'cmodule', 'Hơn 3.500+ Gia Chủ & Nhà Thầu Tin Tưởng')); ?></h2>
                <p class="section-subtitle"><?php echo htmlspecialchars($mod('sec_reviews', 'cnote', 'Sự hài lòng thực tế sau khi sử dụng vật tư và dịch vụ thi công ron gạch BASC.')); ?></p>
            </div>

            <div class="basc-reviews-grid">
                <?php foreach ($render_testimonials as $rev):
                    $avatar = !empty($rev['cimage_thumb']) ? $rev['cimage_thumb'] : (!empty($rev['cimage']) ? $rev['cimage'] : 'KH');
                    $author_name = !empty($rev['ctitle']) ? $rev['ctitle'] : (!empty($rev['cmodule']) ? $rev['cmodule'] : 'Khách hàng');
                    $author_role = !empty($rev['cauthor']) ? $rev['cauthor'] : (!empty($rev['ctag']) ? $rev['ctag'] : '');
                    $quote = !empty($rev['cshort_content']) ? $rev['cshort_content'] : (!empty($rev['cnote']) ? $rev['cnote'] : '');
                ?>
                <div class="basc-review-card">
                    <div class="basc-review-avatar"><?php echo htmlspecialchars($avatar); ?></div>
                    <div class="basc-stars">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                    </div>
                    <p class="basc-review-quote"><?php echo htmlspecialchars($quote); ?></p>
                    <div class="basc-review-author"><?php echo htmlspecialchars($author_name); ?></div>
                    <div class="basc-review-role"><?php echo htmlspecialchars($author_role); ?></div>
                </div>
                <?php endforeach; ?>
            </div>

            <div class="basc-text-center">
                <a href="#final-cta" class="btn-basc btn-basc-cta">
                    <i class="fa-solid fa-comments"></i> <?php echo htmlspecialchars($mod('sec_reviews', 'clink', 'Nhận Tư Vấn Miễn Phí Ngay')); ?>
                </a>
            </div>
        </div>
    </section>

    <!-- 6. BRAND BENEFITS (WHY CHOOSE US - NẠP TỪ base_tmodule ccode='brand_benefit') -->
    <section class="section-pad section-alt" id="why-choose-us">
        <div class="basc-container basc-split-grid">
            <div class="basc-visual-box">
                <div class="basc-text-center">
                    <span class="section-eyebrow basc-eyebrow-white"><?php echo htmlspecialchars($mod('sec_why', 'eng_cnote', 'So sánh thực tế')); ?></span>
                    <h3 class="basc-compare-title"><?php echo htmlspecialchars($mod('sec_why', 'cnote', 'Khác Biệt Rõ Rệt Sau 6 Tháng Sử Dụng')); ?></h3>
                </div>
                <div class="basc-compare-row">
                    <div class="basc-compare-card">
                        <span class="basc-compare-tag before">Ron xi măng thường</span>
                        <ul class="basc-compare-list">
                            <li><i class="fa-solid fa-xmark basc-icon-danger"></i> Dễ thấm nước, ố đen nhanh</li>
                            <li><i class="fa-solid fa-xmark basc-icon-danger"></i> Nứt nẻ, bong tróc khi lau chùi</li>
                            <li><i class="fa-solid fa-xmark basc-icon-danger"></i> Sinh nấm mốc gây mùi hôi</li>
                        </ul>
                    </div>
                    <div class="basc-compare-card is-after">
                        <span class="basc-compare-tag after">Keo Epoxy BASC</span>
                        <ul class="basc-compare-list-after">
                            <li><i class="fa-solid fa-check basc-icon-success"></i> Chống thấm &amp; bám bẩn 100%</li>
                            <li><i class="fa-solid fa-check basc-icon-success"></i> Bóng mịn như men, siêu cứng</li>
                            <li><i class="fa-solid fa-check basc-icon-success"></i> Kháng khuẩn, bảo hành 10 năm</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div>
                <span class="section-eyebrow"><i class="fa-solid fa-shield-halved"></i> <?php echo htmlspecialchars($mod('sec_why', 'ctag', 'Tại sao chọn BASC')); ?></span>
                <h2 class="section-title basc-title-left"><?php echo htmlspecialchars($mod('sec_why', 'cmodule', 'Giải Pháp Ron Gạch Toàn Diện Từ Vật Tư Đến Thi Công')); ?></h2>

                <div class="basc-benefit-list">
                    <?php foreach ($render_benefits as $b_idx => $ben): ?>
                    <div class="basc-benefit-item">
                        <div class="basc-benefit-num"><?php echo $b_idx + 1; ?></div>
                        <div>
                            <h4><?php echo htmlspecialchars($ben['cmodule']); ?></h4>
                            <p><?php echo htmlspecialchars($ben['cnote']); ?></p>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>

                <a href="#final-cta" class="btn-basc btn-basc-cta">
                    <i class="fa-solid fa-file-invoice"></i> <?php echo htmlspecialchars($mod('sec_why', 'clink', 'Nhận Báo Giá Thi Công & Vật Tư')); ?>
                </a>
            </div>
        </div>
    </section>

    <!-- 7. SOCIAL PROOF #3 (UGC / CÔNG TRÌNH THỰC TẾ - NẠP TỪ base_tmodule ccode='ugc_gallery') -->
    <section class="section-pad" id="ugc-gallery">
        <div class="basc-container">
            <div class="section-header">
                <span class="section-eyebrow"><i class="fa-solid fa-video"></i> <?php echo htmlspecialchars($mod('sec_ugc', 'ctag', 'Hình ảnh & Video thực tế')); ?></span>
                <h2 class="section-title"><?php echo htmlspecialchars($mod('sec_ugc', 'cmodule', 'Cận Cảnh Công Trình Đã Hoàn Thiện')); ?></h2>
                <p class="section-subtitle"><?php echo htmlspecialchars($mod('sec_ugc', 'cnote', 'Theo dõi quy trình bắn ron, miết ron và kết quả bàn giao thực tế từ đội ngũ BASC.')); ?></p>
            </div>

            <div class="basc-ugc-grid">
                <?php foreach ($render_ugcs as $ugc): 
                    $u_title = !empty($ugc['ctitle']) ? $ugc['ctitle'] : (!empty($ugc['cmodule']) ? $ugc['cmodule'] : '');
                    $u_tag = !empty($ugc['ctag']) ? $ugc['ctag'] : '';
                ?>
                <div class="basc-ugc-card js-ugc-item" data-title="<?php echo htmlspecialchars($u_title); ?>">
                    <div></div>
                    <div class="basc-ugc-play"><i class="fa-solid fa-play"></i></div>
                    <div class="basc-ugc-meta">
                        <span><?php echo htmlspecialchars($u_tag); ?></span>
                        <h5><?php echo htmlspecialchars($u_title); ?></h5>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- 8. ABOUT THE BRAND (VỀ BASC - NẠP TỪ base_tmodule ccode='about_metric') -->
    <section class="section-pad section-alt" id="about-us">
        <div class="basc-container basc-split-grid">
            <div>
                <span class="section-eyebrow"><i class="fa-solid fa-award"></i> <?php echo htmlspecialchars($mod('sec_about', 'ctag', 'Về thương hiệu BASC')); ?></span>
                <h2 class="section-title basc-title-left"><?php echo htmlspecialchars($mod('sec_about', 'cmodule', 'BASC – Chuyên Vật Tư & Thi Công Ron Gạch Hàng Đầu')); ?></h2>
                <p class="basc-about-desc">
                    <?php echo $mod('sec_about', 'cnote', 'Xuất phát từ trăn trở về những đường ron gạch nhanh chóng xuống cấp, thấm nước và nấm mốc chỉ sau vài tháng sử dụng, <strong>BASC</strong> ra đời với sứ mệnh mang đến giải pháp vật tư chà ron Epoxy chất lượng cao cùng dịch vụ thi công chuẩn mực.'); ?>
                </p>
                <p class="basc-about-desc-last">
                    <?php echo $mod('sec_about', 'eng_cnote', 'Chúng tôi trực tiếp phân phối keo chà ron, dụng cụ ốp lát và đào tạo đội ngũ kỹ thuật viên tay nghề cao, phục vụ hàng nghìn hộ gia đình, showroom và công trình lớn trên toàn quốc.'); ?>
                </p>
                <a href="<?php echo base_url('gioi-thieu'); ?>" class="btn-basc btn-basc-primary">
                    <?php echo htmlspecialchars($mod('sec_about', 'clink', 'Tìm hiểu thêm về BASC')); ?> <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>

            <div class="basc-about-metrics">
                <?php foreach ($render_metrics as $met): ?>
                <div class="basc-metric-card">
                    <strong><?php echo htmlspecialchars($met['cmodule']); ?></strong>
                    <span><?php echo htmlspecialchars($met['ctag']); ?></span>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- 9. FAQS (CÂU HỎI THƯỜNG GẶP - NẠP TỪ base_tmodule ccode='faq') -->
    <section class="section-pad" id="faqs">
        <div class="basc-container basc-faq-layout">
            <div>
                <span class="section-eyebrow"><i class="fa-regular fa-circle-question"></i> <?php echo htmlspecialchars($mod('sec_faqs', 'ctag', 'Giải đáp thắc mắc')); ?></span>
                <h2 class="section-title basc-title-left"><?php echo htmlspecialchars($mod('sec_faqs', 'cmodule', 'Câu Hỏi Thường Gặp')); ?></h2>
                <p class="section-subtitle basc-faq-subtitle">
                    <?php echo htmlspecialchars($mod('sec_faqs', 'cnote', 'Tổng hợp những thắc mắc phổ biến nhất về keo chà ron Epoxy BASC và quy trình thi công tận nơi.')); ?>
                </p>
                <a href="#final-cta" class="btn-basc btn-basc-cta">
                    <i class="fa-solid fa-headset"></i> <?php echo htmlspecialchars($mod('sec_faqs', 'clink', 'Cần Tư Vấn Thêm?')); ?>
                </a>
            </div>

            <div class="basc-faq-list">
                <?php foreach ($render_faqs as $f_idx => $faq): 
                    $f_question = !empty($faq['ctitle']) ? $faq['ctitle'] : (!empty($faq['cmodule']) ? $faq['cmodule'] : '');
                    $f_answer   = !empty($faq['cshort_content']) ? $faq['cshort_content'] : (!empty($faq['cnote']) ? $faq['cnote'] : (!empty($faq['ccontent']) ? $faq['ccontent'] : ''));
                ?>
                <div class="basc-faq-item <?php echo $f_idx === 0 ? 'is-open' : ''; ?>">
                    <button type="button" class="basc-faq-q">
                        <span><?php echo htmlspecialchars($f_question); ?></span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </button>
                    <div class="basc-faq-a <?php echo $f_idx === 0 ? 'basc-faq-open-init' : ''; ?>">
                        <div class="basc-faq-a-inner"><?php echo htmlspecialchars($f_answer); ?></div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <!-- 10. FINAL CTA / ĐẶT LỊCH THI CÔNG & KHẢO SÁT (LƯU VÀO base_tschedule) -->
    <section class="basc-final-cta" id="final-cta">
        <div class="basc-container">
            <div class="basc-rating-pill">
                <span class="basc-stars">
                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                </span>
                <span><?php echo htmlspecialchars($mod('sec_final_cta', 'ctag', 'Khảo sát tận nơi miễn phí • Báo giá minh bạch')); ?></span>
            </div>

            <h2><?php echo htmlspecialchars($mod('sec_final_cta', 'cmodule', 'Sẵn Sàng Làm Mới Đường Ron Cho Ngôi Nhà Của Bạn?')); ?></h2>
            <p><?php echo htmlspecialchars($mod('sec_final_cta', 'cnote', 'Để lại thông tin để kỹ thuật viên BASC mang mẫu tận nơi, đo đạc kích thước và gửi báo giá ưu đãi ngay hôm nay.')); ?></p>

            <?php if (!empty($_SESSION['booking_success'])): ?>
                <div class="basc-alert-success" style="background:#e6f4ea;color:#137333;padding:14px 20px;border-radius:10px;margin-bottom:20px;font-weight:600;display:inline-block;">
                    <i class="fa-solid fa-circle-check"></i> <?php echo $_SESSION['booking_success']; unset($_SESSION['booking_success']); ?>
                </div>
            <?php endif; ?>

            <form action="<?php echo base_url('schedule/book'); ?>" method="post" class="basc-cta-form">
                <input type="text" name="cname" placeholder="Họ và tên của bạn..." required>
                <input type="tel" name="cphone" placeholder="Số điện thoại (Zalo)..." required>
                <input type="text" name="caddress" placeholder="Địa chỉ / Quận huyện..." required>
                <select name="cservice" class="basc-select-service">
                    <option value="Thi công trọn gói nhà ở dân dụng">Thi công trọn gói nhà ở dân dụng</option>
                    <option value="Chống thấm ron phòng tắm & toilet">Chống thấm ron phòng tắm & toilet</option>
                    <option value="Cạo ron cũ & phục hồi ron mới">Cạo ron cũ & phục hồi ron mới</option>
                    <option value="Tư vấn & đặt mua vật tư keo ron">Tư vấn & đặt mua vật tư keo ron</option>
                </select>
                <button type="submit" name="btn_submit" value="1" class="btn-basc btn-basc-cta">
                    <i class="fa-solid fa-calendar-check"></i> <?php echo htmlspecialchars($mod('sec_final_cta', 'clink', 'Đặt Lịch Khảo Sát Ngay')); ?>
                </button>
            </form>

            <div class="basc-cta-direct-links">
                <?php if ($cfg_hotline !== ''): ?>
                    <a href="tel:<?php echo htmlspecialchars($hotline_tel); ?>"><i class="fa-solid fa-phone"></i> Gọi trực tiếp: <strong><?php echo htmlspecialchars($cfg_hotline); ?></strong></a>
                <?php endif; ?>
                <?php if ($cfg_zalo !== '' && $cfg_zalo !== '#'): ?>
                    <a href="<?php echo htmlspecialchars($cfg_zalo); ?>" target="_blank" rel="noopener"><i class="fa-solid fa-comment-dots"></i> Nhắn Zalo tư vấn ngay</a>
                <?php endif; ?>
            </div>
        </div>
    </section>
</main>

<!-- Toast thông báo giỏ hàng -->
<div class="basc-toast" id="basc-toast"></div>

<?php
$this->load->view('modules/mod_footer');
$this->load->view('footer');
?>
