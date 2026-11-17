<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class do_schedule extends CI_Controller
{
	var $m_nid_user_login = '';
	var $m_nid            = 0;
	var $m_event          = 'edit';
	var $m_link_page      = '';
	var $m_link_cancel    = '';
	
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
		redirect(base_url() . 'index.php/do_schedule_listview');
	}

	function f_edit($nid)
	{
		$this->m_nid = intval($nid);
		$this->m_event = 'edit';
		$this->do_process();
	}

	function f_update_edit()
	{
		$this->m_event = 'update_edit';
		$this->do_process();
	}

	function f_delete($nid)
	{
		$nid = intval($nid);
		if ($nid > 0) {
			$this->schedule_model->delete_byid($nid);
		}
		redirect(base_url() . 'index.php/do_schedule_listview');
	}

	private function do_process()
	{
		$this->m_nid_user_login = Fget_userdata('session_nid_user');
		if (empty($this->m_nid_user_login)) {
			redirect(base_url() . 'index.php/do_login');
			return;
		}

		$this->m_link_page = base_url() . 'index.php/do_schedule/f_update_edit';
		$this->m_link_cancel = base_url() . 'index.php/do_schedule_listview';

		if (isset($_POST['hidden_button']) && $_POST['hidden_button'] == 'btn_submit')
		{
			$nid = intval($this->input->post('hidden_nid'));
			if ($nid > 0) {
				$data_update = array(
					'cfullname'     => trim($this->input->post('txt_cfullname')),
					'cphone'        => trim($this->input->post('txt_cphone')),
					'caddress'      => trim($this->input->post('txt_caddress')),
					'cservice'      => trim($this->input->post('txt_cservice')),
					'careas'        => trim($this->input->post('txt_careas')),
					'ddate_booking' => trim($this->input->post('txt_ddate_booking')),
					'ctime_booking' => trim($this->input->post('txt_ctime_booking')),
					'cnote'         => trim($this->input->post('txt_cnote')),
					'nstatus'       => intval($this->input->post('txt_nstatus')),
					'ddate02'       => date('Y-m-d H:i:s')
				);
				$this->schedule_model->update_bynid($nid, $data_update);
				redirect(base_url() . 'index.php/do_schedule_listview');
				return;
			}
		}

		$schedule = $this->schedule_model->get_byid($this->m_nid);
		if (empty($schedule)) {
			redirect(base_url() . 'index.php/do_schedule_listview');
			return;
		}

		$data['schedule']    = $schedule;
		$data['nid']         = $this->m_nid;
		$data['link_page']   = $this->m_link_page;
		$data['link_cancel'] = $this->m_link_cancel;
		$data['event']       = 'edit';
		$data['menu']        = Fget_menu_html($this->m_nid_user_login);
		$data['menu_active'] = 'schedule';

		$this->load->view('schedule_view/index.php', $data);
	}
}
