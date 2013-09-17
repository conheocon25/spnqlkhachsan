<?php		
	namespace MVC\Command;	
	class SettingCourseDefaultInsLoad extends Command {
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
			$mCategory  = new \MVC\Mapper\Category();
			$mCourse  = new \MVC\Mapper\Course();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------									
			$TypeRoom = $mTypeRoom->find( $IdTypeRoom);
			$CategoryAll = $mCategory->findAll( );
			$CourseAll = $mCourse->findAll( );
			
			$Title = "THÊM MỚI";
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
			$request->setObject('CategoryAll', $CategoryAll);
			$request->setObject('CourseAll', $CourseAll);
			
			return self::statuses('CMD_DEFAULT');
		}
	}
?>