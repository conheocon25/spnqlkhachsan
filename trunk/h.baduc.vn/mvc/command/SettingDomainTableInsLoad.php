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
			$Domain = $mDomain->find($IdDomain);			
			$TypeRoomAll = $mTypeRoom->findAll();
			
			$Title = "THÊM MỚI";
			$Navigation = array(
				array("ỨNG DỤNG", "/app"),
				array("THIẾT LẬP", "/setting"),
				array("KHU VỰC", "/setting/domain"),
				array(mb_strtoupper($Domain->getName(), 'UTF8'), $Domain->getURLTable())
			);
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------
			$request->setObject("Domain", $Domain);			
			$request->setObject("TypeRoomAll", $TypeRoomAll);
			$request->setProperty("Title", $Title);
			$request->setObject("Navigation", $Navigation);
		}
	}
?>