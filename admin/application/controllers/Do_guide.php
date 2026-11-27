<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Do_guide extends CI_Controller
{
	var $m_nid_user_login = '';
	var $m_event          = 'view';

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
		$this->config->check_system_login = '1'; 	
	}

	function index()
	{				
		$user_id = Fget_userdata('session_nid_user');
		if (empty($user_id)) {
			redirect(base_url() . 'index.php/do_login');
			return;
		}

		//$data['menu'] = Fget_menu_html($user_id);
		$data['menu_active'] = 'guide';
		$data['lbl_form_title'] = 'HƯỚNG DẪN SỬ DỤNG HỆ THỐNG QUẢN TRỊ';

		$this->load->view('guide_view/index', $data);
	}
}
