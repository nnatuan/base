<?php 
	$this->load->view('header');
	$this->load->view('header_end');
	$this->load->view('modules/mod_header'); 

	switch ($event) 
	{
		case 'view':
			$this->load->view('schedule_view/schedule_listview');
			break;			
		case 'edit': 
		case 'update_edit':
			$this->load->view('schedule_view/schedule');
			break;
		default:
			$this->load->view('schedule_view/schedule_listview');
	}

	$this->load->view('modules/mod_footer');
	$this->load->view('footer');
?>
