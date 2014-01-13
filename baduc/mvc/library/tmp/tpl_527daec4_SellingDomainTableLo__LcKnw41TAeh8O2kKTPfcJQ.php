<?php 
function tpl_527daec4_SellingDomainTableLo__LcKnw41TAeh8O2kKTPfcJQ(PHPTAL $tpl, PHPTAL_Context $ctx) {
$_thistpl = $tpl ;
$_translator = $tpl->getTranslator() ;
/* tag "documentElement" from line 1 */ ;
$ctx->setDocType('<!DOCTYPE html>',false) ;
?>

<?php /* tag "html" from line 2 */; ?>
<html style="overflow-y:hidden;" lang="en">
	<?php /* tag "head" from line 3 */; ?>
<head>
		<?php 
/* tag "div" from line 4 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/IncludeMETA', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php 
/* tag "div" from line 5 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/IncludeCSS', $_thistpl) ;
$ctx->popSlots() ;
?>

	</head>
	
	<?php /* tag "body" from line 8 */; ?>
<body data-menu-position="closed">
		<?php 
/* tag "div" from line 9 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/Header', $_thistpl) ;
$ctx->popSlots() ;
?>

		
		<?php /* tag "div" from line 11 */; ?>
<div id="content">
			<?php 
/* tag "div" from line 12 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/ContentHeader', $_thistpl) ;
$ctx->popSlots() ;
?>

			<?php 
/* tag "div" from line 13 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/LocationBar', $_thistpl) ;
$ctx->popSlots() ;
?>

			<?php /* tag "div" from line 14 */; ?>
<div class="container-fluid">							
				<?php 
/* tag "div" from line 15 */ ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Session, 'getId')))):  ;
$_tmp_1 = ' alt="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<div class="row" id="IdSession"<?php echo $_tmp_1 ?>
>
					<?php /* tag "div" from line 16 */; ?>
<div class="col-12">
						<?php /* tag "div" from line 17 */; ?>
<div class="widget-box">
							<?php /* tag "div" from line 18 */; ?>
<div class="widget-title">
								<?php /* tag "span" from line 19 */; ?>
<span class="icon"><?php /* tag "i" from line 19 */; ?>
<i class="glyphicons-table"></i></span>
								<?php 
/* tag "a" from line 20 */ ;
if (null !== ($_tmp_2 = ('#DialogSessionEdit'))):  ;
$_tmp_2 = ' href="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<a data-toggle="modal"<?php echo $_tmp_2 ?>
><?php /* tag "h5" from line 20 */; ?>
<h5>Click để cập nhật</h5></a>
							</div>
							<?php /* tag "div" from line 22 */; ?>
<div class="widget-content nopadding">
								<?php /* tag "div" from line 23 */; ?>
<div role="grid" class="dataTables_wrapper">																		
									<?php /* tag "table" from line 24 */; ?>
<table cellpadding="10" border="0" width="100%">
										<?php /* tag "tr" from line 25 */; ?>
<tr>
											<?php /* tag "td" from line 26 */; ?>
<td width="120"><?php /* tag "div" from line 26 */; ?>
<div class="text-right">BẮT ĐẦU : </div></td>
											<?php /* tag "td" from line 27 */; ?>
<td><?php /* tag "div" from line 27 */; ?>
<div class="text-left"><?php echo phptal_escape($ctx->path($ctx->Session, 'getDateTimePrint')); ?>
</div></td>
										</tr>
										<?php /* tag "tr" from line 29 */; ?>
<tr>									
											<?php /* tag "td" from line 30 */; ?>
<td><?php /* tag "div" from line 30 */; ?>
<div class="text-right">KẾT THÚC : </div></td>
											<?php /* tag "td" from line 31 */; ?>
<td><?php /* tag "div" from line 31 */; ?>
<div class="text-left"><?php echo phptal_escape($ctx->path($ctx->Session, 'getDateTimeEndPrint')); ?>
</div></td>
										</tr>
										<?php /* tag "tr" from line 33 */; ?>
<tr>
											<?php /* tag "td" from line 34 */; ?>
<td><?php /* tag "div" from line 34 */; ?>
<div class="text-right">SỐ GIỜ : </div></td>
											<?php /* tag "td" from line 35 */; ?>
<td><?php /* tag "div" from line 35 */; ?>
<div class="text-left"><?php echo phptal_escape($ctx->path($ctx->Session, 'getHours')); ?>
</div></td>									
										</tr>
										<?php /* tag "tr" from line 37 */; ?>
