<?php
class home extends CI_Controller
{
    var $data_view = '';
    var $title = '';
    var $tags = '';
    var $description = '';
    var $curr_page = '';
    var $row_per_page = '18';
    var $total_page = '';
    var $ntotal_row = 0;
    var $view_folder = '';
    var $cname = '';
    var $cphone = '';
    var $cloai_phong = '';
    var $cnguoi_lon = '';
    var $ctre_em = '';
    var $btn_submit = '';

    function __construct()
    {
        parent::__construct();
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
        $this->load->database();
        $this->load->helper('ap_db');
        $this->load->helper('ap_object');
        $this->load->helper('ap_function');
        $this->load->helper('ap_view');
        $this->load->helper('ap_module');
        reset_page();
    }

    function index()
    {
        $this->do_process();
    }

    function do_process()
    {
        $this->get_data();
        $this->caculate_data();
        $this->do_business();
        $this->destroy_data();
    }

    private function get_data()
    {
        if (isset($_POST['btn_submit']))
            $this->btn_submit = $_POST['btn_submit'];
        if (isset($_POST['cname']))
            $this->cname = $_POST['cname'];
        if (isset($_POST['cphone']))
            $this->cphone = $_POST['cphone'];
        if (isset($_POST['cloai_phong']))
            $this->cloai_phong = $_POST['cloai_phong'];
        if (isset($_POST['cnguoi_lon']))
            $this->cnguoi_lon = $_POST['cnguoi_lon'];
        if (isset($_POST['ctre_em']))
            $this->ctre_em = $_POST['ctre_em'];
    }

    private function caculate_data()
    {
        $obj_data = get_config_byid(3);
        foreach ($obj_data as $data):
            $this->title = $data['cvalue'];
        endforeach;
        $obj_data = get_config_byid(2);
        foreach ($obj_data as $data):
            $this->tags = $data['cvalue'];
        endforeach;
        $obj_data = get_config_byid(4);
        foreach ($obj_data as $data):
            $this->description = $data['cvalue'];
        endforeach;

        $this->load->library('Mobile_Detect');
        $detect = new Mobile_Detect();
        if ($detect->isMobile() || $detect->isTablet() || $detect->isAndroidOS()) {
            $this->view_folder = 'mobile';
        } else {
            $this->view_folder = 'desktop';
        }
    }

    function set_page($page)
    {
        $this->curr_page = $page;
        $_SESSION['curr_page_product'] = $page;
        $this->do_process();
    }

