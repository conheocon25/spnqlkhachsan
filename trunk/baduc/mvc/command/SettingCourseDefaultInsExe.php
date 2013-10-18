<?php		
	namespace MVC\Command;	
	class SettingCourseDefaultInsExe extends Command {
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
			$IdCourse = $request->getProperty('IdCourse');
			$Count = $request->getProperty('Count');
			$Price = $request->getProperty('Price');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mCourseDefault  = new \MVC\Mapper\CourseDefault();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------												
			$CourseDefault = new \MVC\Domain\CourseDefault(
				null,
				$IdTypeRoom,
				$IdCourse,
				$Count,
				$Price
			);
			$mCourseDefault->insert( $CourseDefault);
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------															
			return self::statuses('CMD_OK');
		}
	}
?>