<tr>									
											<?php /* tag "td" from line 38 */; ?>
<td><?php /* tag "div" from line 38 */; ?>
<div class="text-right">TIỀN GIỜ : </div></td>
											<?php /* tag "td" from line 39 */; ?>
<td><?php /* tag "div" from line 39 */; ?>
<div class="text-left"><?php echo phptal_escape($ctx->path($ctx->Session, 'getValueHoursPrint')); ?>
</div></td>
										</tr>
									</table>
									<?php /* tag "table" from line 42 */; ?>
<table class="table table-bordered table-striped table-hover">
										<?php /* tag "thead" from line 43 */; ?>
<thead>
											<?php /* tag "tr" from line 44 */; ?>
<tr>										
												<?php /* tag "th" from line 45 */; ?>
<th width="30">STT</th>
												<?php /* tag "th" from line 46 */; ?>
<th><?php /* tag "div" from line 46 */; ?>
<div class="text-left">TÊN MÓN</div></th>
												<?php /* tag "th" from line 47 */; ?>
<th width="120"><?php /* tag "div" from line 47 */; ?>
<div class="text-right">SỐ LƯỢNG</div></th>
												<?php /* tag "th" from line 48 */; ?>
<th width="120"><?php /* tag "div" from line 48 */; ?>
<div class="text-right">ĐƠN GIÁ</div></th>
												<?php /* tag "th" from line 49 */; ?>
<th width="120"><?php /* tag "div" from line 49 */; ?>
<div class="text-right">THÀNH TIỀN</div></th>
												<?php /* tag "th" from line 50 */; ?>
<th width="30"><?php /* tag "i" from line 50 */; ?>
<i class="glyphicons-bin"></i></th>
											</tr>
										</thead>
										<?php /* tag "tbody" from line 53 */; ?>
<tbody>
											<?php 
/* tag "tr" from line 54 */ ;
$_tmp_2 = $ctx->repeat ;
$_tmp_2->Detail = new PHPTAL_RepeatController($ctx->path($ctx->Session, 'getDetails'))
 ;
$ctx = $tpl->pushContext() ;
foreach ($_tmp_2->Detail as $ctx->Detail): ;
?>
<tr>
												<?php /* tag "td" from line 55 */; ?>
<td><?php /* tag "div" from line 55 */; ?>
<div class="text-center"><?php echo phptal_escape($ctx->path($ctx->repeat, 'Detail/number')); ?>
</div></td>
												<?php /* tag "td" from line 56 */; ?>
<td><?php 
/* tag "a" from line 56 */ ;
if (null !== ($_tmp_3 = ($ctx->path($ctx->Detail, 'getId')))):  ;
$_tmp_3 = ' data-id="'.phptal_escape($_tmp_3).'"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<a class="update-item" href="#DialogEdit" data-toggle="modal"<?php echo $_tmp_3 ?>
><?php echo phptal_escape($ctx->path($ctx->Detail, 'getCourse/getName')); ?>
</a></td>
												<?php /* tag "td" from line 57 */; ?>
<td><?php /* tag "div" from line 57 */; ?>
<div class="text-right"><?php echo phptal_escape($ctx->path($ctx->Detail, 'getCountPrint')); ?>
</div></td>
												<?php /* tag "td" from line 58 */; ?>
<td><?php /* tag "div" from line 58 */; ?>
<div class="text-right"><?php echo phptal_escape($ctx->path($ctx->Detail, 'getPricePrint')); ?>
</div></td>
												<?php /* tag "td" from line 59 */; ?>
<td><?php /* tag "div" from line 59 */; ?>
<div class="text-right"><?php echo phptal_escape($ctx->path($ctx->Detail, 'getValuePrint')); ?>
</div></td>												
												<?php /* tag "td" from line 60 */; ?>
<td class="center">
													<?php 
/* tag "a" from line 61 */ ;
if (null !== ($_tmp_3 = ($ctx->path($ctx->Detail, 'getId')))):  ;
$_tmp_3 = ' data-id="'.phptal_escape($_tmp_3).'"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<a class="remove-item" href="#DialogDel" data-toggle="modal"<?php echo $_tmp_3 ?>
>
														<?php /* tag "i" from line 62 */; ?>
<i class="glyphicons-remove_2"></i>
													</a>
												</td>
											</tr><?php 
endforeach ;
$ctx = $tpl->popContext() ;
?>

										</tbody>
										<?php /* tag "tfoot" from line 67 */; ?>
