<?php	
	namespace MVC\Command;
	class SettingDomainTableInsLoad extends Command{
		function doExecute( \MVC\Controller\Request $request ) {
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------
			$Session = \MVC\Base\SessionRegistry::instance();						
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$IdDomain = $request->getProperty("IdDomain");
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mDomain = new \MVC\Mapper\Domain();
			$mTable = new \MVC\Mapper\Table();
			$mTypeRoom = new \MVC\Mapper\TypeRoom();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------	
			$TypeRoomAll = $mTypeRoom->findAll();
			$Domain = $mDomain->find($IdDomain);
			$Title = "THIẾT LẬP / ".mb_strtoupper($Domain->getName(),'UTF8')." / THÊM PHÒNG";
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------
			$request->setObject("Domain", $Domain);
			$request->setObject("TypeRoomAll", $TypeRoomAll);			
			$request->setProperty("Title", $Title);
			$request->setProperty('URLHeader', $Domain->getURLTable());
		}
	}
?>