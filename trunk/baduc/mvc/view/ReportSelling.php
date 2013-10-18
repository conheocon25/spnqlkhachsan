<?php
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/ReportSelling.html");
	echo $Viewer->html();
?>
