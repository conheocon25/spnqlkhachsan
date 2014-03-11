<?php		
	namespace MVC\Command;	
	class NoteRoom extends Command{
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
			$IdRoom 	= $request->getProperty('IdRoom');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mDomain 		= new \MVC\Mapper\Domain();			
			$mTable 		= new \MVC\Mapper\Table();
			$mConfig 		= new \MVC\Mapper\Config();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			$Domain 		= $mDomain->find($IdDomain);						
			$Table 			= $mTable->find($IdRoom);
			$ConfigName 	= $mConfig->findByName('NAME');
			
			$Title = $Domain->getName();
			$Navigation = array();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setObject('Domain'		, $Domain);
			$request->setObject('Table'			, $Table);			
			$request->setObject('ConfigName'	, $ConfigName);
						
			$request->setProperty('Title'		, $Title);			
			$request->setObject('Navigation'	, $Navigation);
		}
	}
?>