<?php		
	namespace MVC\Command;	
	class SettingTypeRoomDefault extends Command {
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$IdType = $request->getProperty('IdType');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mTypeRoom 	= new \MVC\Mapper\TypeRoom();
			$mCourse 	= new \MVC\Mapper\Course();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------															
			$TypeRoom 		= $mTypeRoom->find($IdType);
			$TypeRoomAll 	= $mTypeRoom->findAll();
			$CourseAll 		= $mCourse->findAll();
			$Title 			= $TypeRoom->getName()." MÓN MẶC ĐỊNH";
			$Navigation = array(
				array("THIẾT LẬP"	, "/setting"),
				array("LOẠI PHÒNG"	, "/setting/typeroom")
			);
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title'		, $Title);						
			$request->setObject('Navigation'	, $Navigation);
			$request->setObject('TypeRoom'		, $TypeRoom);
			$request->setObject('TypeRoomAll'	, $TypeRoomAll);
			$request->setObject('CourseAll'		, $CourseAll);
			
			return self::statuses('CMD_DEFAULT');
		}
	}
?>