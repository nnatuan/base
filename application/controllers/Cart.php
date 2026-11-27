<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cart extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
        $this->load->database();
        $this->load->helper('ap_function');
        $this->load->helper('ap_db');
    }

    /**
     * AJAX Endpoint: Đặt hàng từ popup giỏ hàng
     */
    public function checkout()
    {
        header('Content-Type: application/json; charset=utf-8');

        // Đọc dữ liệu từ form data hoặc JSON payload
        $raw_input = file_get_contents('php://input');
        $data_post = json_decode($raw_input, true);
        if (!$data_post) {
            $data_post = $this->input->post();
        }

        $cfullname = isset($data_post['cfullname']) ? trim($data_post['cfullname']) : '';
        $cphone    = isset($data_post['cphone']) ? trim($data_post['cphone']) : '';
        $caddress  = isset($data_post['caddress']) ? trim($data_post['caddress']) : '';
        $cnote     = isset($data_post['cnote']) ? trim($data_post['cnote']) : '';
        $items_raw = isset($data_post['items']) ? $data_post['items'] : [];

        if (is_string($items_raw)) {
            $items = json_decode($items_raw, true);
        } else {
            $items = $items_raw;
        }

        // Validate cơ bản
        if (empty($cfullname)) {
            echo json_encode([
                'status'  => 'error',
                'message' => 'Vui lòng nhập họ và tên của bạn.'
            ]);
            return;
        }

        if (empty($cphone)) {
            echo json_encode([
                'status'  => 'error',
                'message' => 'Vui lòng nhập số điện thoại liên hệ.'
            ]);
            return;
        }

        if (empty($items) || !is_array($items)) {
            echo json_encode([
                'status'  => 'error',
                'message' => 'Giỏ hàng của bạn đang trống.'
            ]);
            return;
        }

        // Tính tổng tiền & chuẩn hóa danh sách sản phẩm
        $total_amount = 0;
        $order_items  = [];

        foreach ($items as $item) {
            $pid   = isset($item['id']) ? (int)$item['id'] : 0;
            $qty   = isset($item['qty']) ? max(1, (int)$item['qty']) : 1;
            $price = isset($item['price']) ? (float)$item['price'] : 0;

            // Nếu pid > 0, kiểm tra giá từ CSDL nếu cần, hoặc dùng giá từ item
            if ($price <= 0 && $pid > 0) {
                $p_row = $this->db->get_where(Fget_ap_table('tproducts'), ['nid' => $pid])->row_array();
                if ($p_row) {
                    $price = (float)(!empty($p_row['fprice_sale']) ? $p_row['fprice_sale'] : $p_row['fprice']);
                }
            }

            $line_total = $price * $qty;
            $total_amount += $line_total;

            $order_items[] = [
                'nid_product' => $pid,
                'nquantity'   => $qty,
                'cprice'      => (string)$price,
                'cprice_sale' => (string)$price,
                'niscolor'    => 0,
                'cmua_kem'    => '0'
            ];
        }

        // Tạo mã đơn hàng duy nhất: DH + ymd + 4 số ngẫu nhiên
        $order_code = 'DH' . date('ymd') . rand(1000, 9999);

        // Lưu đơn hàng vào base_torder
        $order_data = [
            'ccode'            => $order_code,
            'nid_order_status' => 1, // 1: Mới tiếp nhận
            'cfullname'        => $cfullname,
            'cphone'           => $cphone,
            'caddress'         => $caddress,
            'cnote'            => $cnote,
            'ntotal'           => (string)$total_amount,
            'nstatus'          => 1,
            'cmethod'          => '1', // 1: COD
            'ctype'            => '0', // 0: Đơn thường
            'ddate01'          => date('Y-m-d'),
            'ctime01'          => date('H:i:s'),
            'cip'              => $this->input->ip_address()
        ];

        $insert_ok = $this->db->insert(Fget_ap_table('torder'), $order_data);
        if (!$insert_ok) {
            echo json_encode([
                'status'  => 'error',
                'message' => 'Có lỗi xảy ra khi lưu đơn hàng, vui lòng thử lại sau.'
            ]);
            return;
        }

        $order_id = $this->db->insert_id();

        // Lưu từng sản phẩm vào base_torder_detail
        foreach ($order_items as $item_data) {
            $item_data['nid_order'] = $order_id;
            $this->db->insert(Fget_ap_table('torder_detail'), $item_data);
        }

        echo json_encode([
            'status'     => 'success',
            'message'    => 'Đặt hàng thành công! Nhân viên BASC sẽ sớm liên hệ xác nhận đơn hàng của bạn.',
            'order_code' => $order_code,
            'order_id'   => $order_id,
            'total'      => number_format($total_amount, 0, ',', '.') . 'đ'
        ]);
    }
}
