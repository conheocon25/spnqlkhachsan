<?php	
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/ReportCollectDetail.html");	
	$Out = $Viewer->pdf();
	unset($Viewer);
	echo $Out;
?>
