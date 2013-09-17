<?php		
	namespace MVC\Command;	
	class SettingCourseDefaultUpdLoad extends Command {
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
			$IdCourseDefault = $request->getProperty('IdCourseDefault');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mTypeRoom  = new \MVC\Mapper\TypeRoom();
			$mCourseDefault  = new \MVC\Mapper\CourseDefault();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------									
			$TypeRoom = $mTypeRoom->find( $IdTypeRoom);
			$CourseDefault = $mCourseDefault->find( $IdCourseDefault);
			$Title = mb_strtoupper($CourseDefault->getCourse()->getName(), 'UTF8');
			$Navigation = array(
				array("ỨNG DỤNG", "/app"),
				array("THIẾT LẬP", "/setting"),
				array("LOẠI PHÒNG", "/setting/typeroom"),
				array(mb_strtoupper($TypeRoom->getName(), 'UTF8'), $TypeRoom->getURLCourseDefault() )
			);
									
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title', $Title);			
			$request->setObject('Navigation', $Navigation);
			$request->setObject('TypeRoom', $TypeRoom);
			$request->setObject('CourseDefault', $CourseDefault);
			
			return self::statuses('CMD_DEFAULT');
		}
	}
?>