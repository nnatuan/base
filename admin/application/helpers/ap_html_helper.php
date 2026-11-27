<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
		
function Fget_menu_html11($str_niduser)
	{	
														
		$html_menu_return ='';
		$html_menu_item ='';
		$li_tag = 0; 
		$level_tag = 0;
		
		$cid_index_01 = ''; 
		$cfunction = '';
		$cicon_name = '';
		$cmenu_01 = ''; 
		$nid_01 = 0;
		$nid_parent_01 = 0;
		
		$str_id_list='';
		
		//
		//  Thu nghiem trong truong hop khong co DB.
		//		
		
		$html_menu_return = 		'<li>';
		$html_menu_return .= 			'<a href="#"> Hệ thống </a>'; 
		$html_menu_return .= 			'<ul>';
		
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> DM hệ thống </a>';
		$html_menu_return .= 					'<ul>';
		$html_menu_return .= 						'<li>';
		$html_menu_return .= 							'<a href="'.base_url().'index.php/do_department_listview"> DM. Cơ cấu tổ chức </a>';
		$html_menu_return .= 						'</li>';		
		$html_menu_return .= 						'<li>';
		$html_menu_return .= 							'<a href="'.base_url().'index.php/do_employee_listview"> DM. nhân viên </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';
		$html_menu_return .= 							'<a href="'.base_url().'index.php/do_position_listview"> DM. Chức vụ </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';
		$html_menu_return .= 							'<a href="'.base_url().'index.php/do_department_group_listview"> DM. Kênh báo cáo </a>';
		$html_menu_return .= 						'</li>';


		$html_menu_return .= 					'</ul>';
		$html_menu_return .= 				'</li>';

		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Phân quyền </a>';
		$html_menu_return .= 					'<ul>';
		$html_menu_return .= 						'<li>';
		$html_menu_return .= 							'<a href="'.base_url().'index.php/do_menu_permission"> Phân quyền menu chức năng </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';
		$html_menu_return .= 							'<a href="'.base_url().'index.php/do_department_permission"> Phân nhóm tài khoản theo đơn vị </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 					'</ul>';
		$html_menu_return .= 				'</li>';

		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_change_password"> Đổi mật khẩu </a>';
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 			'</ul>';
		$html_menu_return .= 		'</li>';
//----------
//		$html_menu_return .= 		'<li>';
//		$html_menu_return .= 			'<a href="#"> Danh mục </a>';
//		$html_menu_return .= 			'<ul>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_city_listview"> DM tỉnh thành </a>';
//		$html_menu_return .= 				'</li>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_district_listview"> DM quận huyện </a>';
//		$html_menu_return .= 				'</li>';
//
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_ward_listview"> DM phường xã </a>';
//		$html_menu_return .= 				'</li>';
//
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_street_listview"> DM tên đường </a>';
//		$html_menu_return .= 				'</li>';
//
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_store_type_listview"> DM Loại Cửa hàng - điểm bán </a>';
//		$html_menu_return .= 				'</li>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_store_listview"> DM Cửa hàng - điểm bán  </a>';
//		$html_menu_return .= 				'</li>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_supplier_listview"> DM Nhà Cung Cấp </a>';
//		$html_menu_return .= 				'</li>';
//		
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_tool_listview"> DM công cụ dụng cụ </a>';
//		$html_menu_return .= 				'</li>';
///*		
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_simcard_listview"> DM sim đa năng </a>';
//		$html_menu_return .= 				'</li>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_unit_listview"> DM đơn vị tính </a>';
//		$html_menu_return .= 				'</li>';
//
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_product_listview"> DM hàng hoá </a>';
//		$html_menu_return .= 				'</li>';*/
//		$html_menu_return .= 			'</ul>';
//		$html_menu_return .= 		'</li>';
/*//-----------------------		
		$html_menu_return .= 		'<li>';
		$html_menu_return .= 			'<a href="#"> Quản lý </a>';
		$html_menu_return .= 			'<ul>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_in_out_tool_listview"> Phiếu nhập xuất CCDC </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Phân bổ Cửa hàng-Điểm bán </a>';		
		$html_menu_return .= 				'</li>';
		
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_tool_warehouse_listview"> Quản lý kho công cụ dụng cụ </a>';		
		$html_menu_return .= 				'</li>';
		
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Phân bổ công cụ dụng cụ </a>';		
		$html_menu_return .= 				'</li>';
		
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Kiểm duyệt nghiệp vụ </a>';
		$html_menu_return .= 					'<ul>';	
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Phiếu nhập xuất CCDC </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Hoá đơn đặt hàng </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Hoá đơn bán hàng </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Phiếu đăng ký sử dụng Sim đa năng </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 					'</ul>';	
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Kiểm duyệt phát sinh ngày </a>';
		$html_menu_return .= 					'<ul>';	
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Phiếu xử lý vi phạm sim đa năng </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Phiếu Doanh thu ngày của các đối thủ cạnh tranh </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Báo cáo kết quả chăm sóc cửa hàng điểm bán </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Báo cáo tình trạng sử dụng hình ảnh </a>';
		$html_menu_return .= 						'</li>';
		$html_menu_return .= 						'<li>';	
		$html_menu_return .= 							'<a href="#"> KD - Phiếu tổng hợp chương trình khuyễn mãi của ĐT-CT </a>';
		$html_menu_return .= 						'</li>';		
		
		$html_menu_return .= 					'</ul>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 			'</ul>';
		$html_menu_return .= 		'</li>';*/
		
//-----------

	//	$html_menu_return .= 		'<li>';
//		$html_menu_return .= 			'<a href="#"> Phát sinh ngày </a>';
//		$html_menu_return .= 			'<ul>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_reval_promotion_listview"> Phiếu tổng hợp chương trình khuyễn mãi của ĐT-CT </a>';
//		$html_menu_return .= 				'</li>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_store_care_result_listview"> Phiếu kết quả chăm sóc cửa hàng điểm bán </a>';
//		$html_menu_return .= 				'</li>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_store_tool_inventory_listview"> Phiếu hiện trạng sử dụng Hình ảnh, CCDC cửa hàng điểm bán </a>';
//		$html_menu_return .= 				'</li>';

		
		/*$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Phiếu đăng ký sử dụng Sim đa năng </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_solve_vialated_sim_listview"> Phiếu xử lý vi phạm sim đa năng </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_order_bill_listview"> Hoá đơn đặt hàng </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_sale_bill_listview"> Hoá đơn bán hàng </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_reval_revenue_listview"> Phiếu Doanh thu ngày của các đối thủ cạnh tranh </a>';		
		$html_menu_return .= 				'</li>';*/

	//	$html_menu_return .= 			'</ul>';
//		$html_menu_return .= 		'</li>';
//		
//
//		$html_menu_return .= 		'<li>';
//		$html_menu_return .= 			'<a href="#"> Báo cáo - Thống kê </a>';
//		$html_menu_return .= 			'<ul>';
//		$html_menu_return .= 				'<li>';
//		$html_menu_return .= 					'<a href="#"> BC Danh sách Cửa hàng Điểm bán </a>';	
//		$html_menu_return .= 						'<ul>';	
//		$html_menu_return .= 							'<li>';
//		$html_menu_return .= 								'<a href="'.base_url().'index.php/do_rpt_store_tool"> Danh sách CH-ĐB có hình ảnh, CCDC </a>';
//		$html_menu_return .= 							'</li>';
//		$html_menu_return .= 							'<li>';
//		$html_menu_return .= 								'<a href="'.base_url().'index.php/do_rpt_store_no_tool"> Danh sách CH-ĐB không có hình ảnh, CCDC </a>';		
//		$html_menu_return .= 							'</li>';
//		$html_menu_return .= 						'</ul>';
//		$html_menu_return .= 							'<li>';
//		$html_menu_return .= 								'<a href="'.base_url().'index.php/do_rpt_saler1_2"> Báo cáo thông tin hình ảnh theo cửa hàng, điểm bán </a>';		
//		$html_menu_return .= 							'</li>';		
//		$html_menu_return .= 				'</li>';
		
		
		
	/*	
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_rpt_mutifunc_sim_detail"> BC Danh sách Sim đa năng đăng ký hoạt động </a>';		
		$html_menu_return .= 				'</li>';

		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_rpt_revenue_store"> BC Doanh thu Cửa hàng Điểm bán </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_rpt_contact_media"> BC Danh sách các điểm bán tiếp xúc truyền thông và bán hàng </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_rpt_contact_media_in_day"> BC Danh sách các điểm bán tiếp xúc truyền thông trong ngày </a>';
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="'.base_url().'index.php/do_rpt_solve_vialated_sim"> BC Kết quả xử lý sim đa năng vi phạm </a>';		
		$html_menu_return .= 				'</li>';*/

		$html_menu_return .= 			'</ul>';

		$html_menu_return .= 		'</li>';
		
		$html_menu_return .= 		'<li>';
		$html_menu_return .= 			'<a href="#"> Trợ giúp </a>';
		$html_menu_return .= 			'<ul>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Hướng dẫn sử dụng </a>';		
		$html_menu_return .= 				'</li>';
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Hỏi đáp - Góp ý </a>';		
		$html_menu_return .= 				'</li>';
		
		$html_menu_return .= 				'<li>';
		$html_menu_return .= 					'<a href="#"> Sơ đồ chức năng </a>';		
		$html_menu_return .= 				'</li>';
		
		$html_menu_return .= 			'</ul>';
		$html_menu_return .= 		'</li>';
		
		return $html_menu_return;
		
	}
 //
 //
 //
