<?php		
	namespace MVC\Command;	
	class SettingSupplierResource extends Command {
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$Page = $request->getProperty('Page');
			$IdSupplier = $request->getProperty('IdSupplier');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			require_once("mvc/base/mapper/MapperDefault.php");
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------						
			$SupplierAll 	= $mSupplier->findAll();
			$UnitAll 		= $mUnit->findAll();
			$Supplier 		= $mSupplier->find($IdSupplier);			
			$Title 			= mb_strtoupper($Supplier->getName(), 'UTF8');
			$Navigation = array(
				array("THIẾT LẬP", "/setting"),
				array("NHÀ CUNG CẤP", "/setting/supplier")
			);
			if (!isset($Page)) $Page=1;
			$Config = $mConfig->findByName("ROW_PER_PAGE");			
			$ResourceAll1 = $mResource->findByPage(array($IdSupplier, $Page, $Config->getValue() ));
			$PN = new \MVC\Domain\PageNavigation( $Supplier->getResourceAll()->count(), $Config->getValue(), $Supplier->getURLResource() );
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title', $Title);
			$request->setProperty('ActiveAdmin', 'Resource');
			$request->setProperty('Page', $Page);
			$request->setObject('Navigation', $Navigation);
			
			$request->setObject('ResourceAll1'	, $ResourceAll1);
			$request->setObject('SupplierAll'	, $SupplierAll);
			$request->setObject('UnitAll'		, $UnitAll);
			$request->setObject('Supplier'		, $Supplier);
			$request->setObject('PN'			, $PN);
								
			return self::statuses('CMD_DEFAULT');
		}
	}
?>