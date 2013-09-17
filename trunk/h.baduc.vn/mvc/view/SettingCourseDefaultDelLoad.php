<?php
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/SettingCourseDefaultDelLoad.html");
	$Out = $Viewer->html();
	unset($Viewer);
	echo $Out;
?>
