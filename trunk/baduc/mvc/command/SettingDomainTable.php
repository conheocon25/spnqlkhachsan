<?php
	namespace MVC\Command;	
	class SettingDomainTable extends Command {
		function doExecute( \MVC\Controller\Request $request ) {
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			$IdDomain = $request->getProperty('IdDomain');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mDomain = new \MVC\Mapper\Domain();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------							
			$DomainAll = $mDomain->findAll();
			$Domain = $mDomain->find($IdDomain);
						
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------						
			$request->setObject("Domain", $Domain);
			$request->setObject("DomainAll", $DomainAll);
			$request->setProperty("URLHeader", "/setting#domain");
		}
	}
?>