function Fgen_html_combobox(	$str_filter=0, $str_name, $str_value=' ', $str_style='', 
								$obj_data, $field_value, $field_option, $submit_mode='', $tabindex='' )
	{
		$str_return = '';
		$str_select_tag='';
		$str_selected_option = '<option selected="selected"  value="'. $str_value . '">';				
		
		if (trim($str_style)=='')
		{
			$str_select_tag = '<select class="form-control" id="'.$str_name.'" ';
		}
		else 
		{
			$str_select_tag = '<select id="'.$str_name.'" style ="'.$str_style.'"';
		}

		// Xu ly tabindex cho combo
		if (trim($tabindex)!='')
		{
			$str_select_tag = $str_select_tag . ' tabindex="' . $tabindex .'" ';
		}
		
		if (trim($submit_mode)=='submit')
		{
			$str_select_tag = $str_select_tag . ' onChange="this.form.submit();" ';
		}		
		
		$str_return = $str_select_tag . ' name = ' . $str_name . '>';
		
		 
		
		if (trim($str_filter)=='')
		{			
			$str_return = $str_return . ' <option value=""> ' . ' ' . '</option>' ;
		}
		
		foreach($obj_data as $data)
		{
			if (trim($str_value) == $data[$field_value])
			{
				$str_return = $str_return . $str_selected_option . $data[$field_option] . '</option>' ;
			}
			else
			{
				$str_return = $str_return . '<option value='.$data[$field_value].'>' . $data[$field_option] . '</option>' ;
			}
		}
		
		$str_return = $str_return . '</select>';
			
		return $str_return;
	}
 
 //
 //
 //
 function Fgen_combo($obj_data, $str_value_field_name, $str_index_field_name, $str_filter=0, $str_name, $str_value='0', $str_style='', $tabindex='', $submit_mode='' )
	{
		$str_return = '';
		$str_select_tag='';
		$str_selected_option = '<option selected="selected" value="'.$str_value.'">';
		
		if (trim($str_style)=='')
		{
			$str_select_tag = '<select style="width:98%" ';
		}
		else
		{
			$str_select_tag = '<select ';
		}
		if (trim($submit_mode)=='submit')
		{
			$str_select_tag = $str_select_tag . ' onChange="this.form.submit();" ';
		}
		// Xu ly tabindex cho combo
		if (trim($tabindex)!='')
		{
			$str_select_tag = $str_select_tag . ' tabindex="' . $tabindex .'" ';
		}

		$str_return = $str_select_tag . 'name = ' . $str_name . '>';
		if (trim($str_filter)=='0')
		{			
			$str_return = $str_return . '<option value="">' . ' ' . '</option>' ;
		}
				
		foreach($obj_data as $data)
		{
			if (trim($str_value) == $data[$str_index_field_name])
			{
				$str_return = $str_return . $str_selected_option . $data[$str_value_field_name] . '</option>' ;
			}
			else
			{
				$str_return = $str_return . '<option value='.$data[$str_index_field_name].'>' . $data[$str_value_field_name] . '</option>' ;
			}
		}
		
		$str_return = $str_return . '</select>';
			
		return $str_return;
	}
