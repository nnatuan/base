<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class do_schedule_listview extends CI_Controller
{
	var $m_nid_user_login   = '';
	var $m_link_page        = '';
	var $m_event            = 'view';
	var $m_where_clause     = '';
	var $m_orderby_clause   = 'nid';
	var $m_orderby_sort     = 'desc';
	var $m_sort_img         = '';
	var $m_total_row        = 0;
	var $m_total_page       = 0;
	var $m_current_page     = 1;
	var $m_row_per_page     = 15;
	
	var $m_txtf_search      = '';
	var $m_txtf_nstatus     = '';
	var $m_txtf_service     = '';
	var $m_obj_data_view    = array();

	function __construct()
	{ 
		parent::__construct();
		if (session_status() == PHP_SESSION_NONE) {
			session_start();
		}
		$this->load->database();	
		$this->load->helper('ap_db');	
		$this->load->helper('ap_function');
		$this->load->helper('ap_html');
		$this->load->helper('ap_view');
		$this->load->helper('ap_object');
		$this->load->model('schedule_model');
		$this->config->check_system_login = '1'; 	
	}

	function index()
	{				
		$user_id = Fget_userdata('session_nid_user');
		if (empty($user_id)) {
			redirect(base_url() . 'index.php/do_login');
			return;
		}
		$this->do_process();
	}

	function do_process() 
	{
		$this->get_data(); 		
		$this->caculate_data(); 		
		$this->do_business(); 		
	}

	private function get_data()
	{         
		$this->m_nid_user_login = Fget_userdata('session_nid_user');
		$this->load->language('ap', 'eng');

		if (isset($_POST['hidden_button']))
		{
			$hidden_button = $_POST['hidden_button'];
			switch($hidden_button)
			{
				case "btn_filter":
					if (isset($_POST['txtf_search'])) {
						$this->m_txtf_search = trim($_POST['txtf_search']);
					}
					if (isset($_POST['txtf_nstatus'])) {
						$this->m_txtf_nstatus = trim($_POST['txtf_nstatus']);
					}
					if (isset($_POST['txtf_service'])) {
						$this->m_txtf_service = trim($_POST['txtf_service']);
					}
					$this->m_current_page = 1;
					break;

				case "btn_row_per_page":
					if (isset($_POST['txt_row_per_page'])) {
						$this->m_row_per_page = Fconvert_to_int($_POST['txt_row_per_page']);
					}
					break;

				case "btn_page_number":
					if (isset($_POST['txt_current_page'])) {
						$this->m_current_page = Fconvert_to_int($_POST['txt_current_page']);
					}
					break;

				case "btn_next":
					if (isset($_POST['txt_current_page'])) {
						$this->m_current_page = Fconvert_to_int($_POST['txt_current_page']) + 1;
					}
					break;

				case "btn_previous":
					if (isset($_POST['txt_current_page'])) {
						$this->m_current_page = Fconvert_to_int($_POST['txt_current_page']) - 1;
					}
					break;

				case "btn_delete":
					$this->delete();
					break;
			}
		}
		else
		{
			if (isset($_GET['status'])) {
				$this->m_txtf_nstatus = trim($_GET['status']);
			}
		}
	}

	private function get_where_string()
	{
		$where = ' WHERE nid > 0 ';
		if ($this->m_txtf_search != '') {
			$s = $this->db->escape_like_str($this->m_txtf_search);
			$where .= " AND (cfullname LIKE '%{$s}%' OR cphone LIKE '%{$s}%' OR caddress LIKE '%{$s}%') ";
		}
		if ($this->m_txtf_nstatus !== '') {
			$status = intval($this->m_txtf_nstatus);
			$where .= " AND nstatus = {$status} ";
		}
		if ($this->m_txtf_service != '') {
			$srv = $this->db->escape_like_str($this->m_txtf_service);
			$where .= " AND cservice LIKE '%{$srv}%' ";
		}
		return $where;
	}

	private function caculate_data()
	{
		$this->m_link_page = base_url() . 'index.php/do_schedule_listview';
		$this->m_where_clause = $this->get_where_string();
		$this->m_total_row = $this->schedule_model->get_count_listview($this->m_where_clause);

		if ($this->m_row_per_page <= 0) $this->m_row_per_page = 15;
		$this->m_total_page = ceil($this->m_total_row / $this->m_row_per_page);
		if ($this->m_total_page < 1) $this->m_total_page = 1;

		if ($this->m_current_page <= 0) $this->m_current_page = 1;
		if ($this->m_current_page > $this->m_total_page) $this->m_current_page = $this->m_total_page;

		$orderby = $this->m_orderby_clause . ' ' . $this->m_orderby_sort;
		$this->m_obj_data_view = $this->schedule_model->get_listview(
			$this->m_where_clause,
			$orderby,
			$this->m_row_per_page,
			$this->m_current_page,
			$this->m_total_row
		);
	}

	private function do_business()
	{
		$data['link_page']          = $this->m_link_page;
		$data['txt_row_per_page']   = $this->m_row_per_page;
		$data['txt_current_page']   = $this->m_current_page;
		$data['txt_total_page']     = $this->m_total_page;
		$data['total_row']          = $this->m_total_row;
		
		$data['txtf_search']        = $this->m_txtf_search;
		$data['txtf_nstatus']       = $this->m_txtf_nstatus;
		$data['txtf_service']       = $this->m_txtf_service;
		
		$data['data_view']          = $this->m_obj_data_view;
		$data['menu']               = Fget_menu_html($this->m_nid_user_login);
		$data['menu_active']        = 'schedule';
		$data['event']              = 'view';

		$data['btn_delete']         = 'Xóa';
		$data['btn_choose']         = 'Chọn';
		$data['lbl_rows_per_page']  = 'Số dòng:';
		$data['msg_confirm_before_delete'] = 'Bạn có chắc chắn muốn xóa các lịch đặt đã chọn?';
		$data['msg_invalid_before_delete'] = 'Vui lòng chọn ít nhất một lịch đặt cần xóa!';

		$this->load->view('schedule_view/index.php', $data);
	}

	private function delete()
	{
		if (!empty($_POST['chk'])) {
			foreach ($_POST['chk'] as $nid) {
				$this->schedule_model->delete_byid(intval($nid));
			}
		}
	}

	function update_status_ajax()
	{
		$nid = intval($this->input->post('nid'));
		$status = intval($this->input->post('nstatus'));
		if ($nid > 0) {
			$this->schedule_model->update_bynid($nid, array(
				'nstatus' => $status,
				'ddate02' => date('Y-m-d H:i:s')
			));
			echo json_encode(array('status' => 'success'));
			return;
		}
		echo json_encode(array('status' => 'error'));
	}
}
