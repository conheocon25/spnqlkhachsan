<?php		
	namespace MVC\Command;	
	class SettingTypeRoom extends Command {
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$Page = $request->getProperty('Page');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			require_once("mvc/base/mapper/MapperDefault.php");
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------												
			$Title = "LOẠI PHÒNG";
			$Navigation = array(				
				array("THIẾT LẬP", "/setting")
			);
			if (!isset($Page)) $Page=1;
			$Config = $mConfig->findByName("ROW_PER_PAGE");
			$TypeRoomAll 	= $mTypeRoom->findAll();
			$TypeRoomAll1 	= $mTypeRoom->findByPage(array($Page, $Config->getValue() ));
			$PN = new \MVC\Domain\PageNavigation($TypeRoomAll->count(), $Config->getValue(), "/setting/TypeRoom" );
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title'		, $Title);
			$request->setProperty('ActiveAdmin'	, 'TypeRoom');
			$request->setProperty('Page'		, $Page);
			$request->setObject('Navigation'	, $Navigation);
			$request->setObject('TypeRoomAll1'	, $TypeRoomAll1);
			$request->setObject('PN'			, $PN);
									
			return self::statuses('CMD_DEFAULT');
		}
	}
?>