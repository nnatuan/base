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
											<label class="col-form-label col-md-2 col-sm-2 label-align">Tên <span class="required">*</span></label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="txt_ccat_products" value="<?php echo $txt_ccat_products; ?>" required="required" class="form-control" onkeyup="document.getElementById('txt_ccode').value = locdau(this.value);">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Code <span class="required">*</span></label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" id="txt_ccode" name="txt_ccode" value="<?php echo $txt_ccode; ?>" placeholder="" class="form-control ">
											</div>
										</div>
										<div class="item form-group" style="display:none;">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Phân loại</label>
											<div class="col-md-8 col-sm-8 ">
												<?php echo $gencbo_material_product_list; ?>
											</div>	
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Chỉ mục </label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="txt_cindex" value="<?php echo $txt_cindex; ?>" placeholder="" class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Tab Trang chủ (Nổi bật)</label>
											<div class="col-md-8 col-sm-8 ">
												<select name="txt_nspecial" class="form-control">
													<option value="0" <?php if(empty($txt_nspecial) || $txt_nspecial == '0') echo 'selected="selected"'; ?>>0 - Bình thường (Lưới danh mục)</option>
													<option value="1" <?php if(!empty($txt_nspecial) && $txt_nspecial == '1') echo 'selected="selected"'; ?>>1 - Hiển thị làm TAB LỌC trên Trang chủ</option>
												</select>
												<small class="text-muted">Khi chọn "1", danh mục này sẽ xuất hiện thành Tab nút lọc ngay trên phần Sản Phẩm Bán Chạy.</small>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Thẻ định danh (Tag)</label>
											<div class="col-md-8 col-sm-8 ">
												<input type="text" name="txt_ctag" value="<?php echo isset($txt_ctag) ? $txt_ctag : ''; ?>" placeholder="vd: epoxy, tools, service..." class="form-control">
												<small class="text-muted">Dùng làm data-filter cho nút lọc sản phẩm JS trên trang chủ.</small>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Icon FontAwesome</label>
											<div class="col-md-8 col-sm-8 ">
												<div class="input-group">
													<input type="text" name="txt_cimage_icon" value="<?php echo isset($txt_cimage_icon) ? $txt_cimage_icon : ''; ?>" placeholder="vd: fa-fill-drip, fa-toolbox, fa-gem, fa-gun..." class="form-control" list="icon_list">
													<div class="input-group-append">
														<span class="input-group-text"><i class="fa <?php echo (!empty($txt_cimage_icon) && strpos($txt_cimage_icon, 'fa-') !== false) ? $txt_cimage_icon : 'fa-tag'; ?>"></i></span>
													</div>
												</div>
												<datalist id="icon_list">
													<option value="fa-fill-drip">fa-fill-drip (Keo chà ron, sơn)</option>
													<option value="fa-toolbox">fa-toolbox (Dụng cụ thi công)</option>
													<option value="fa-gem">fa-gem (Kim tuyến, cao cấp)</option>
													<option value="fa-gun">fa-gun (Súng bắn keo)</option>
													<option value="fa-tornado">fa-tornado (Vòi trộn xoắn)</option>
													<option value="fa-circle-dot">fa-circle-dot (Bi cầu miết ron)</option>
													<option value="fa-screwdriver-wrench">fa-screwdriver-wrench (Dao cạo sủi)</option>
													<option value="fa-compact-disc">fa-compact-disc (Máy cắt ron)</option>
													<option value="fa-helmet-safety">fa-helmet-safety (Dịch vụ thi công)</option>
													<option value="fa-shield-halved">fa-shield-halved (Bảo hành chống thấm)</option>
												</datalist>
												<small class="text-muted">Nhập mã icon FontAwesome hoặc để trống nếu tải ảnh upload bên dưới.</small>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Mô tả ngắn</label>
											<div class="col-md-8 col-sm-8 ">
												<textarea class="form-control" name="txt_cnote" rows="3"><?php echo isset($txt_cnote) ? $txt_cnote : ''; ?></textarea>
											</div>
										</div>
										<div class="item form-group">
												<label class="col-form-label col-md-2 col-sm-2 label-align">Mô tả FB</label>
												<div class="col-md-8 col-sm-8 ">
													<textarea class="form-control" id="" name="fb_cdescription"><?php echo $fb_cdescription; ?></textarea>
												</div>
											</div>	
										<div class="item form-group">
											<label class="col-form-label col-md-2 col-sm-2 label-align">Banner <br><span style="color:red;">(1920x600)</span></label>
											<div class="col-md-8 col-sm-8 ">
												 <input name="txt_cthumb_img" type="file" id="txt_cthumb_img" value ="" size="25" style="width:400px;"/>
												 <br>
												<?php if($txt_cthumb_img != ''): ?>
												 <img style="margin-top:10px;width:200px;" src="<?php echo $fr_img.'upload/images_product/cat/'.$txt_cthumb_img; ?>"/>
												<?php endif; ?>
											</div>
										</div>
										<div class="item form-group">
												<label class="col-form-label col-md-2 col-sm-2 label-align">Image FB <br><span style="color:red;">(600x315)</span></label>
												<div class="col-md-8 col-sm-8 ">
													<input name="cproduct_fb" type="file" id="cproduct_fb" value ="" size="25" style="width:400px;"/>
													 <br>
													 <?php if($cproduct_fb != ''): ?>
													 <img style="margin-top:10px" width="200" src="<?php echo $fr_img.'upload/images_product/fb/'.$cproduct_fb; ?>"/>
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