<tfoot>
											<?php /* tag "tr" from line 68 */; ?>
<tr>
												<?php /* tag "td" from line 69 */; ?>
<td colspan="4"><?php /* tag "div" from line 69 */; ?>
<div class="text-right">GIẢM GIÁ</div></td>
												<?php /* tag "td" from line 70 */; ?>
<td><?php /* tag "div" from line 70 */; ?>
<div class="text-right"><?php echo phptal_escape($ctx->path($ctx->Session, 'getDiscountPercentPrint')); ?>
</div></td>
												<?php /* tag "td" from line 71 */; ?>
<td></td>
											</tr>
											<?php /* tag "tr" from line 73 */; ?>
<tr>
												<?php /* tag "td" from line 74 */; ?>
<td colspan="4"><?php /* tag "div" from line 74 */; ?>
<div class="text-right"><?php /* tag "B" from line 74 */; ?>
<B>TỔNG CỘNG</B></div></td>
												<?php /* tag "td" from line 75 */; ?>
<td><?php /* tag "div" from line 75 */; ?>
<div class="text-right"><?php echo phptal_escape($ctx->path($ctx->Session, 'getValuePrint')); ?>
</div></td>
												<?php /* tag "td" from line 76 */; ?>
<td></td>
											</tr>
										</tfoot>
									</table>									
								</div>  
							</div>
						</div>
						<!-- DELETE DIALOG  -->
						<?php /* tag "div" from line 84 */; ?>
<div id="DialogDel" class="modal fade">
							<?php /* tag "div" from line 85 */; ?>
<div class="modal-dialog">
								<?php /* tag "div" from line 86 */; ?>
<div class="modal-content">
									<?php /* tag "div" from line 87 */; ?>
<div class="modal-header">
										<?php /* tag "h3" from line 88 */; ?>
<h3>XÓA CHI TIẾT</h3>
									</div>
									<?php /* tag "div" from line 90 */; ?>
<div class="modal-body">
										<?php /* tag "p" from line 91 */; ?>
<p>Bạn có chắc muốn xóa mục này ?</p>
									</div>
									<?php /* tag "div" from line 93 */; ?>
<div class="modal-footer">
										<?php /* tag "button" from line 94 */; ?>
<button id="URLDelButton" class="btn btn-primary btn-small">Xóa</button>
										<?php /* tag "button" from line 95 */; ?>
<button data-dismiss="modal" class="btn btn-default btn-small">Không</button>
									</div>
								</div>
							</div>
						</div>
						<!-- END DELETE DIALOG  -->
					
						<!-- DIALOG EDIT	-->
						<?php /* tag "div" from line 103 */; ?>
<div id="DialogEdit" class="modal fade">
							<?php /* tag "div" from line 104 */; ?>
<div class="modal-dialog">
								<?php /* tag "div" from line 105 */; ?>
<div class="modal-content">
									<?php /* tag "div" from line 106 */; ?>
<div class="modal-header">
										<?php /* tag "h3" from line 107 */; ?>
<h3><?php /* tag "i" from line 107 */; ?>
<i class="glyphicons-fast_food modal-icon"></i>CẬP NHẬT MÓN</h3>
									</div>
									<?php /* tag "div" from line 109 */; ?>
<div class="form-horizontal">
										<?php /* tag "div" from line 110 */; ?>
<div class="form-group">
											<?php /* tag "label" from line 111 */; ?>
<label class="control-label">Id</label>
											<?php /* tag "div" from line 112 */; ?>
<div class="controls">
												<?php /* tag "input" from line 113 */; ?>
<input readonly="readonly" id="IdCourse1" name="IdCourse1" type="text" class="form-control input-small"/>
											</div>
										</div>
										<?php /* tag "div" from line 116 */; ?>
<div class="form-group">
											<?php /* tag "label" from line 117 */; ?>
<label class="control-label">Tên</label>
											<?php /* tag "div" from line 118 */; ?>
<div class="controls">
												<?php /* tag "input" from line 119 */; ?>
<input readonly="readonly" id="Name1" name="Name1" type="text" class="form-control input-small"/>
											</div>
										</div>
										<?php /* tag "div" from line 122 */; ?>
<div class="form-group">
											<?php /* tag "label" from line 123 */; ?>
<label class="control-label">Số lượng</label>
											<?php /* tag "div" from line 124 */; ?>
<div class="controls">
												<?php /* tag "input" from line 125 */; ?>
