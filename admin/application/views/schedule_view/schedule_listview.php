<!-- page content -->
<form name="frm_main" method="post" action="<?php echo $link_page; ?>"> 
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>Quản Lý Đặt Lịch Thi Công</h3>
				</div>
			</div>
			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="x_panel">
						<div class="x_title">
							<h2><i class="fa fa-calendar-check-o"></i> Danh sách khách hàng đặt lịch khảo sát & thi công</h2>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<!-- Bộ lọc và công cụ -->
							<div class="top-filter" style="margin-bottom:20px;display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:10px;">
								<div class="d-flex align-items-center" style="gap:8px;flex-wrap:wrap;">
									<input type="text" name="txtf_search" value="<?php echo htmlspecialchars($txtf_search); ?>" placeholder="Tìm tên, SĐT, địa chỉ..." class="form-control" style="width:200px;height:35px;">
									
									<select name="txtf_nstatus" class="form-control" style="width:160px;height:35px;">
										<option value="">-- Tất cả trạng thái --</option>
										<option value="0" <?php if($txtf_nstatus === '0') echo 'selected="selected"'; ?>>0 - Mới nhận</option>
										<option value="1" <?php if($txtf_nstatus === '1') echo 'selected="selected"'; ?>>1 - Đã liên hệ</option>
										<option value="2" <?php if($txtf_nstatus === '2') echo 'selected="selected"'; ?>>2 - Đã khảo sát</option>
										<option value="3" <?php if($txtf_nstatus === '3') echo 'selected="selected"'; ?>>3 - Đã thi công</option>
										<option value="4" <?php if($txtf_nstatus === '4') echo 'selected="selected"'; ?>>4 - Đã hủy</option>
									</select>

									<input name="btn_filter" type="button" class="btn btn-info" value="Lọc" onclick="js_SetSubmitButtonClick(this.form,this.name);" style="height:35px;"/>
									<?php if(!empty($txtf_search) || $txtf_nstatus !== ''): ?>
										<a href="<?php echo base_url(); ?>index.php/do_schedule_listview" class="btn btn-secondary" style="height:35px;line-height:22px;">Bỏ lọc</a>
									<?php endif; ?>
								</div>

								<div>
									<input name="btn_delete" type="button" class="btn btn-danger" value="Xóa các mục đã chọn"  
										onclick="js_CheckValidBeforeDeleteListview(this.form,'chkItems',
											'<?php echo $msg_confirm_before_delete; ?>' ,
											'<?php echo $msg_invalid_before_delete; ?>' )" />
									<input type="hidden" name="hidden_button" id="hidden_button"/>
								</div>
							</div>

							<!-- Bảng danh sách -->
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" style="width:100%;vertical-align:middle;">
									<thead>
										<tr style="background:#f8f9fa;">
											<th style="width:40px;text-align:center;">
												<input name="chkItems" type="checkbox" class="checkbox" onclick="js_CheckAllClick(this,this.name);" />
											</th>
											<th style="width:50px;text-align:center;">#</th>
											<th style="width:180px;">Khách hàng / SĐT</th>
											<th>Dịch vụ & Diện tích</th>
											<th>Địa chỉ công trình</th>
											<th style="width:140px;">Lịch hẹn</th>
											<th style="width:150px;text-align:center;">Trạng thái</th>
											<th style="width:110px;text-align:center;">Ngày tạo</th>
											<th style="width:110px;text-align:center;">Thao tác</th>
										</tr>
									</thead>
									<tbody>
									<?php if(empty($data_view)): ?>
										<tr>
											<td colspan="9" class="text-center" style="padding:30px;color:#888;">
												<i class="fa fa-info-circle fa-2x" style="display:block;margin-bottom:10px;"></i>
												Chưa có thông tin đặt lịch nào.
											</td>
										</tr>
									<?php else: ?>
										<?php $i = 1; foreach($data_view as $row): ?>
										<tr>
											<td style="text-align:center;">
												<input name="chk[]" type="checkbox" value="<?php echo $row['nid']; ?>" id="chkItems" class="checkbox" onclick="js_CheckItemClick(this, 'chkItems','chkItems');" />
											</td>
											<td style="text-align:center;"><?php echo $i; ?></td>
											<td>
												<a href="<?php echo base_url() . 'index.php/do_schedule/f_edit/' . $row['nid']; ?>" style="font-weight:700;color:#0056b3;font-size:14px;">
													<?php echo htmlspecialchars($row['cfullname']); ?>
												</a>
												<div style="margin-top:3px;">
													<a href="tel:<?php echo $row['cphone']; ?>" style="color:#28a745;font-weight:600;"><i class="fa fa-phone"></i> <?php echo htmlspecialchars($row['cphone']); ?></a>
												</div>
											</td>
											<td>
												<span class="badge badge-primary" style="font-size:12px;background-color:#007bff;"><?php echo htmlspecialchars($row['cservice']); ?></span>
												<?php if(!empty($row['careas'])): ?>
													<div style="font-size:12px;color:#555;margin-top:3px;"><i class="fa fa-arrows-alt"></i> Khối lượng: <strong><?php echo htmlspecialchars($row['careas']); ?></strong></div>
												<?php endif; ?>
											</td>
											<td style="max-width:250px;">
												<div style="font-size:13px;color:#333;"><?php echo htmlspecialchars($row['caddress']); ?></div>
												<?php if(!empty($row['cnote'])): ?>
													<div style="font-size:11px;color:#777;font-style:italic;margin-top:2px;">Ghi chú: <?php echo htmlspecialchars($row['cnote']); ?></div>
												<?php endif; ?>
											</td>
											<td>
												<?php if(!empty($row['ddate_booking'])): ?>
													<div><i class="fa fa-calendar"></i> <?php echo date('d/m/Y', strtotime($row['ddate_booking'])); ?></div>
												<?php endif; ?>
												<?php if(!empty($row['ctime_booking'])): ?>
													<div style="font-size:12px;color:#666;"><i class="fa fa-clock-o"></i> <?php echo htmlspecialchars($row['ctime_booking']); ?></div>
												<?php endif; ?>
											</td>
											<td style="text-align:center;">
												<select class="form-control form-control-sm select-status" data-nid="<?php echo $row['nid']; ?>" style="font-size:12px;font-weight:600;height:30px;">
													<option value="0" <?php if($row['nstatus'] == 0) echo 'selected="selected"'; ?>>🟡 Mới nhận</option>
													<option value="1" <?php if($row['nstatus'] == 1) echo 'selected="selected"'; ?>>🔵 Đã liên hệ</option>
													<option value="2" <?php if($row['nstatus'] == 2) echo 'selected="selected"'; ?>>🟣 Đã khảo sát</option>
													<option value="3" <?php if($row['nstatus'] == 3) echo 'selected="selected"'; ?>>🟢 Đã thi công</option>
													<option value="4" <?php if($row['nstatus'] == 4) echo 'selected="selected"'; ?>>⚪ Đã hủy</option>
												</select>
											</td>
											<td style="text-align:center;font-size:12px;color:#666;">
												<?php echo date('d/m/Y H:i', strtotime($row['ddate01'])); ?>
											</td>
											<td style="text-align:center;white-space:nowrap;">
												<div style="display:inline-flex;gap:6px;align-items:center;justify-content:center;">
													<a href="<?php echo base_url() . 'index.php/do_schedule/f_edit/' . $row['nid']; ?>" class="btn btn-sm btn-outline-primary" title="Chi tiết & Xử lý" style="padding:4px 8px;border-radius:4px;"><i class="fa fa-pencil"></i></a>
													<a href="<?php echo base_url() . 'index.php/do_schedule/f_delete/' . $row['nid']; ?>" onclick="return confirm('Bạn có chắc chắn muốn xóa lịch hẹn này?');" class="btn btn-sm btn-outline-danger" title="Xóa" style="padding:4px 8px;border-radius:4px;"><i class="fa fa-trash"></i></a>
												</div>
											</td>
										</tr>
										<?php $i++; endforeach; ?>
									<?php endif; ?>
									</tbody>
								</table>
							</div>

							<!-- Phân trang -->
							<table class="table table-filter" cellspacing="1">
								<tr>						
									<td></td>
									<td>
										<div class="d-flex justify-content-end align-items-center">	
											<label class="mg0"><?php echo $lbl_rows_per_page; ?></label>&nbsp;
											<input class="form-control" name="txt_row_per_page" type="text" size="5" value="<?php echo $txt_row_per_page; ?>" style="text-align:center;height:31px;width:70px;" />&nbsp;
											<input name="btn_row_per_page" type="button" value="<?php echo $btn_choose; ?>" onclick="js_SetSubmitButtonClick(this.form,this.name);" class="btn btn-info btn-sm"/>
										</div>
									</td>
									<td>
										<div class="d-flex justify-content-end align-items-center">		
											<?php if($txt_current_page > 1): ?>
											<input class="btn btn-secondary btn-sm" name="btn_previous" type="button" value="<<" onclick="js_SetSubmitButtonClick(this.form,'btn_previous');"/>&nbsp;	
											<?php endif; ?>
											<label class="mg0"><?php echo $txt_current_page . ' / ' . $txt_total_page; ?></label>&nbsp;
											<?php if($txt_current_page < $txt_total_page): ?>
											<input class="btn btn-secondary btn-sm" name="btn_next" type="button" value=">>" onclick="js_SetSubmitButtonClick(this.form,'btn_next');"/>&nbsp;
											<?php endif ?>
											<input class="form-control" name="txt_current_page" type="text" value="<?php echo $txt_current_page ; ?>" style="text-align:center;height:31px;width:50px;" size="5" />&nbsp;
											<input name="btn_page_number" type="button" value="<?php echo $btn_choose; ?>" onclick="js_SetSubmitButtonClick(this.form,this.name);" class="btn btn-info btn-sm" />
										</div>	
									</td>
								</tr>					
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<script>
document.addEventListener('DOMContentLoaded', function() {
	var selects = document.querySelectorAll('.select-status');
	selects.forEach(function(sel) {
		sel.addEventListener('change', function() {
			var nid = this.getAttribute('data-nid');
			var status = this.value;
			var xhr = new XMLHttpRequest();
			xhr.open('POST', '<?php echo base_url(); ?>index.php/do_schedule_listview/update_status_ajax', true);
			xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			xhr.onload = function() {
				if (xhr.status === 200) {
					// status updated successfully
				}
			};
			xhr.send('nid=' + encodeURIComponent(nid) + '&nstatus=' + encodeURIComponent(status));
		});
	});
});
</script>
