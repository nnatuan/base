<!-- page content -->
<form name="frm_main" method="post" action="<?php echo $link_page; ?>">
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>QUẢN LÝ ĐƠN HÀNG</h3>
				</div>
			</div>
			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="x_panel">
						<div class="x_title">
							<h2><i class="fa fa-shopping-cart"></i> Danh Sách Đơn Hàng Từ Website</h2>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<!-- Bộ lọc đơn hàng -->
							<div class="top-filter" style="margin-bottom:20px;display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:10px;">
								<div class="d-flex align-items-center" style="gap:8px;flex-wrap:wrap;">
									<div class="group-filter" style="display:inline-flex;align-items:center;gap:5px;">
										<label style="margin:0;font-weight:600;">Từ ngày:</label>
										<input name="cdate_from" type="text" value="<?php echo htmlspecialchars($cdate_from); ?>" class="form-control date-picker" autocomplete="off" style="width:140px;height:35px;" placeholder="yyyy-mm-dd" onfocus="this.type='date'" onblur="if(!this.value)this.type='text'" />
									</div>
									<div class="group-filter" style="display:inline-flex;align-items:center;gap:5px;">
										<label style="margin:0;font-weight:600;">Đến ngày:</label>
										<input name="cdate_to" type="text" value="<?php echo htmlspecialchars($cdate_to); ?>" class="form-control date-picker" autocomplete="off" style="width:140px;height:35px;" placeholder="yyyy-mm-dd" onfocus="this.type='date'" onblur="if(!this.value)this.type='text'" />
									</div>
									<div class="group-filter" style="display:inline-flex;align-items:center;gap:5px;">
										<label style="margin:0;font-weight:600;">Trạng thái:</label>
										<?php echo $gencbo_order_status_list; ?>
									</div>
									<input name="btn_filter" type="button" value="<?php echo $btn_filter; ?>" onclick="js_SetSubmitButtonClick(this.form,this.name);" class="btn btn-info" style="height:35px;margin:0;"/>
									<input type="hidden" name="hidden_button" id="hidden_button"/>
								</div>

								<div>
									<input name="btn_header_export" type="button" class="btn btn-success" value="Xuất Excel" onclick="js_SetSubmitButtonClick(this.form,'btn_export');" style="height:35px;background:#04AA6D;border-color:#04AA6D;"/>
								</div>
							</div>

							<!-- Bảng danh sách đơn hàng -->
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" style="width:100%;vertical-align:middle;">
									<thead>
										<tr style="background:#f8f9fa;">
											<th style="width:40px;text-align:center;">#</th>
											<th style="width:130px;">Mã đơn</th>
											<th style="width:180px;">Khách hàng / SĐT</th>
											<th>Địa chỉ giao hàng</th>
											<th style="width:140px;text-align:right;">Tổng tiền</th>
											<th style="width:110px;text-align:center;">Ngày đặt</th>
											<th style="width:150px;text-align:center;">Trạng thái</th>
											<th style="width:110px;text-align:center;">Thao tác</th>
										</tr>
									</thead>
									<tbody>
									<?php if(empty($data_view)): ?>
										<tr>
											<td colspan="8" class="text-center" style="padding:30px;color:#888;">
												<i class="fa fa-info-circle fa-2x" style="display:block;margin-bottom:10px;"></i>
												Chưa có đơn hàng nào.
											</td>
										</tr>
									<?php else: ?>
										<?php $i = 1; foreach($data_view as $data): ?>
										<tr>
											<td style="text-align:center;"><?php echo $i; ?></td>
											<td>
												<a href="<?php echo base_url() . 'index.php/do_order/f_edit/' . $data['nid']; ?>" style="font-weight:700;color:#0056b3;font-size:14px;">
													<?php echo htmlspecialchars($data['ccode']); ?>
												</a>
												<?php if(!empty($data['ccode_vtp'])): ?>
													<div style="font-size:11px;color:#ed1c32;">VTP: <?php echo htmlspecialchars($data['ccode_vtp']); ?></div>
												<?php endif; ?>
											</td>
											<td>
												<strong><?php echo htmlspecialchars($data['cfullname']); ?></strong>
												<?php if(!empty($data['cphone'])): ?>
													<div style="margin-top:2px;">
														<a href="tel:<?php echo $data['cphone']; ?>" style="color:#28a745;font-weight:600;"><i class="fa fa-phone"></i> <?php echo htmlspecialchars($data['cphone']); ?></a>
													</div>
												<?php endif; ?>
											</td>
											<td style="max-width:300px;">
												<div style="font-size:13px;"><?php echo htmlspecialchars($data['caddress']); ?></div>
												<?php if(!empty($data['cnote'])): ?>
													<div style="font-size:11px;color:#777;font-style:italic;margin-top:2px;">Ghi chú: <?php echo htmlspecialchars($data['cnote']); ?></div>
												<?php endif; ?>
											</td>
											<td style="text-align:right;">
												<strong style="color:#d9534f;font-size:14px;">
													<?php echo !empty($data['ntotal']) ? number_format((float)$data['ntotal'], 0, ',', '.') . ' đ' : '0 đ'; ?>
												</strong>
											</td>
											<td style="text-align:center;">
												<?php echo !empty($data['ddate01']) ? Fview_date($data['ddate01']) : ''; ?>
												<?php if(!empty($data['ctime01'])): ?>
													<div style="font-size:11px;color:#888;"><?php echo htmlspecialchars($data['ctime01']); ?></div>
												<?php endif; ?>
											</td>
											<td style="text-align:center;">
												<?php 
													$st_id = (int)$data['nid_order_status'];
													$badge_cls = 'badge-secondary';
													if($st_id == 1) $badge_cls = 'badge-primary';
													elseif($st_id == 2) $badge_cls = 'badge-warning';
													elseif($st_id == 3) $badge_cls = 'badge-info';
													elseif($st_id == 4) $badge_cls = 'badge-success';
													elseif($st_id == 5) $badge_cls = 'badge-danger';
													$status_title = !empty($data['corder_status']) ? $data['corder_status'] : get_order_status_name($st_id);
												?>
												<span class="badge <?php echo $badge_cls; ?>" style="font-size:12px;padding:6px 10px;">
													<?php echo htmlspecialchars($status_title ? $status_title : 'Tiếp nhận'); ?>
												</span>
											</td>
											<td style="text-align:center;white-space:nowrap;">
												<div style="display:inline-flex;gap:6px;align-items:center;justify-content:center;">
													<a href="<?php echo base_url() . 'index.php/do_order/f_edit/' . $data['nid']; ?>" class="btn btn-sm btn-outline-primary" title="Sửa đơn hàng" style="padding:4px 8px;border-radius:4px;">
														<i class="fa fa-pencil"></i>
													</a>
													<a href="<?php echo base_url() . 'index.php/do_order/f_delete/' . $data['nid']; ?>" onclick="return confirm('Bạn có chắc chắn muốn xóa đơn hàng này?');" class="btn btn-sm btn-outline-danger" title="Xóa đơn hàng" style="padding:4px 8px;border-radius:4px;">
														<i class="fa fa-trash"></i>
													</a>
												</div>
											</td>
										</tr>
										<?php $i++; endforeach; ?>
									<?php endif; ?>
									</tbody>
								</table>
							</div>

							<!-- Phân trang -->
							<table class="table table-filter" cellspacing="1" style="margin-top:15px;">
								<tr>
									<td></td>
									<td style="width:250px;">
										<div class="d-flex justify-content-end align-items-center">
											<label class="mg0" style="margin-bottom:0;font-size:13px;"><?php echo $lbl_rows_per_page; ?>:</label>&nbsp;
											<input class="form-control" name="txt_row_per_page" type="text" size="5" value="<?php echo $txt_row_per_page; ?>" style="text-align:center;height:31px;width:70px;" />&nbsp;
											<input name="btn_row_per_page" type="button" value="<?php echo $btn_choose; ?>" onclick="js_SetSubmitButtonClick(this.form,this.name);" class="btn btn-info btn-sm"/>
										</div>
									</td>
									<td style="width:300px;">
										<div class="d-flex justify-content-end align-items-center">
											<?php if($txt_current_page > 1): ?>
												<input class="btn btn-secondary btn-sm" name="btn_previous" type="button" value="<<" onclick="js_SetSubmitButtonClick(this.form,'btn_previous');"/>&nbsp;
											<?php endif; ?>
											<label class="mg0" style="margin-bottom:0;font-size:13px;"><?php echo $txt_current_page . ' / ' . $txt_total_page; ?></label>&nbsp;
											<?php if($txt_current_page < $txt_total_page): ?>
												<input class="btn btn-secondary btn-sm" name="btn_next" type="button" value=">>" onclick="js_SetSubmitButtonClick(this.form,'btn_next');"/>&nbsp;
											<?php endif; ?>
											<input class="form-control" name="txt_current_page" type="text" value="<?php echo $txt_current_page; ?>" style="text-align:center;height:31px;width:50px;" size="5" />&nbsp;
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
<!-- /page content -->