<input id="Count1" name="Count1" type="text" class="form-control input-small"/>
											</div>
										</div>
										<?php /* tag "div" from line 128 */; ?>
<div class="form-group">
											<?php /* tag "label" from line 129 */; ?>
<label class="control-label">Đơn giá</label>
											<?php /* tag "div" from line 130 */; ?>
<div class="controls">
												<?php /* tag "input" from line 131 */; ?>
<input id="Price1" name="Price1" type="text" class="form-control input-small"/>
											</div>
										</div>
										<?php /* tag "div" from line 134 */; ?>
<div class="modal-footer">
											<?php /* tag "button" from line 135 */; ?>
<button id="URLUpdButton" class="btn btn-primary btn-small"><?php /* tag "i" from line 135 */; ?>
<i class="glyphicons-download_alt"></i> Lưu</button>
											<?php /* tag "button" from line 136 */; ?>
<button data-dismiss="modal" class="btn btn-default btn-small"><?php /* tag "i" from line 136 */; ?>
<i class="glyphicons-undo"></i> Hủy</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END DIALOG EDIT -->
										
						<!-- UPDATE SESSION DIALOG  -->
						<?php /* tag "div" from line 145 */; ?>
<div id="DialogSessionEdit" class="modal fade">
							<?php /* tag "div" from line 146 */; ?>
<div class="modal-dialog">
								<?php /* tag "div" from line 147 */; ?>
<div class="modal-content">
									<?php /* tag "div" from line 148 */; ?>
<div class="modal-header">
										<?php /* tag "h3" from line 149 */; ?>
<h3><?php /* tag "i" from line 149 */; ?>
<i class="glyphicons-fast_food modal-icon"></i>CẬP NHẬT GIAO DỊCH</h3>
									</div>
									<?php /* tag "div" from line 151 */; ?>
<div class="form-horizontal">										
										<?php /* tag "div" from line 152 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 153 */; ?>
<label class="control-label">Bắt đầu</label>
											<?php /* tag "div" from line 154 */; ?>
<div class="controls">								
												<?php 
/* tag "input" from line 155 */ ;
if (null !== ($_tmp_3 = ($ctx->path($ctx->Session, 'getDateTime')))):  ;
$_tmp_3 = ' value="'.phptal_escape($_tmp_3).'"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<input type="text" name="DateTime2" id="DateTime2" data-date-format="yyyy-mm-dd hh:ii"<?php echo $_tmp_3 ?>
/>
											</div>
										</div>
										<?php /* tag "div" from line 158 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 159 */; ?>
<label class="control-label">Kết thúc</label>
											<?php /* tag "div" from line 160 */; ?>
<div class="controls">								
												<?php 
/* tag "input" from line 161 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getDateTimeEnd')))):  ;
$_tmp_2 = ' value="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<input type="text" name="DateTimeEnd2" id="DateTimeEnd2" data-date-format="yyyy-mm-dd hh:ii"<?php echo $_tmp_2 ?>
/>
											</div>
										</div>
										<?php /* tag "div" from line 164 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 165 */; ?>
<label class="control-label">Khách hàng</label>
											<?php /* tag "div" from line 166 */; ?>
<div class="controls">
												<?php /* tag "select" from line 167 */; ?>
<select name="IdCustomer2" id="IdCustomer2">
													<?php 
/* tag "option" from line 168 */ ;
$_tmp_3 = $ctx->repeat ;
$_tmp_3->Customer = new PHPTAL_RepeatController($ctx->CustomerAll)
 ;
$ctx = $tpl->pushContext() ;
foreach ($_tmp_3->Customer as $ctx->Customer): ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Customer, 'getId')))):  ;
$_tmp_2 = ' value="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
if ($ctx->Session->getIdCustomer()==$ctx->Customer->getId()):  ;
$_tmp_4 = ' selected="selected"' ;
else:  ;
$_tmp_4 = '' ;
endif ;
?>
<option<?php echo $_tmp_2 ?>
<?php echo $_tmp_4 ?>
>
														<?php /* tag "span" from line 169 */; ?>
<span><?php echo phptal_escape($ctx->path($ctx->Customer, 'getName')); ?>
</span>
													</option><?php 
endforeach ;
$ctx = $tpl->popContext() ;
?>

												</select>
											</div>
										</div>
										<?php /* tag "div" from line 174 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 175 */; ?>
<label class="control-label">Ghi chú</label>
											<?php /* tag "div" from line 176 */; ?>
<div class="controls">								
												<?php 
