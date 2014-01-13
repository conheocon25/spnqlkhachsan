<?php
	require_once("mvc/base/Viewer.php");
	$Viewer = new Viewer("mvc/templates/SettingTypeRoomDefault.html");
	$Out = $Viewer->html();
	unset($Viewer);
	echo $Out;
?>
