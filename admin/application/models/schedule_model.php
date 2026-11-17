<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class schedule_model extends CI_Model
{
	var $m_table_name = 'base_tschedule';

	function __construct() 
	{	
		parent::__construct();
		if (function_exists('Fget_ap_table')) {
			$tbl = Fget_ap_table('tschedule');
			if (!empty($tbl)) {
				$this->m_table_name = $tbl;
			}
		}
	}
	
	function get_byid($nid)
	{
		$this->db->where('nid', $nid);
		$obj_result = $this->db->get($this->m_table_name); 
		return $obj_result->row_array();
	}
		 
	function insert($arr_data)
	{
		$this->db->insert($this->m_table_name, $arr_data);
		return $this->db->insert_id();		
	}

	function update_bynid($num_nid, $arr_data)
	{
		$this->db->where('nid', $num_nid);
		$this->db->update($this->m_table_name, $arr_data);
	}

	function delete_byid($num_nid) 
	{
		$this->db->where('nid', $num_nid);
		$this->db->delete($this->m_table_name);
	}
	
	function get_count_listview($str_where_clause)
	{		
		$str_query = ' SELECT nid FROM ' . $this->m_table_name . ' ' . $str_where_clause;
		$obj_result = $this->db->query($str_query);  
		return $obj_result ? $obj_result->num_rows() : 0;
	}

	function get_listview($str_where_clause, $str_order_by_clause, $num_row_per_page, $num_current_page, $num_total_row)
	{		
		$str_query = ' SELECT * FROM ' . $this->m_table_name . ' ' . $str_where_clause;
		
		if (trim($str_order_by_clause) != '')
		{
			$str_query .= ' ORDER BY ' . $str_order_by_clause;
		}
		else
		{
			$str_query .= ' ORDER BY nid DESC';
		}

		if ($num_total_row > 0 && $num_row_per_page > 0)
		{	
			$offset = ($num_current_page - 1) * $num_row_per_page;
			if ($offset < 0) $offset = 0;
			$str_query .= ' LIMIT ' . $offset . ' , ' . $num_row_per_page;		
		}
		
		$obj_result = $this->db->query($str_query);  
		return $obj_result ? $obj_result->result_array() : array();
	}
}
