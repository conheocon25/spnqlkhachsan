<?php 
function tpl_527daebf_SellingDomain__X8wNpqOMjbWzHa83lB8YQw(PHPTAL $tpl, PHPTAL_Context $ctx) {
$_thistpl = $tpl ;
$_translator = $tpl->getTranslator() ;
/* tag "documentElement" from line 1 */ ;
$ctx->setDocType('<!DOCTYPE html>',false) ;
?>

<?php /* tag "html" from line 2 */; ?>
<html lang="en">
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
<body>
		<?php 
/* tag "div" from line 9 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/Header', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php 
/* tag "div" from line 10 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/StyleTools', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php /* tag "div" from line 11 */; ?>
<div id="sidebar">
			<?php /* tag "ul" from line 12 */; ?>
<ul style="display: block;">
				<?php 
/* tag "li" from line 13 */ ;
$_tmp_1 = $ctx->repeat ;
$_tmp_1->Domain1 = new PHPTAL_RepeatController($ctx->DomainAll)
 ;
$ctx = $tpl->pushContext() ;
foreach ($_tmp_1->Domain1 as $ctx->Domain1): ;
if (null !== ($_tmp_2 = ($ctx->Domain1->getId()==$ctx->Domain->getId()? 'active':'disable'))):  ;
$_tmp_2 = ' class="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<li<?php echo $_tmp_2 ?>
>
					<?php 
/* tag "a" from line 14 */ ;
if (null !== ($_tmp_3 = ($ctx->path($ctx->Domain1, 'getURLSelling')))):  ;
$_tmp_3 = ' href="'.phptal_escape($_tmp_3).'"' ;
else:  ;
$_tmp_3 = '' ;
endif ;
?>
<a<?php echo $_tmp_3 ?>
><?php /* tag "i" from line 14 */; ?>
<i class="glyphicons-show_big_thumbnails"></i><?php /* tag "span" from line 14 */; ?>
<span><?php echo phptal_escape($ctx->path($ctx->Domain1, 'getName')); ?>
</span></a>
				</li><?php 
endforeach ;
$ctx = $tpl->popContext() ;
?>

			</ul>
		</div>
		<?php /* tag "div" from line 18 */; ?>
<div id="content">
			<?php 
/* tag "div" from line 19 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/ContentHeader', $_thistpl) ;
$ctx->popSlots() ;
?>

			<?php 
/* tag "div" from line 20 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/Locationbar', $_thistpl) ;
$ctx->popSlots() ;
?>

			<?php /* tag "div" from line 21 */; ?>
<div class="row">
				<?php /* tag "div" from line 22 */; ?>
<div class="col-12">
					<?php /* tag "div" from line 23 */; ?>
<div class="widget-box">
						<?php /* tag "div" from line 24 */; ?>
<div class="widget-content nopadding">
							<?php /* tag "table" from line 25 */; ?>
<table class="table table-bordered table-striped table-hover">
								<?php /* tag "thead" from line 26 */; ?>
<thead>
									<?php /* tag "tr" from line 27 */; ?>
<tr>
										<?php /* tag "th" from line 28 */; ?>
<th width="40"><?php /* tag "i" from line 28 */; ?>
<i class="glyphicons-macbook"></i></th>
										<?php /* tag "th" from line 29 */; ?>
<th><?php /* tag "div" from line 29 */; ?>
<div class="text-left">TÊN</div></th>
										<?php /* tag "th" from line 30 */; ?>
<th width="120"><?php /* tag "div" from line 30 */; ?>
<div class="text-right">PHIẾU</div></th>
										<?php /* tag "th" from line 31 */; ?>
<th width="60">IN</th>
										<?php /* tag "th" from line 32 */; ?>
<th width="60">VÀO</th>
										<?php /* tag "th" from line 33 */; ?>
<th width="60">RA</th>
										<?php /* tag "th" from line 34 */; ?>
<th width="60">GỌI</th>
										<?php /* tag "th" from line 35 */; ?>
<th width="60">SỔ</th>
										<?php /* tag "th" from line 36 */; ?>
<th width="60">DỜI</th>										
										<?php /* tag "th" from line 37 */; ?>
<th width="60">GOM</th>
									</tr>
								</thead>
								<?php /* tag "tbody" from line 40 */; ?>
<tbody>											
									<?php 
/* tag "tr" from line 41 */ ;
$_tmp_3 = $ctx->repeat ;
$_tmp_3->Table = new PHPTAL_RepeatController($ctx->path($ctx->Domain, 'getTableAll'))
 ;
$ctx = $tpl->pushContext() ;
foreach ($_tmp_3->Table as $ctx->Table): ;
if (null !== ($_tmp_2 = ($ctx->Table->getSessionActive()!=null ? ($ctx->Table->getSessionActive()->getNote()=='In phieu' ? 'info':'error') :''))):  ;
$_tmp_2 = ' class="'.phptal_escape($_tmp_2).'"' ;
else:  ;
$_tmp_2 = '' ;
endif ;
?>
<tr<?php echo $_tmp_2 ?>
>
										<?php /* tag "td" from line 42 */; ?>
<td class="center"><?php echo phptal_escape($ctx->path($ctx->repeat, 'Table/number')); ?>
</td>
										<?php /* tag "td" from line 43 */; ?>
<td><?php /* tag "div" from line 43 */; ?>
<div><?php echo phptal_escape($ctx->path($ctx->Table, 'getName')); ?>
</div></td>
										<?php /* tag "td" from line 44 */; ?>
<td class="right">
											<?php 
/* tag "a" from line 45 */ ;
if ($ctx->path($ctx->Table, 'getSessionActive')):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getSessionActive/getURLDetail')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
><?php echo phptal_escape($ctx->path($ctx->Table, 'getSessionActive/getValuePrint')); ?>
</a><?php endif; ?>

										</td>
										<?php /* tag "td" from line 47 */; ?>
<td class="center">
											<?php 
/* tag "a" from line 48 */ ;
if ($ctx->path($ctx->Table, 'getSessionActive')):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getSessionActive/getURLPrint')))):  ;
$_tmp_1 = ' alt="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a class="Print" style="cursor:pointer"<?php echo $_tmp_1 ?>
>
												<?php /* tag "i" from line 49 */; ?>
<i class="glyphicons-fax"></i>
											</a><?php endif; ?>

										</td>
										<?php /* tag "td" from line 52 */; ?>
<td class="center">
											<?php 
/* tag "a" from line 53 */ ;
if (!($ctx->path($ctx->Table, 'getSessionActive'))):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getURLCheckinExe')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
>
												<?php /* tag "i" from line 54 */; ?>
<i class="glyphicons-disk_import"></i>
											</a><?php endif; ?>

										</td>
										<?php /* tag "td" from line 57 */; ?>
<td class="center">											
											<?php 
/* tag "span" from line 58 */ ;
if ($ctx->path($ctx->Table, 'getSessionActive')):  ;
?>
<span>
												<?php 
/* tag "a" from line 59 */ ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getSessionActive/getURLCheckoutExe')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
>
													<?php /* tag "i" from line 60 */; ?>
<i class="glyphicons-disk_export"></i>
												</a>
											</span><?php endif; ?>

										</td>
										<?php /* tag "td" from line 64 */; ?>
<td class="center">
											<?php 
/* tag "a" from line 65 */ ;
if ($ctx->path($ctx->Table, 'getSessionActive')):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getURLCallLoad')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
>
												<?php /* tag "i" from line 66 */; ?>
<i class="glyphicons-drink"></i>
											</a><?php endif; ?>

										</td>
										<?php /* tag "td" from line 69 */; ?>
<td class="center">
											<?php 
/* tag "a" from line 70 */ ;
if (\MVC\Base\SessionRegistry::instance()->getCurrentUser()->isAdmin()):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getURLLog')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
>
												<?php /* tag "i" from line 71 */; ?>
<i class="glyphicons-edit"></i>
											</a><?php endif; ?>

										</td>
										<?php /* tag "td" from line 74 */; ?>
<td class="center">
											<?php 
/* tag "a" from line 75 */ ;
if ($ctx->path($ctx->Table, 'getSessionActive')):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getURLMoveLoad')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
>
												<?php /* tag "i" from line 76 */; ?>
<i class="glyphicons-new_window"></i>
											</a><?php endif; ?>

										</td>
										<?php /* tag "td" from line 79 */; ?>
<td class="center">
											<?php 
/* tag "a" from line 80 */ ;
if ($ctx->path($ctx->Table, 'getSessionActive')):  ;
if (null !== ($_tmp_1 = ($ctx->path($ctx->Table, 'getURLMergeLoad')))):  ;
$_tmp_1 = ' href="'.phptal_escape($_tmp_1).'"' ;
else:  ;
$_tmp_1 = '' ;
endif ;
?>
<a<?php echo $_tmp_1 ?>
>
												<?php /* tag "i" from line 81 */; ?>
<i class="glyphicons-resize_small"></i>
											</a><?php endif; ?>

										</td>
									</tr><?php 
endforeach ;
$ctx = $tpl->popContext() ;
?>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php 
/* tag "div" from line 92 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/Footer', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php 
/* tag "div" from line 93 */ ;
$ctx->pushSlots() ;
$tpl->_executeMacroOfTemplate('mAdmin.xhtml/IncludeJS', $_thistpl) ;
$ctx->popSlots() ;
?>

		<?php /* tag "script" from line 94 */; ?>
<script type="text/javascript">
			/*<![CDATA[*/			
			$('.Print').click(function(){
				location.reload();
				window.open($(this).attr('alt'), '_blank');
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

Generated by PHPTAL from D:\AppWebServer\SPN_KhachSan\baduc\mvc\templates\SellingDomain.html (edit that file instead) */; ?>