    private function do_business()
    {
        $data['title']       = $this->title;
        $data['tags']        = $this->tags;
        $data['description'] = $this->description;
        $data['menu_sec']    = '';
        $data['menu_cat']    = '';
        $data['menu_top']    = 'home';

        // 1. Lấy toàn bộ cấu hình trang chủ & các section từ base_tconfig
        $site_configs = [];
        $cfg_query = $this->db->where('nstatus', 1)->get(Fget_ap_table('tconfig'));
        if ($cfg_query && $cfg_query->num_rows() > 0) {
            foreach ($cfg_query->result_array() as $row) {
                $site_configs[$row['nid']] = $row['cvalue'];
                if (!empty($row['ccode'])) {
                    $site_configs[$row['ccode']] = $row['cvalue'];
                }
            }
        }
        $data['site_configs'] = $site_configs;
        $data['hero_configs'] = $site_configs;

        // 2. Lấy sản phẩm nổi bật (Best Sellers) từ base_tproducts kèm thông tin danh mục từ base_tcat_products
        $this->db->select('p.*, c.ccode as cat_slug, c.ccat_products as cat_name');
        $this->db->from(Fget_ap_table('tproducts') . ' as p');
        $this->db->join(Fget_ap_table('tcat_products') . ' as c', 'p.nid_cat_products = c.nid', 'left');
        $this->db->where('p.nhome', 1);
        $this->db->where('p.nstatus', 1);
        $this->db->order_by('p.cindex', 'ASC');
        $prods_query = $this->db->get();
        $data['best_sellers'] = ($prods_query && $prods_query->num_rows() > 0) ? $prods_query->result_array() : [];

        // 3. Lấy danh mục sản phẩm từ base_tcat_products
        $this->db->where('nstatus', 1);
        $this->db->order_by('cindex', 'ASC');
        $cats_query = $this->db->get(Fget_ap_table('tcat_products'));
        $all_categories = ($cats_query && $cats_query->num_rows() > 0) ? $cats_query->result_array() : [];

        // Nhóm danh mục làm Tab lọc sản phẩm (nspecial = '1' hoặc 2 danh mục chính đầu tiên)
        $cat_tabs = [];
        $detailed_cats = [];
        foreach ($all_categories as $cat) {
            if (isset($cat['nspecial']) && (string)$cat['nspecial'] === '1') {
                $cat_tabs[] = $cat;
            } else {
                $detailed_cats[] = $cat;
            }
        }
        if (empty($cat_tabs) && !empty($all_categories)) {
            $cat_tabs = array_slice($all_categories, 0, 2);
            $detailed_cats = array_slice($all_categories, 2);
        }

        $data['cat_tabs']   = $cat_tabs;
        $data['categories'] = !empty($detailed_cats) ? $detailed_cats : $all_categories;

        // 4. Lấy các nhóm nội dung từ base_tnews phân nhóm theo nid_cat_news:
        // nid_cat_news = 2: Dịch vụ thi công
        // nid_cat_news = 3: Hình ảnh & Video thực tế (UGC)
        // nid_cat_news = 4: Khách hàng nói gì (Testimonials)
        // nid_cat_news = 5: Câu hỏi thường gặp (FAQs)
        $this->db->where_in('nid_cat_news', [2, 3, 4, 5]);
        $this->db->where('nstatus', 1);
        $this->db->order_by('cindex', 'ASC');
        $news_query = $this->db->get(Fget_ap_table('tnews'));
        $all_news = ($news_query && $news_query->num_rows() > 0) ? $news_query->result_array() : [];

        $services     = [];
        $ugc_items    = [];
        $testimonials = [];
        $faqs         = [];

        foreach ($all_news as $nw) {
            switch ((int)$nw['nid_cat_news']) {
                case 2:
                    $services[] = $nw;
                    break;
                case 3:
                    $ugc_items[] = $nw;
                    break;
                case 4:
                    $testimonials[] = $nw;
                    break;
                case 5:
                    $faqs[] = $nw;
                    break;
            }
        }

        // 5. Lấy các module cấu trúc giao diện động từ base_tmodule
        $this->db->where('nstatus', 1);
        $this->db->order_by('cindex', 'ASC');
        $mod_query = $this->db->get(Fget_ap_table('tmodule'));
        $modules = ($mod_query && $mod_query->num_rows() > 0) ? $mod_query->result_array() : [];

        $sec_modules    = [];
        $hero_bullets   = [];
        $hero_stats     = [];
        $partner_logos  = [];
        $brand_benefits = [];
        $about_metrics  = [];

        foreach ($modules as $m) {
            $code = trim((string) $m['ccode']);
            $sec_modules[$code] = $m;

            switch ($code) {
                case 'hero_bullet':
                    $hero_bullets[] = $m;
                    break;
                case 'hero_stat':
                    $hero_stats[] = $m;
                    break;
                case 'partner_logo':
                    $partner_logos[] = $m;
                    break;
                case 'brand_benefit':
                    $brand_benefits[] = $m;
                    break;
                case 'about_metric':
                    $about_metrics[] = $m;
                    break;
                // Fallback nếu tnews chưa có dữ liệu
                case 'testimonial':
                    if (empty($testimonials)) $testimonials[] = $m;
                    break;
                case 'ugc_gallery':
                    if (empty($ugc_items)) $ugc_items[] = $m;
                    break;
                case 'faq':
                    if (empty($faqs)) $faqs[] = $m;
                    break;
            }
        }

        $data['sec_modules']    = $sec_modules;
        $data['hero_bullets']   = $hero_bullets;
        $data['hero_stats']     = $hero_stats;
        $data['partner_logos']  = $partner_logos;
        $data['services']       = $services;
        $data['testimonials']   = $testimonials;
        $data['brand_benefits'] = $brand_benefits;
        $data['ugc_items']      = $ugc_items;
        $data['about_metrics']  = $about_metrics;
        $data['faqs']           = $faqs;

        // 6. Lấy danh sách banner slider từ base_tbanner_images
        $this->db->where('nstatus', 1);
        $this->db->order_by('cindex', 'ASC');
        $banner_query = $this->db->get(Fget_ap_table('tbanner_images'));
        $data['banners']        = ($banner_query && $banner_query->num_rows() > 0) ? $banner_query->result_array() : [];

        $this->load->view('home', $data);
    }

    private function destroy_data()
    {
    }
}
