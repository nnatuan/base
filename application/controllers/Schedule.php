<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Schedule extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
        $this->load->database();
        $this->load->helper(['url', 'ap_function', 'ap_object', 'ap_module', 'ap_db']);
    }

    public function index()
    {
        $this->book();
    }

    /**
     * Tiếp nhận yêu cầu đặt lịch thi công / khảo sát
     */
    public function book()
    {
        $cname    = trim((string) $this->input->post('cname', true));
        $cphone   = trim((string) $this->input->post('cphone', true));
        $caddress = trim((string) $this->input->post('caddress', true));
        $cservice = trim((string) $this->input->post('cservice', true));
        $careas   = trim((string) $this->input->post('careas', true));
        $ddate    = trim((string) $this->input->post('ddate_booking', true));
        $cnote    = trim((string) $this->input->post('cnote', true));

        // Nếu thiếu số điện thoại hoặc họ tên
        if ($cname === '' || $cphone === '') {
            if ($this->input->is_ajax_request()) {
                echo json_encode([
                    'status'  => 'error',
                    'message' => 'Vui lòng cung cấp họ tên và số điện thoại liên hệ.'
                ]);
                return;
            }
            redirect(base_url('#final-cta'));
            return;
        }

        $insert_data = [
            'cfullname'     => $cname,
            'cphone'        => $cphone,
            'caddress'      => $caddress !== '' ? $caddress : 'Khách yêu cầu tư vấn',
            'cservice'      => $cservice !== '' ? $cservice : 'Thi công ron gạch trọn gói',
            'careas'        => $careas !== '' ? $careas : '',
            'ddate_booking' => (!empty($ddate) && preg_match('/^\d{4}-\d{2}-\d{2}$/', $ddate)) ? $ddate : date('Y-m-d'),
            'ctime_booking' => date('H:i:s'),
            'cnote'         => $cnote,
            'nstatus'       => 0,
            'ddate01'       => date('Y-m-d H:i:s')
        ];

        $table = Fget_ap_table('tschedule');
        $this->db->insert($table, $insert_data);

        if ($this->input->is_ajax_request()) {
            echo json_encode([
                'status'  => 'success',
                'message' => 'Cảm ơn quý khách! BASC đã tiếp nhận thông tin và sẽ liên hệ khảo sát trong thời gian sớm nhất.'
            ]);
            return;
        }

        // Lưu thông báo phiên và điều hướng về trang chủ
        $_SESSION['booking_success'] = 'Cảm ơn bạn! BASC đã tiếp nhận thông tin đặt lịch và sẽ liên hệ lại ngay.';
        redirect(base_url('#final-cta'));
    }
}
