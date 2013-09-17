<?php	
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/ReportStoreRecipePrint.html");	
	$Out = $Viewer->pdf();
	unset($Viewer);
	echo $Out;
?>
