<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3><small></small></h3>
						</div>

						<div class="title_right">
							
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>Thêm mới / Chỉnh sửa</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form name='form_main' method="post" action="<?php echo $link_page; ?>" enctype="multipart/form-data">
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Mã Module (Code) <span class="required">*</span></label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="txt_ccode" id="txt_ccode" list="module_codes" value="<?php echo !empty($txt_ccode) ? htmlspecialchars($txt_ccode) : ''; ?>" required="required" placeholder="Chọn hoặc nhập mã code (vd: sec_hero, sec_bestsellers, faq...)" class="form-control">
												<datalist id="module_codes">
													<option value="sec_hero">Hero Section (Tiêu đề, slogan, badge)</option>
													<option value="hero_bullet">Hero Bullets (Gạch đầu dòng Hero)</option>
													<option value="hero_stat">Hero Thống kê (10 Năm, 3.500+...)</option>
													<option value="hero_card">Hero Preview Card (BASC Pro Series...)</option>
													<option value="sec_logos">Tiêu đề đối tác tin dùng</option>
													<option value="partner_logo">Logo đối tác đồng hành</option>
													<option value="sec_bestsellers">Section Sản phẩm chủ lực</option>
													<option value="sec_categories">Section Danh mục vật tư</option>
													<option value="sec_services">Section Dịch vụ thi công</option>
													<option value="sec_reviews">Section Đánh giá khách hàng</option>
													<option value="testimonial">Đánh giá khách hàng chi tiết</option>
													<option value="sec_why">Section So sánh & Tại sao chọn BASC</option>
													<option value="brand_benefit">Lợi ích thương hiệu chi tiết</option>
													<option value="sec_ugc">Section Công trình thực tế UGC</option>
													<option value="ugc_gallery">Video / Ảnh công trình thực tế</option>
													<option value="sec_about">Section Về thương hiệu BASC</option>
													<option value="about_metric">Chỉ số thống kê về BASC</option>
													<option value="sec_faqs">Section Câu hỏi thường gặp</option>
													<option value="faq">Câu hỏi FAQ chi tiết</option>
													<option value="sec_final_cta">Section Đặt lịch & CTA chân trang</option>
												</datalist>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Tiêu đề chính <span class="required">*</span></label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="txt_cmodule" value="<?php echo htmlspecialchars($txt_cmodule); ?>" required="required" placeholder="Tiêu đề section / Tên đối tác / Tên người review / Câu hỏi..." class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Thẻ / Eyebrow / Tag / Rating / Icon</label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="txt_ctag" value="<?php echo !empty($txt_ctag) ? htmlspecialchars($txt_ctag) : ''; ?>" placeholder="Eyebrow section / Icon fontawesome (fa-fill-drip) / Chức danh..." class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Link / Nút bấm</label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="clink" value="<?php echo htmlspecialchars($clink); ?>" placeholder="Chữ nút bấm (vd: Nhận báo giá ngay) hoặc URL liên kết" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Nội dung / Mô tả</label>
											<div class="col-md-8 col-sm-8 ">
												<textarea class="form-control" rows="5" name="txt_cnote" placeholder="Mô tả phụ section / Nội dung đánh giá / Câu trả lời FAQ..."><?php echo htmlspecialchars($txt_cnote); ?></textarea>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Nội dung bổ sung (Đoạn 2 nếu có)</label>
											<div class="col-md-8 col-sm-8 ">
												<textarea class="form-control" rows="4" name="txt_eng_cnote" placeholder="Đoạn văn giới thiệu thứ 2 (dùng cho Về BASC, So sánh thực tế...)"><?php echo !empty($txt_eng_cnote) ? htmlspecialchars($txt_eng_cnote) : ''; ?></textarea>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Thứ tự hiển thị</label>
											<div class="col-md-3 col-sm-3 ">
												<input type="number" name="txt_cindex" value="<?php echo !empty($txt_cindex) ? htmlspecialchars($txt_cindex) : '1'; ?>" class="form-control" min="1" max="999">
											</div>
											<label class="col-form-label col-md-2 col-sm-2 label-align">Trạng thái</label>
											<div class="col-md-3 col-sm-3 ">
												<select name="txt_nstatus" class="form-control">
													<option value="1" <?php if(isset($txt_nstatus) && $txt_nstatus == 1) echo 'selected'; ?>>Hiển thị (Bật)</option>
													<option value="0" <?php if(isset($txt_nstatus) && $txt_nstatus == 0) echo 'selected'; ?>>Ẩn (Tắt)</option>
												</select>
											</div>
										</div>
										<div class="item form-group">
											<?php $note = ''; 
											if($nid==1) 
												$note = '<br><span style="color:red;">(500x700)</span>';
											elseif($nid==2 || $nid==3 || $nid==4 || $nid==5 || $nid==6 || $nid==7) 
												$note = '<br><span style="color:red;">(200x200)</span>';
											elseif($nid==11) 
												$note = '<br><span style="color:red;">(500x1000)</span>';
											elseif($nid==12) 
												$note = '<br><span style="color:red;">(1920x1080)</span>';	
											?>
											<label class="col-form-label col-md-2 col-sm-2 label-align">Image/Background <?php echo $note; ?></label>
											<div class="col-md-8 col-sm-8 ">
												<input name="txt_cthumb_img" type="file" id="txt_cimage" value ="" size="25" style="width:400px;"/>
												 <br>
												 <?php if($txt_cthumb_img != ''): ?>
												 <img style="margin-top:10px" width="200" src="<?php echo $fr_img.'upload/images_module/'.$txt_cthumb_img; ?>"/>
												 <?php endif; ?>
											</div>
										</div>
										
										<div class="ln_solid"></div>
										<div class="item form-group">
											<div class="col-md-8 col-sm-8 offset-md-2">
												<button type="button" class="btn btn-primary" name="btn_submit" value ="<?php echo $btn_update; ?>" 
													onclick ="js_SetSubmitButtonClick(this.form, this.name);">Xác nhận</button>
												<button class="btn btn-danger" type="button" name="btn_cancel" value ="<?php echo $btn_cancel; ?>" 
													onclick ="location.href='<?php echo $link_cancel; ?> '">Quay về</button>
											</div>
										</div>
										<input name="hidden_nid" type="hidden" value = "<?php echo $nid; ?>"  />
									  <input name="hidden_event" type="hidden" value = "<?php echo $event; ?>"  />
									  <input type="hidden" name="hidden_button"  value = "" />
									  <input name="hidden_image_old" type="hidden" value = "<?php echo $txt_cthumb_img; ?>"  />
									</form>
								</div>
							</div>
						</div>
					</div>

					
				</div>
			</div>
			<!-- /page content -->