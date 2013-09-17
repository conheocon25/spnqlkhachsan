<?php	
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/ReportCustomerDetail.html");
	$Out = $Viewer->pdf();
	unset($Viewer);
	echo $Out;
?>
