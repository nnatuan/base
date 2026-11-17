<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Chi Tiết Lịch Hẹn Thi Công #<?php echo $schedule['nid']; ?></h3>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 ">
				<div class="x_panel">
					<div class="x_title">
						<h2><i class="fa fa-info-circle"></i> Thông tin khách hàng & Tiến độ xử lý</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<br />
						<form name="form_main" method="post" action="<?php echo $link_page; ?>">
							<input type="hidden" name="hidden_nid" value="<?php echo $schedule['nid']; ?>">
							<input type="hidden" name="hidden_button" value="btn_submit">

							<div class="row">
								<!-- Cột trái: Thông tin khách hàng -->
								<div class="col-md-6 col-sm-12">
									<div class="card p-3 mb-3" style="border:1px solid #e9ecef;border-radius:8px;background:#fdfdfd;">
										<h4 style="font-size:16px;font-weight:700;color:#007bff;border-bottom:1px solid #eee;padding-bottom:10px;margin-bottom:15px;">
											<i class="fa fa-user"></i> Thông Tin Khách Hàng
										</h4>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Họ và tên <span class="text-danger">*</span></label>
											<div class="col-md-8 col-sm-8">
												<input type="text" name="txt_cfullname" value="<?php echo htmlspecialchars($schedule['cfullname']); ?>" required="required" class="form-control">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Số điện thoại <span class="text-danger">*</span></label>
											<div class="col-md-8 col-sm-8">
												<div class="input-group">
													<input type="text" name="txt_cphone" value="<?php echo htmlspecialchars($schedule['cphone']); ?>" required="required" class="form-control">
													<div class="input-group-append">
														<a href="tel:<?php echo $schedule['cphone']; ?>" class="btn btn-success" title="Gọi trực tiếp"><i class="fa fa-phone"></i></a>
													</div>
												</div>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Địa chỉ công trình</label>
											<div class="col-md-8 col-sm-8">
												<textarea name="txt_caddress" class="form-control" rows="2"><?php echo htmlspecialchars($schedule['caddress']); ?></textarea>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Thời gian gửi</label>
											<div class="col-md-8 col-sm-8">
												<input type="text" readonly="readonly" class="form-control bg-light" value="<?php echo date('d/m/Y H:i:s', strtotime($schedule['ddate01'])); ?>">
											</div>
										</div>
									</div>
								</div>

								<!-- Cột phải: Chi tiết dịch vụ & Tiến độ -->
								<div class="col-md-6 col-sm-12">
									<div class="card p-3 mb-3" style="border:1px solid #e9ecef;border-radius:8px;background:#fdfdfd;">
										<h4 style="font-size:16px;font-weight:700;color:#28a745;border-bottom:1px solid #eee;padding-bottom:10px;margin-bottom:15px;">
											<i class="fa fa-wrench"></i> Dịch Vụ & Tiến Độ Xử Lý
										</h4>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Gói dịch vụ</label>
											<div class="col-md-8 col-sm-8">
												<input type="text" name="txt_cservice" value="<?php echo htmlspecialchars($schedule['cservice']); ?>" class="form-control" list="services_list">
												<datalist id="services_list">
													<option value="Thi công keo chà ron gạch cho nhà ở dân dụng">
													<option value="Khảo sát công trình & Báo giá tại chỗ">
													<option value="Phục hồi & Thay thế ron gạch cũ chống thấm">
													<option value="Bảo dưỡng ron men sứ kháng nấm mốc">
												</datalist>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Khối lượng / Diện tích</label>
											<div class="col-md-8 col-sm-8">
												<input type="text" name="txt_careas" value="<?php echo htmlspecialchars($schedule['careas']); ?>" placeholder="vd: 50m2, Toàn bộ nhà tắm..." class="form-control">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Ngày hẹn khảo sát</label>
											<div class="col-md-8 col-sm-8">
												<input type="date" name="txt_ddate_booking" value="<?php echo !empty($schedule['ddate_booking']) ? $schedule['ddate_booking'] : ''; ?>" class="form-control">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Giờ hẹn</label>
											<div class="col-md-8 col-sm-8">
												<input type="text" name="txt_ctime_booking" value="<?php echo htmlspecialchars($schedule['ctime_booking']); ?>" placeholder="vd: 09:00 - 11:30 sáng" class="form-control">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Trạng thái xử lý <span class="text-danger">*</span></label>
											<div class="col-md-8 col-sm-8">
												<select name="txt_nstatus" class="form-control font-weight-bold" style="font-size:14px;">
													<option value="0" <?php if($schedule['nstatus'] == 0) echo 'selected="selected"'; ?>>🟡 0 - Mới nhận (Chờ nhân viên liên hệ)</option>
													<option value="1" <?php if($schedule['nstatus'] == 1) echo 'selected="selected"'; ?>>🔵 1 - Đã liên hệ (Đã gọi điện tư vấn)</option>
													<option value="2" <?php if($schedule['nstatus'] == 2) echo 'selected="selected"'; ?>>🟣 2 - Đã khảo sát (Đã đo đạc & báo giá)</option>
													<option value="3" <?php if($schedule['nstatus'] == 3) echo 'selected="selected"'; ?>>🟢 3 - Đã thi công (Đã hoàn thiện nghiệm thu)</option>
													<option value="4" <?php if($schedule['nstatus'] == 4) echo 'selected="selected"'; ?>>⚪ 4 - Đã hủy (Khách hủy lịch / Sai số)</option>
												</select>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-form-label col-md-4 col-sm-4 label-align">Ghi chú điều phối / Kỹ thuật</label>
											<div class="col-md-8 col-sm-8">
												<textarea name="txt_cnote" class="form-control" rows="3" placeholder="Nhập ghi chú tình trạng, thợ phụ trách, kết quả khảo sát..."><?php echo htmlspecialchars($schedule['cnote']); ?></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="ln_solid"></div>
							<div class="item form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-success" style="padding:8px 30px;font-size:15px;font-weight:600;"><i class="fa fa-save"></i> Cập Nhật Tiến Độ</button>
									<a href="<?php echo $link_cancel; ?>" class="btn btn-secondary" style="padding:8px 25px;font-size:15px;"><i class="fa fa-arrow-left"></i> Quay Về Danh Sách</a>
									<a href="<?php echo base_url() . 'index.php/do_schedule/f_delete/' . $schedule['nid']; ?>" onclick="return confirm('Bạn có chắc chắn muốn xóa bản ghi này?');" class="btn btn-danger" style="padding:8px 20px;font-size:15px;"><i class="fa fa-trash"></i> Xóa Lịch</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /page content -->
