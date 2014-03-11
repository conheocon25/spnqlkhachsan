<?php		
	namespace MVC\Command;	
	class Note extends Command {
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$IdDomain 	= $request->getProperty('IdDomain');
			$Page 		= $request->getProperty('Page');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mDomain 		= new \MVC\Mapper\Domain();			
			$mConfig 		= new \MVC\Mapper\Config();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			$DomainAll = $mDomain->findAll();
			if (isset($IdDomain)){
				$Domain 	= $mDomain->find($IdDomain);
			}else{
				$Domain 	= $DomainAll->current();
				$IdDomain 	= $Domain->getId();
			}						
			$Config 	= $mConfig->findByName('ROW_PER_PAGE');
			$ConfigName = $mConfig->findByName('NAME');
												
			$Title = $Domain->getName();
			$Navigation = array();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setObject('Domain'		, $Domain);
			$request->setObject('DomainAll'		, $DomainAll);			
			$request->setObject('ConfigName'	, $ConfigName);
						
			$request->setProperty('Title'		, $Title);			
			$request->setObject('Navigation'	, $Navigation);
		}
	}
?>