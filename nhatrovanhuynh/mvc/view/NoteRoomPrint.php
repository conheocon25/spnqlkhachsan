<?php	
	require_once("mvc/base/Viewer.php");
	$Viewer 	= new Viewer("mvc/templates/NoteRoomPrint.html");
	$Request 	= \MVC\Base\RequestRegistry::getRequest();
	$Config 	= $Request->getObject("ConfigReceipt");
	if ($Config->getValue()==1){
		echo $Viewer->pdfReceipt2();
	}
	echo $Viewer->pdfReceipt1();
?>