//
// Xac dinh thong tin menu theo phan quyen chuc nang
// Luu y chuc nang quyen quan tri, quyen truong phong, quyen nhan vien
// Quyen truong phong la quyen co the xem all cac thong tin mnu. Gan giong nhu quyen admin.
function Fget_menu_html($nid_user = '')
{
	// Menu admin da duoc co dinh / hardcoded trong mod_header.php, khong con dung bang du lieu tuser_menu/tmenu
	return '';
}	

// dinh nghia them hung_pn89
 function Fgen_html_combobox_disable(	$str_filter=0, $str_name, $str_value=' ', $str_style='', 
								$obj_data, $field_value, $field_option, $submit_mode='', $tabindex='' , $event)
	{
		$str_return = '';
		$str_select_tag='';		
		$disable = '';
		if($event == 'edit' || $event == 'update_edit' || $event == 'edit_trans' || $event == 'update_edit_trans')
		$disable = 'disabled="disabled"';				
		$str_selected_option = '<option selected="selected"  value="'. $str_value . '">';				
		if (trim($str_style)=='')
		{
			$str_select_tag = '<select style="width:98%" '.$disable;
		}
		else
		{
			$str_select_tag = '<select  '.$disable;
		}

		// Xu ly tabindex cho combo
		if (trim($tabindex)!='')
		{
			$str_select_tag = $str_select_tag . ' tabindex="' . $tabindex .'" ';
		}
		
		if (trim($submit_mode)=='submit')
		{
			$str_select_tag = $str_select_tag . ' onChange="this.form.submit();" ';
		}		
		
		$str_return = $str_select_tag . ' name = ' . $str_name . '>';
		
		 
		
		if (trim($str_filter)=='')
		{			
			$str_return = $str_return . ' <option value=""> ' . ' ' . '</option>' ;
		}
		
		foreach($obj_data as $data)
		{
			if (trim($str_value) == $data[$field_value])
			{
				$str_return = $str_return . $str_selected_option . $data[$field_option] . '</option>' ;
			}
			else
			{
				$str_return = $str_return . '<option value='.$data[$field_value].'>' . $data[$field_option] . '</option>' ;
			}
		}
		
		$str_return = $str_return . '</select>';
			
		return $str_return;
	}
