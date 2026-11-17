<!-- page content -->
<form name="frm_main" method="post" action="<?php echo $link_page; ?>"> 
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><small></small></h3>
              </div>

              <div class="title_right text-right">
					
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>QUẢN LÝ MODULE</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
							<div class="top-filter" style="margin-bottom:15px;display:flex;justify-content:flex-end;align-items:center;">
								<div>
									<a href="<?php echo base_url(); ?>index.php/do_module/f_add" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới Module</a>
									<input type="hidden" name="hidden_button" id="hidden_button"/>	
								</div>
							</div>
							<table id="datatable" class="table table-striped table-bordered" style="width:100%">
							  <thead>
								<tr>
								  <th style="width:50px;text-align:center;">#</th>	
								  <th style="width:180px;">Mã Code</th>
								  <th>Tiêu đề / Nội dung chính</th>
								  <th style="width:160px;">Thẻ / Phụ đề</th>
								  <th style="width:80px;text-align:center;">Thứ tự</th>
								  <th style="width:90px;text-align:center;">Trạng thái</th>
								  <th style="width:110px;text-align:center;">Ngày tạo</th>
								</tr>
							  </thead>
								<tbody>
								<?php $i=1; 
								foreach($data_view as $data){
								?>
								  <tr>
									 <td style="text-align:center;"><?php echo $i; ?></td>
									 <td>
										<span class="badge badge-info" style="font-size:12px;font-family:monospace;padding:5px 8px;background-color:#17a2b8;"><?php echo htmlspecialchars($data['ccode']); ?></span>
									 </td>
									 <td class="text-left">
										<a href="<?php echo base_url() . 'index.php/do_module/f_edit/' . $data['nid']; ?>" style="font-weight:600;color:#0056b3;">
											<?php echo Fview_text($data['cmodule']); ?>
										</a>
										<?php if(!empty($data['cnote'])): ?>
											<div style="font-size:12px;color:#666;margin-top:3px;max-width:350px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
												<?php echo htmlspecialchars(strip_tags($data['cnote'])); ?>
											</div>
										<?php endif; ?>
									 </td>
									 <td>
										<span style="font-size:12px;color:#555;"><?php echo Fview_text($data['ctag']); ?></span>
									 </td>
									 <td style="text-align:center;">
										<span class="badge badge-light" style="font-size:13px;border:1px solid #ddd;padding:4px 8px;"><?php echo Fview_text($data['cindex']); ?></span>
									 </td>
									 <td style="text-align:center;">
										<a href="javascript:void(0)" onclick="update_status('tmodule','<?php echo $data['nid']; ?>','nstatus')">
											<i id="i-nstatus-<?php echo $data['nid']; ?>" class="i-status fa <?php if($data['nstatus']==1) echo "fa-check text-success"; else echo "fa-times text-danger"; ?>" style="font-size:16px;" aria-hidden="true"></i>
										</a>
									 </td>
									 <td style="text-align:center;"><?php echo Fview_date($data['ddate01']); ?></td>
								  </tr>
								<?php $i++;} ?>
							  </tbody>
							</table>
							
							<table class="table table-filter" cellspacing="1">
								<tr>						
									<td class="d-flex">	
												
									</td>
									
									<td>
										<div class="d-flex justify-content-end align-items-center">	
											<label class="mg0"><?php echo $lbl_rows_per_page; ?>:</label>&nbsp;
											
											<input class="form-control" name="txt_row_per_page" type="text" size="5" value="<?php echo $txt_row_per_page; ?>"
													style="text-align:center;height:31px;width:80px;" />&nbsp;
											
											<input name="btn_row_per_page" type="button" value="<?php echo $btn_choose; ?>" onclick="js_SetSubmitButtonClick(this.form,this.name);" class="btn btn-info btn-sm"/>
										</div>
									</td>
									
									<td>
										<div class="d-flex justify-content-end align-items-center">		
											<?php if($txt_current_page > 1): ?>
											<input class="btn btn-secondary btn-sm" name="btn_previous" type="button" value="<<" 
												onclick="js_SetSubmitButtonClick(this.form,'btn_previous');"/>&nbsp;	
											<?php endif; ?>
											
											<label class="mg0"><?php echo $txt_current_page . ' / ' . $txt_total_page; ?></label>&nbsp;
											
											<?php if($txt_current_page < $txt_total_page): ?>
											<input class="btn btn-secondary btn-sm" name="btn_next" type="button" value=">>" 
												onclick="js_SetSubmitButtonClick(this.form,'btn_next');"/>&nbsp;
											<?php endif ?>
													
											<input class="form-control" name="txt_current_page" type="text" value="<?php echo $txt_current_page ; ?>"
												style="text-align:center;height:31px;width:50px;" size="5" />&nbsp;
												   
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

			</div>
          </div>
        </div>
		</form>
        <!-- /page content -->