/* tag "input" from line 177 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getNote')))):  ;
$_tmp_2 = ' value="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<input type="text" name="Note2" id="Note2" class="form-control input-small"<?php echo $_tmp_2 ?>
/>
											</div>
										</div>										
										<?php /* tag "div" from line 180 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 181 */; ?>
<label class="control-label">Giảm giá (%)</label>
											<?php /* tag "div" from line 182 */; ?>
<div class="controls">
												<?php 
/* tag "input" from line 183 */ ;
if (null !== ($_tmp_4 = ($ctx->path($ctx->Session, 'getDiscountPercent')))):  ;
$_tmp_4 = ' value="'.phptal_escape($_tmp_4).'"' ;
else:  ;
$_tmp_4 = '' ;
endif ;
?>
<input type="text" name="DiscountPercent2" id="DiscountPercent2" class="form-control input-small"<?php echo $_tmp_4 ?>
/>
											</div>
										</div>
										<?php /* tag "div" from line 186 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 187 */; ?>
<label class="control-label">Phụ thu</label>
											<?php /* tag "div" from line 188 */; ?>
<div class="controls">								
												<?php 
/* tag "input" from line 189 */ ;
if (null !== ($_tmp_3 = ($ctx->path($ctx->Session, 'getSurtax')))):  ;
$_tmp_3 = ' value="'.phptal_escape($_tmp_3).'"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<input type="text" name="Surtax2" id="Surtax2" class="form-control input-small"<?php echo $_tmp_3 ?>
/>
											</div>
										</div>
										<?php /* tag "div" from line 192 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 193 */; ?>
<label class="control-label">Tính Tiền</label>
											<?php /* tag "div" from line 194 */; ?>
<div class="controls">								
												<?php /* tag "select" from line 195 */; ?>
<select name="Status2" id="Status2">
													<?php 
/* tag "option" from line 196 */ ;
if ($ctx->Session->getStatus()==0?true:false):  ;
$_tmp_2 = ' selected="selected"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<option value="0"<?php echo $_tmp_2 ?>
>CHƯA TÍNH</option>
													<?php 
/* tag "option" from line 197 */ ;
if ($ctx->Session->getStatus()==1?true:false):  ;
$_tmp_4 = ' selected="selected"' ;
else:  ;
$_tmp_4 = '' ;
endif ;
?>
<option value="1"<?php echo $_tmp_4 ?>
>THANH TOÁN ĐỦ</option>
													<?php 
/* tag "option" from line 198 */ ;
if ($ctx->Session->getStatus()==2?true:false):  ;
$_tmp_3 = ' selected="selected"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<option value="2"<?php echo $_tmp_3 ?>
>NỢ PHIẾU</option>
												</select>
											</div>
										</div>	
										<?php /* tag "div" from line 202 */; ?>
<div class="control-group">
											<?php /* tag "label" from line 203 */; ?>
<label class="control-label">Tiền khách đưa</label>
											<?php /* tag "div" from line 204 */; ?>
<div class="controls">								
												<?php 
/* tag "input" from line 205 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getPayment')))):  ;
$_tmp_2 = ' value="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<input type="text" name="Payment2" id="Payment2" class="form-control input-small"<?php echo $_tmp_2 ?>
/>
											</div>
										</div>
										<?php /* tag "div" from line 208 */; ?>
<div class="modal-footer">
											<?php /* tag "button" from line 209 */; ?>
<button id="URLUpdSessionButton" class="btn btn-primary btn-small" type="submit"><?php /* tag "i" from line 209 */; ?>
<i class="glyphicons-download_alt"></i> Lưu</button>
											<?php /* tag "button" from line 210 */; ?>
<button data-dismiss="modal" class="btn btn-default btn-small"><?php /* tag "i" from line 210 */; ?>
<i class="glyphicons-undo"></i> Hủy</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END UPDATE SESSION DIALOG  -->
					</div>
				</div>
			</div>
		</div>
		<?php 
/* tag "div" from line 221 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/Footer', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php 
/* tag "div" from line 222 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/IncludeJS', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php /* tag "script" from line 223 */; ?>
<script src="/mvc/templates/theme/cms/js/bootstrap-datetimepicker.js"></script>
		<?php /* tag "script" from line 224 */; ?>
<script src="/mvc/templates/theme/cms/js/bootstrap-datetimepicker.vi.js"></script>
		
		<?php /* tag "script" from line 226 */; ?>
