<?php		
	namespace MVC\Command;	
	class ReportHours extends Command{
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------
			$Session = \MVC\Base\SessionRegistry::instance();
														
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------			
			$IdTrack = $request->getProperty('IdTrack');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mTracking = new \MVC\Mapper\Tracking();
			$mTable = new \MVC\Mapper\Table();
			$mSession = new \MVC\Mapper\Session();
			$mTypeRoom = new \MVC\Mapper\TypeRoom();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------
			$Tracking = $mTracking->find($IdTrack);			
			$Date1 = \date("Y-m-d", strtotime($Tracking->getDateStart()))." 8:0:0";
			$Date2 = \date("Y-m-d", strtotime("+1 day", strtotime($Tracking->getDateEnd())))." 7:59:59";
			
			$Data = array();
			$TypeRoomAll = $mTypeRoom->findAll();
			while ($TypeRoomAll->valid()){
				$TypeRoom = $TypeRoomAll->current();
				$TableAll = $TypeRoom->getTableAll();
				
				$Data1 = array();
				while($TableAll->valid()){
					$Table = $TableAll->current();
					$Data1[] = array($Table->getName(), 0, 0, 0);
					$TableAll->next();
				}				
				$Data[] = array($TypeRoom->getName(), $Data1 );								
				$TypeRoomAll->next();
			}
			/*
			$NormalData = array();
			$NormalCountTicket 	= 0;
			$NormalCountHour 	= 0;
			$NormalValue 		= 0;
			while ($TableNormalAll->valid()){
				$Table = $TableNormalAll->current();
				$SessionAll = $mSession->findByTableTracking(array($Table->getId(),$Date1,$Date2));
				$SessionAll->rewind();
				$CountTicket = 0;
				$CountHour = 0.0;
				$Value = 0.0;
				while($SessionAll->valid()){
					$Session = $SessionAll->current();
					$CountTicket ++;
					$CountHour 	+= $Session->getHoursReal();
					$Value 		+= $Session->getValue();
					$SessionAll->next();
				}
				$NormalCountTicket 	+= $CountTicket;
				$NormalCountHour 	+= $CountHour;
				$NormalValue 		+= $Value;
				
				$NValue = new \MVC\Library\Number($Value);
				$NormalData[] = array($Table->getName(), $CountTicket, $CountHour, $NValue->formatCurrency() );
				$TableNormalAll->next();		
			}*/
									
			$Title = "THỐNG KÊ TẦN SUẤT SỬ DỤNG ".\date("m/Y", strtotime( $Tracking->getDateStart() ));
								
						
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------									
			$request->setProperty('Title', $Title);
			$request->setObject('Data', $Data);
		}
	}
?>