<?php
	namespace MVC\Command;
	class Selling extends Command {
		function doExecute( \MVC\Controller\Request $request ) {
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------						
			$Session = \MVC\Base\SessionRegistry::instance();
									
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mDomain = new \MVC\Mapper\Domain();
			$mTable = new \MVC\Mapper\Table();
						
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			$Domains = $mDomain->findAll();
			$Domains1 = $mDomain->findAll();
			
			$Tables1 = $mTable->findAllGuest(null);
			$Tables2 = $mTable->findAllNonGuest(null);
															
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('URLHeader', '/app');
			$request->setObject("Domains", $Domains);
			$request->setObject("Domains1", $Domains1);
			$request->setObject("Tables1", $Tables1);
			$request->setObject("Tables2", $Tables2);
			
			$request->setProperty('Custom1', $Tables1->count());
			$request->setProperty('Custom2', $Tables2->count());
		}
	}
?>