<script type="text/javascript">
		/*<![CDATA[*/
			$('#DateTime2').datetimepicker({
				language:  'vi',
				weekStart: 1,
				todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				forceParse: 0,
				showMeridian: 1
			});
			
			$('#DateTimeEnd2').datetimepicker({
				language:  'vi',
				weekStart: 1,
				todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				forceParse: 0,
				showMeridian: 1
			});
				
			//-----------------------------------------------------------------------------------
			//Delete 1 CATEGORY			
			//-----------------------------------------------------------------------------------
			$('.remove-item').click(function(){
				$('#URLDelButton').attr('alt', $(this).attr('data-id'));
			});
			//Khi người dùng Click vào nút URLDelButton thì tiến  hành gọi Ajax xóa tự động
			$('#URLDelButton').click(function(){
				var URL = "/object/del/SessionDetail/" + $(this).attr('alt');
				$.ajax({
					type: "POST",					
					url: URL,
					success: function(msg){
						location.reload();
					}
				});
			});
								
			//-----------------------------------------------------------------------------------
			//Load 1 SESSION DETAIL
			//-----------------------------------------------------------------------------------
			$('.update-item').click(function(){
				//Load dữ liệu JSON về
				var url = "/object/load/SessionDetail/" + $(this).attr('data-id');
				
				//Load dữ liệu JSON lên FORM
				$.getJSON(url, function(data){
					$('#URLUpdButton').attr('alt', data.Id);
					$('#IdCourse1').attr('value', data.IdCourse);
					$('#Name1').attr('value', data.Name);
					$('#Count1').attr('value', data.Count);
					$('#Price1').attr('value', data.Price);
				});
			});
			//-----------------------------------------------------------------------------------
			//Update 1 SESSION DETAIL
			//-----------------------------------------------------------------------------------
			$('#URLUpdButton').click(function(){
				var Data = [];
				Data[0] = $('#URLUpdButton').attr('alt');				
				Data[1] = $('#IdSession').attr('alt')				
				Data[2] = $('#IdCourse1').val();
				Data[3] = $('#Count1').val();
				Data[4] = $('#Price1').val();
																											
				var URL = "/object/upd/SessionDetail";
				$.ajax({
					type: "POST",
					data: {Data:Data},
					url: URL,
					success: function(msg){
						location.reload();
					}
				});
			});			
			
			//-----------------------------------------------------------------------------------
			//Update 1 CATEGORY
			//-----------------------------------------------------------------------------------
			$('#URLUpdSessionButton').click(function(){
				var Data = [];
				Data[0] 	= $('#IdSession').attr('alt');
				Data[1] 	= $('#IdTable').attr('alt');
				Data[2] 	= $('#IdUser').attr('alt');
				Data[3] 	= $('#IdCustomer2').val();
				Data[4] 	= $('#DateTime2').val();
				Data[5] 	= $('#DateTimeEnd2').val();
				Data[6] 	= $('#Note2').val();
				Data[7] 	= $('#Status2').val();
				//Data[8] 	= $('#DiscountValue2').val();
				Data[8] 	= 0;
				Data[9] 	= $('#DiscountPercent2').val();
				Data[10] 	= $('#Surtax2').val();
				Data[11] 	= $('#Payment2').val();
																											
				var URL = "/object/upd/Session";
				$.ajax({
					type: "POST",
					data: {Data:Data},
					url: URL,
					success: function(msg){
						location.reload();
					}
				});
			});			
		/*]]>*/
		</script>
		<?php 
/* tag "div" from line 337 */ ;
if (null !== ($_tmp_4 = ($ctx->path($ctx->Session, 'getTable/getId')))):  ;
$_tmp_4 = ' alt="'.phptal_escape($_tmp_4).'"' ;
else:  ;
$_tmp_4 = '' ;
endif ;
?>
<div id="IdTable"<?php echo $_tmp_4 ?>
></div>
		<?php 
/* tag "div" from line 338 */ ;
if (null !== ($_tmp_3 = ($ctx->path($ctx->Session, 'getIdUser')))):  ;
$_tmp_3 = ' alt="'.phptal_escape($_tmp_3).'"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<div id="IdUser"<?php echo $_tmp_3 ?>
></div>
	</body>
</html><?php 
/* end */ ;

}

?>
<?php /* 
*** DO NOT EDIT THIS FILE ***

Generated by PHPTAL from D:\AppWebServer\SPN_KhachSan\baduc\mvc\templates\SellingDomainTableLogDetail.html (edit that file instead) */; ?>