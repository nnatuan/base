<style>
.table td, .table th {
    vertical-align: middle !important;
    padding: 0.65rem 0.75rem !important;
}
.order-detail-card {
    background: #fff;
    border: 1px solid #e9ecef;
    border-radius: 8px;
    padding: 15px;
    margin-bottom: 20px;
}
.order-info-label {
    font-weight: 600;
    color: #495057;
    margin-bottom: 0;
}
.order-price-highlight {
    font-size: 1.15rem;
    font-weight: 700;
    color: #d9534f;
}
</style>

<form name='form_main' id="form_main" method="post" action="<?php echo $link_page; ?>" enctype="multipart/form-data">
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>CHI TIẾT ĐƠN HÀNG #<?php echo htmlspecialchars($obj_order_view['ccode']); ?></h3>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
                <!-- Cột trái: Thông tin khách hàng & giao hàng -->
                <div class="col-md-6 col-sm-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2><i class="fa fa-user"></i> Thông tin khách hàng & Giao hàng</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Mã đơn hàng</label>
                                <div class="col-md-8 col-sm-8">
                                    <input type="text" class="form-control" readonly value="<?php echo htmlspecialchars($obj_order_view['ccode']); ?>" style="font-weight:700;color:#0056b3;">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Thời gian đặt</label>
                                <div class="col-md-8 col-sm-8">
                                    <input type="text" class="form-control" readonly value="<?php echo Fview_date($obj_order_view['ddate01']) . (!empty($obj_order_view['ctime01']) ? ' ' . $obj_order_view['ctime01'] : ''); ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Họ và tên khách</label>
                                <div class="col-md-8 col-sm-8">
                                    <input type="text" class="form-control" readonly value="<?php echo htmlspecialchars($obj_order_view['cfullname']); ?>" style="font-weight:600;">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Số điện thoại</label>
                                <div class="col-md-8 col-sm-8">
                                    <div class="input-group">
                                        <input type="text" class="form-control" readonly value="<?php echo htmlspecialchars($obj_order_view['cphone']); ?>" style="font-weight:600;color:#28a745;">
                                        <?php if (!empty($obj_order_view['cphone'])): ?>
                                        <div class="input-group-append">
                                            <a href="tel:<?php echo $obj_order_view['cphone']; ?>" class="btn btn-outline-success" title="Gọi điện">
                                                <i class="fa fa-phone"></i> Gọi
                                            </a>
                                        </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Địa chỉ nhận hàng</label>
                                <div class="col-md-8 col-sm-8">
                                    <textarea class="form-control" readonly rows="2"><?php echo htmlspecialchars($obj_order_view['caddress']); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Ghi chú của khách</label>
                                <div class="col-md-8 col-sm-8">
                                    <textarea class="form-control" readonly rows="2" style="background:#fcfcfc;"><?php echo !empty($obj_order_view['cnote']) ? htmlspecialchars($obj_order_view['cnote']) : 'Không có ghi chú'; ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-4 col-sm-4 order-info-label">Hình thức thanh toán</label>
                                <div class="col-md-8 col-sm-8">
                                    <span class="badge badge-info" style="font-size:13px;padding:6px 10px;">Giao hàng thu tiền tận nơi (COD)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Cột phải: Danh sách sản phẩm đặt mua -->
                <div class="col-md-6 col-sm-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2><i class="fa fa-shopping-basket"></i> Danh sách mặt hàng đặt mua</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover" width="100%">
                                    <thead>
                                        <tr style="background:#f8f9fa;">
                                            <th style="width:40px;text-align:center;">#</th>
                                            <th>Sản phẩm</th>
                                            <th style="width:110px;text-align:right;">Đơn giá</th>
                                            <th style="width:60px;text-align:center;">SL</th>
                                            <th style="width:120px;text-align:right;">Thành tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                        $i = 1;
                                        $sum_total = 0;
                                        if (!empty($obj_order_detail) && is_array($obj_order_detail)):
                                            foreach($obj_order_detail as $data):
                                                $prod_name = 'Sản phẩm #' . $data['nid_product'];
                                                $prod = get_product_byid($data['nid_product']);
                                                if (!empty($prod['cproducts'])) {
                                                    $prod_name = $prod['cproducts'];
                                                }

                                                $unit_price = isset($data['cprice']) ? (float)$data['cprice'] : 0;
                                                $qty = isset($data['nquantity']) ? (int)$data['nquantity'] : 1;
                                                $line_total = $unit_price * $qty;
                                                $sum_total += $line_total;
                                        ?>
                                        <tr>
                                            <td style="text-align:center;"><?php echo $i; ?></td>
                                            <td>
                                                <strong style="color:#333;"><?php echo htmlspecialchars($prod_name); ?></strong>
                                            </td>
                                            <td style="text-align:right;">
                                                <?php echo $unit_price > 0 ? number_format($unit_price, 0, ',', '.') . ' đ' : 'Liên hệ'; ?>
                                            </td>
                                            <td style="text-align:center;">
                                                <span class="badge badge-secondary" style="font-size:12px;"><?php echo $qty; ?></span>
                                            </td>
                                            <td style="text-align:right;font-weight:600;color:#2c3e50;">
                                                <?php echo $line_total > 0 ? number_format($line_total, 0, ',', '.') . ' đ' : 'Liên hệ'; ?>
                                            </td>
                                        </tr>
                                        <?php 
                                            $i++;
                                            endforeach;
                                        endif; 
                                        
                                        $final_total = !empty($obj_order_view['ntotal']) ? (float)$obj_order_view['ntotal'] : $sum_total;
                                        ?>
                                        <tr style="background:#fff7f7;">
                                            <td colspan="4" style="text-align:right;font-weight:700;font-size:14px;">
                                                Tổng tiền thanh toán:
                                            </td>
                                            <td style="text-align:right;">
                                                <span class="order-price-highlight">
                                                    <?php echo $final_total > 0 ? number_format($final_total, 0, ',', '.') . ' đ' : 'Liên hệ'; ?>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Khung xử lý trạng thái đơn hàng & ghi chú Admin -->
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2><i class="fa fa-cogs"></i> Xử lý & Cập nhật trạng thái đơn hàng</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <div class="form-group row">
                                <label class="col-form-label col-md-2 col-sm-3 order-info-label">Trạng thái đơn hàng</label>
                                <div class="col-md-6 col-sm-9">
                                    <?php echo $gencbo_order_status_list; ?>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-2 col-sm-3 order-info-label">Ghi chú quản trị</label>
                                <div class="col-md-8 col-sm-9">
                                    <textarea class="form-control" rows="3" name="cadmin_note" placeholder="Nhập ghi chú xử lý đơn hàng nội bộ (ví dụ: đã gọi khách, hẹn giao sáng mai...)"><?php echo htmlspecialchars($cadmin_note); ?></textarea>
                                </div>
                            </div>

                            <div class="ln_solid"></div>
                            <div class="form-group row">
                                <div class="col-md-10 col-sm-9 offset-md-2">
                                    <input type="button" name="btn_submit" value="<?php echo $btn_update; ?>" onclick="js_SetSubmitButtonClick(this.form, this.name);" class="btn btn-primary" style="padding:8px 24px;font-weight:600;"/>
                                    <input name="btn_cancel" type="button" value="<?php echo $btn_cancel; ?>" onclick="location.href='<?php echo $link_cancel; ?>'" class="btn btn-secondary" style="padding:8px 20px;"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <input name="hidden_nid" type="hidden" value="<?php echo $nid; ?>" />
    <input name="hidden_event" type="hidden" value="<?php echo $event; ?>" />
    <input type="hidden" name="hidden_button" value="" />
</form>
