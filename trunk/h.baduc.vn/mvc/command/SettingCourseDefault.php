<?php		
	namespace MVC\Command;	
	class SettingCourseDefault extends Command {
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$IdTypeRoom = $request->getProperty('IdTypeRoom');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mTypeRoom  = new \MVC\Mapper\TypeRoom();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------									
			$TypeRoom = $mTypeRoom->find( $IdTypeRoom);
			$Title = mb_strtoupper($TypeRoom->getName(), 'UTF8');
			$Navigation = array(
				array("ỨNG DỤNG", "/app"),
				array("THIẾT LẬP", "/setting"),
				array("LOẠI PHÒNG", "/setting/typeroom")
			);
									
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title', $Title);			
			$request->setObject('Navigation', $Navigation);
			$request->setObject('TypeRoom', $TypeRoom);
			
			return self::statuses('CMD_DEFAULT');
		}
	}
?>