<?php 
function tpl_527daec2_SellingDomainTableLo__26y3KtfH7Zl8mTLZFy4XDA(PHPTAL $tpl, PHPTAL_Context $ctx) {
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

		<?php /* tag "div" from line 10 */; ?>
<div id="content">
			<?php 
/* tag "div" from line 11 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/ContentHeader', $_thistpl) ;
$ctx->popSlots() ;
?>

			<?php 
/* tag "div" from line 12 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/LocationBar', $_thistpl) ;
$ctx->popSlots() ;
?>

			<?php /* tag "div" from line 13 */; ?>
<div class="container-fluid">							
				<?php /* tag "div" from line 14 */; ?>
<div class="row">				
					<?php /* tag "div" from line 15 */; ?>
<div class="col-12">
						<?php /* tag "a" from line 16 */; ?>
<a href="#DialogDelSelected" data-toggle="modal" class="btn btn-primary btn-ins">
							<?php /* tag "i" from line 17 */; ?>
<i class="glyphicons-remove_2"></i> Xóa chọn
						</a>
						<?php /* tag "div" from line 19 */; ?>
<div class="widget-box">							
							<?php /* tag "div" from line 20 */; ?>
<div class="widget-content nopadding">								
								<?php /* tag "table" from line 21 */; ?>
<table class="table table-bordered table-striped table-hover with-check">
									<?php /* tag "thead" from line 22 */; ?>
<thead>
										<?php /* tag "tr" from line 23 */; ?>
<tr>										
											<?php /* tag "th" from line 24 */; ?>
<th width="40"><?php /* tag "input" from line 24 */; ?>
<input type="checkbox" id="title-table-checkbox" name="title-table-checkbox"/></th>
											<?php /* tag "th" from line 25 */; ?>
<th width="120"><?php /* tag "div" from line 25 */; ?>
<div class="text-left">THỜI GIAN</div></th>
											<?php /* tag "th" from line 26 */; ?>
<th><?php /* tag "div" from line 26 */; ?>
<div class="text-left">NHÂN VIÊN</div></th>
											<?php /* tag "th" from line 27 */; ?>
<th width="120"><?php /* tag "div" from line 27 */; ?>
<div class="text-right">THÀNH TIỀN</div></th>
											<?php /* tag "th" from line 28 */; ?>
<th width="30">IN</th>
											<?php /* tag "th" from line 29 */; ?>
<th width="30">XÓA</th>
										</tr>
									</thead>
									<?php /* tag "tbody" from line 32 */; ?>
<tbody role="alert" aria-live="polite" aria-relevant="all">
										<?php 
/* tag "tr" from line 33 */ ;
$_tmp_1 = $ctx->repeat ;
$_tmp_1->Session = new PHPTAL_RepeatController($ctx->SessionAll)
 ;
$ctx = $tpl->pushContext() ;
foreach ($_tmp_1->Session as $ctx->Session): ;
?>
<tr>											
											<?php /* tag "td" from line 34 */; ?>
<td class="center"><?php 
/* tag "input" from line 34 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getId')))):  ;
$_tmp_2 = ' data-id="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<input class="CheckedDel" type="checkbox"<?php echo $_tmp_2 ?>
/></td>
											<?php /* tag "td" from line 35 */; ?>
<td><?php 
/* tag "a" from line 35 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getURLDetail')))):  ;
$_tmp_2 = ' href="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<a<?php echo $_tmp_2 ?>
><?php /* tag "div" from line 35 */; ?>
<div><?php echo phptal_escape($ctx->path($ctx->Session, 'getDateTimePrint')); ?>
</div></a></td>
											<?php /* tag "td" from line 36 */; ?>
<td><?php /* tag "div" from line 36 */; ?>
<div><?php echo phptal_escape($ctx->path($ctx->Session, 'getUser/getName')); ?>
</div></td>
											<?php /* tag "td" from line 37 */; ?>
<td><?php /* tag "div" from line 37 */; ?>
<div class="text-right"><?php echo phptal_escape($ctx->path($ctx->Session, 'getValuePrint')); ?>
</div></td>
											<?php /* tag "td" from line 38 */; ?>
<td align="center"><?php 
/* tag "a" from line 38 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getURLPrint')))):  ;
$_tmp_2 = ' href="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<a target="blank"<?php echo $_tmp_2 ?>
><?php /* tag "span" from line 38 */; ?>
<span class="glyphicons-print"></span></a></td>
											<?php /* tag "td" from line 39 */; ?>
<td class="center">
												<?php 
/* tag "a" from line 40 */ ;
if (null !== ($_tmp_2 = ($ctx->path($ctx->Session, 'getId')))):  ;
$_tmp_2 = ' data-id="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<a class="remove-item" href="#DialogDel" data-toggle="modal"<?php echo $_tmp_2 ?>
>
													<?php /* tag "i" from line 41 */; ?>
<i class="glyphicons-remove_2"></i>
												</a>
											</td>
										</tr><?php 
endforeach ;
$ctx = $tpl->popContext() ;
?>

									</tbody>								
								</table>
							</div>  							
						</div>
						<?php 
/* tag "div" from line 49 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/PageBar', $_thistpl) ;
$ctx->popSlots() ;
?>

						
						<!-- DELETE DIALOG  -->
						<?php /* tag "div" from line 52 */; ?>
<div id="DialogDel" class="modal fade">
							<?php /* tag "div" from line 53 */; ?>
<div class="modal-dialog">
								<?php /* tag "div" from line 54 */; ?>
<div class="modal-content">
									<?php /* tag "div" from line 55 */; ?>
<div class="modal-header">
										<?php /* tag "h3" from line 56 */; ?>
<h3>XÓA GIAO DỊCH</h3>
									</div>
									<?php /* tag "div" from line 58 */; ?>
<div class="modal-body">
										<?php /* tag "p" from line 59 */; ?>
<p>Bạn có chắc muốn xóa mục này ?</p>
									</div>
									<?php /* tag "div" from line 61 */; ?>
<div class="modal-footer">
										<?php /* tag "button" from line 62 */; ?>
<button id="URLDelButton" class="btn btn-primary btn-small">Xóa</button>
										<?php /* tag "button" from line 63 */; ?>
<button data-dismiss="modal" class="btn btn-default btn-small">Không</button>
									</div>
								</div>
							</div>
						</div>
						<!-- END DELETE DIALOG  -->
						
						<!-- DELETE SELECTED DIALOG  -->
						<?php /* tag "div" from line 71 */; ?>
<div id="DialogDelSelected" class="modal fade">
							<?php /* tag "div" from line 72 */; ?>
<div class="modal-dialog">
								<?php /* tag "div" from line 73 */; ?>
<div class="modal-content">
									<?php /* tag "div" from line 74 */; ?>
<div class="modal-header"><?php /* tag "h3" from line 74 */; ?>
<h3>XÓA GIAO DỊCH ĐÃ CHỌN</h3></div>
									<?php /* tag "div" from line 75 */; ?>
<div class="modal-body">
										<?php /* tag "p" from line 76 */; ?>
<p>Bạn có chắc muốn xóa không ?</p>
									</div>
									<?php /* tag "div" from line 78 */; ?>
<div class="modal-footer">
										<?php /* tag "button" from line 79 */; ?>
<button id="URLDelSelectedButton" class="btn btn-primary btn-small">Xóa</button>
										<?php /* tag "button" from line 80 */; ?>
<button data-dismiss="modal" class="btn btn-default btn-small">Không</button>
									</div>
								</div>
							</div>
						</div>
						<!-- END DELETE DIALOG  -->
					</div>				
				</div>
			</div>
		</div>
		<?php 
/* tag "div" from line 90 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/Footer', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php 
/* tag "div" from line 91 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/IncludeJS', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php /* tag "script" from line 92 */; ?>
<script type="text/javascript">
		/*<![CDATA[*/
		//-----------------------------------------------------------------------------------
			//Delete 1 CATEGORY			
			//-----------------------------------------------------------------------------------
			$('.remove-item').click(function(){
				$('#URLDelButton').attr('alt', $(this).attr('data-id'));
			});
						
			//Khi người dùng Click vào nút URLDelButton thì tiến  hành gọi Ajax xóa tự động
			$('#URLDelButton').click(function(){
				var URL = "/object/del/Session/" + $(this).attr('alt');
				$.ajax({
					type: "POST",					
					url: URL,
					success: function(msg){
						location.reload();
					}
				});
			});
			
			$('#URLDelSelectedButton').click(function(){
				var count = 0;
				var Data = [];
				var URL = "/object/del/Session/0";
				
				$(".CheckedDel").each(function( i, obj){
					if ( $(this).is(':checked')==true ){
						count += 1;
						Data[count] = $(this).attr('data-id');
					}
				});
				
				$.ajax({
					type: "POST",
					data: {ListId:Data},
					url: URL,
					success: function(msg){
						location.reload();
					}
				});
			});
		/*]]>*/
		</script>
	</body>
</html><?php 
/* end */ ;

}

?>
<?php /* 
*** DO NOT EDIT THIS FILE ***

Generated by PHPTAL from D:\AppWebServer\SPN_KhachSan\baduc\mvc\templates\SellingDomainTableLog.html (edit that file instead) */; ?>