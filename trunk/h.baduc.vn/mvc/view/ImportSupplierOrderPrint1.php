<?php	
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/ImportSupplierOrderPrint1.html");	
	$Out = $Viewer->pdf();
	unset($Viewer);
	echo $Out;
?>
