<?php		
	namespace MVC\Command;	
	class SettingCourseDefaultUpdExe extends Command {
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
			$Count = $request->getProperty('Count');
			$Price = $request->getProperty('Price');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mCourseDefault  = new \MVC\Mapper\CourseDefault();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------												
			$CourseDefault = $mCourseDefault->find( $IdCourseDefault);
			$CourseDefault->setCount($Count);
			$CourseDefault->setPrice($Price);
			$mCourseDefault->update($CourseDefault);
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			
			return self::statuses('CMD_OK');
		}
	}
?>