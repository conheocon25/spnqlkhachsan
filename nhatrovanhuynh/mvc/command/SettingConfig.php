<?php		
	namespace MVC\Command;	
	class SettingConfig extends Command {
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
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mConfig 	= new \MVC\Mapper\Config();
									
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------						
			$ConfigAll 		= $mConfig->findAll();
						
			$Title = "CẤU HÌNH";
			$Navigation = array(				
				array("THIẾT LẬP", "/setting")
			);
			
			//Kiểm tra nếu chưa tồn tại trong DB thì sẽ tự động khởi tạo giá trị mặc định và lưu vào DB			
			$ConfigName 	= $mConfig->findByName("NAME");
			if ($ConfigName==null){
				$ConfigName = new \MVC\Domain\Config(null, 'NAME', 'QUÁN CAFE');
				$mConfig->insert($ConfigName);
			}
			
			$ConfigAddress 	= $mConfig->findByName("ADDRESS");
			if ($ConfigAddress==null){
				$ConfigAddress = new \MVC\Domain\Config(null, 'ADDRESS', 'Vĩnh Long');
				$mConfig->insert($ConfigAddress);
			}
			
			$ConfigPhone 	= $mConfig->findByName("PHONE");
			if ($ConfigPhone==null){
				$ConfigPhone = new \MVC\Domain\Config(null, 'PHONE', '0919 153 189');
				$mConfig->insert($ConfigPhone);
			}
			
			$ConfigRowPerPage	= $mConfig->findByName("ROW_PER_PAGE");
			if ($ConfigRowPerPage==null){
				$ConfigRowPerPage = new \MVC\Domain\Config(null, 'ROW_PER_PAGE', 12);
				$mConfig->insert($RowPerPage);
			}
									
			$ConfigGuestVisit 	= $mConfig->findByName("GUEST_VISIT");
			if ($ConfigGuestVisit==null){
				$ConfigGuestVisit = new \MVC\Domain\Config(null, 'GUEST_VISIT', 1);
				$mConfig->insert($ConfigGuestVisit);
			}
			
			$ConfigDiscount 	= $mConfig->findByName("DISCOUNT");
			if ($ConfigDiscount==null){
				$ConfigDiscount = new \MVC\Domain\Config(null, 'DISCOUNT', 0);
				$mConfig->insert($ConfigDiscount);
			}
						
			$ConfigReceiptVirtualDouble	= $mConfig->findByName("RECEIPT_VIRTUAL_DOUBLE");
			if ($ConfigReceiptVirtualDouble==null){
				$ConfigReceiptVirtualDouble = new \MVC\Domain\Config(null, 'RECEIPT_VIRTUAL_DOUBLE', 1);
				$mConfig->insert($ConfigReceiptVirtualDouble);
			}
			
			$ConfigPriceElectric	= $mConfig->findByName("PRICE_ELECTRIC");
			if ($ConfigPriceElectric==null){
				$ConfigPriceElectric = new \MVC\Domain\Config(null, 'PRICE_ELECTRIC', 2000);
				$mConfig->insert($ConfigPriceElectric);
			}
			
			$ConfigPriceWater	= $mConfig->findByName("PRICE_WATER");
			if ($ConfigPriceWater==null){
				$ConfigPriceWater = new \MVC\Domain\Config(null, 'PRICE_WATER', 5000);
				$mConfig->insert($ConfigPriceWater);
			}
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title', 					$Title);
			$request->setProperty('ActiveAdmin', 			'Config');
			$request->setObject('Navigation', 				$Navigation);
						
			$request->setObject('ConfigName', 				$ConfigName);			
			$request->setObject('ConfigAddress', 			$ConfigAddress);
			$request->setObject('ConfigPhone', 				$ConfigPhone);
			$request->setObject('ConfigRowPerPage', 		$ConfigRowPerPage);
			$request->setObject('ConfigGuestVisit', 		$ConfigGuestVisit);
			$request->setObject('ConfigDiscount', 			$ConfigDiscount);			
			$request->setObject('ConfigReceiptVirtualDouble', $ConfigReceiptVirtualDouble);			
			$request->setObject('ConfigPriceElectric', 		$ConfigPriceElectric);
			$request->setObject('ConfigPriceWater', 		$ConfigPriceWater);
												
			return self::statuses('CMD_DEFAULT');
		}
	}
?>