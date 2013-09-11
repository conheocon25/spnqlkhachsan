<?php
	namespace MVC\Command;	
	class SettingTypeRoomUpdExe extends Command {
		function doExecute( \MVC\Controller\Request $request ) {
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------			
			$Session = \MVC\Base\SessionRegistry::instance();
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------			
			$IdTypeRoom = $request->getProperty('IdTypeRoom');
			$Name = $request->getProperty('Name');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mTypeRoom = new \MVC\Mapper\TypeRoom();
								
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			if (!isset($Name))
				return self::statuses('CMD_OK');
				
			$TypeRoom = $mTypeRoom->find($IdTypeRoom);
			$TypeRoom->setName($Name);
			$mTypeRoom->update($TypeRoom);
						
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------			
			
			return self::statuses('CMD_OK');
		}
	}
?>
