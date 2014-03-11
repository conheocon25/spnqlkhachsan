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
			$mEmployee 		= new \MVC\Mapper\Employee();
			$mCustomer 		= new \MVC\Mapper\Customer();
			$mConfig 		= new \MVC\Mapper\Config();
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			$Domain 		= $mDomain->find($IdDomain);									
			$Table 			= $mTable->find($IdRoom);
			$EmployeeAll 	= $mEmployee->findAll();
			$CustomerAll 	= $mCustomer->findAll();
			$ConfigName 	= $mConfig->findByName('NAME');
			
			$Title = $Domain->getName();
			$Navigation = array();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setObject('Domain'			, $Domain);
			$request->setObject('Table'				, $Table);			
			$request->setObject('EmployeeAll'		, $EmployeeAll);
			$request->setObject('ConfigName'		, $ConfigName);
						
			$request->setProperty('Title'			, $Title);			
			$request->setProperty('CurrentTable'	, $Table->getId());
			$request->setProperty('CurrentUser'		, $Session->getCurrentIdUser());
			$request->setProperty('CurrentEmployee'	, $EmployeeAll->current()->getId());
			$request->setProperty('CurrentCustomer'	, $CustomerAll->current()->getId());
			
			$request->setObject('Navigation'		, $Navigation);
		}
	}
?>