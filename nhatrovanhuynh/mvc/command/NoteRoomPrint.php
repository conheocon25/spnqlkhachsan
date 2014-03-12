<?php		
	namespace MVC\Command;	
	class NoteRoomPrint extends Command{
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			//$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$IdDomain 	= $request->getProperty('IdDomain');
			$IdRoom 	= $request->getProperty('IdRoom');
			$IdSession 	= $request->getProperty('IdSession');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mDomain 		= new \MVC\Mapper\Domain();			
			$mSession 		= new \MVC\Mapper\Session();			
			$mTable 		= new \MVC\Mapper\Table();
			$mEmployee 		= new \MVC\Mapper\Employee();
			$mCustomer 		= new \MVC\Mapper\Customer();
			$mConfig 		= new \MVC\Mapper\Config();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			$Domain 		= $mDomain->find($IdDomain);									
			$Table 			= $mTable->find($IdRoom);
			$Session 		= $mSession->find($IdSession);									
			
			$ConfigName 	= $mConfig->findByName('NAME');
			$ConfigPhone 	= $mConfig->findByName('PHONE');
			$ConfigAddress 	= $mConfig->findByName('ADDRESS');
			$ConfigReceipt 	= $mConfig->findByName('RECEIPT_VIRTUAL_DOUBLE');
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------															
			$request->setObject('ConfigReceipt'		, $ConfigReceipt);
			$request->setObject('ConfigName'		, $ConfigName);
			$request->setObject('ConfigPhone'		, $ConfigPhone);
			$request->setObject('ConfigAddress'		, $ConfigAddress);
			$request->setObject('Session'			, $Session);
																		
		}
	}
?>