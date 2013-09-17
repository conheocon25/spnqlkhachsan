<?php		
	namespace MVC\Command;	
	class ReportSellingPrint extends Command {
		function doExecute( \MVC\Controller\Request $request ){
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------
			$Session = \MVC\Base\SessionRegistry::instance();
			$Type = $request->getProperty('Type');
			
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------			
			$mSession = new \MVC\Mapper\Session();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------			
			$Title = "NHẬT KÍ BÁN HÀNG";
			$arrTime = array(
				"today"		=> 	@\MVC\Library\Date::rangeToday(),
				"yesterday"	=>	@\MVC\Library\Date::rangeYesterday(),
				"thisweek"	=>	@\MVC\Library\Date::rangeThisWeek(), 
				"lastweek"	=>	@\MVC\Library\Date::rangeBeforeWeek(),
				"thismonth"	=>	@\MVC\Library\Date::rangeThisMonth(), 
				"lastmonth"	=>	@\MVC\Library\Date::rangeBeforeMonth()
			);
			
			$DateStart = $arrTime[$Type][0];
			$DateEnd = $arrTime[$Type][1];
			
			$Date = $DateStart;
			$Total = 0;
			$DataAll = array();						
			while (strtotime($Date) <= strtotime($DateEnd)){
				$Date1 = \date("Y-m-d", strtotime($Date))." 12:0:0";
				$Date2 = \date("Y-m-d", strtotime("+1 day", strtotime($Date)))." 11:59:59";
				$SessionAll = $mSession->findByTracking( array($Date1, $Date2) );
				$Value = 0;
				$SubData = array();
				$Index = 1;
				while ($SessionAll->valid()){
					$Session = $SessionAll->current();
					$Value += $Session->getValue();
					$SessionAll->next();
					$R = array(
						$Index++,
						$Session->getDateTimePrint(),
						$Session->getUser()->getName(),
						$Session->getTable()->getName()." (".$Session->getTable()->getTypePrint().")",
						$Session->getValuePrint(),
						$Session->getDateTimeEndPrint()
					);
					$SubData[] = $R;
				}
				$Sum = new \MVC\Library\Number($Value);
				$DateCurrent = new \DateTime($Date);
				$DataAll[] = array($DateCurrent->format('d/m'), $SubData, $Sum->formatCurrency()." đ" );
								
				$Total += $Value;
				$Date = \date("Y-m-d", strtotime("+1 day", strtotime($Date)));
			}
			$NTotal = new \MVC\Library\Number($Total);
			$DateCurrent = "Vĩnh Long, ngày ".\date("d")." tháng ".\date("m")." năm ".\date("Y");
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------						
			$request->setProperty('Title', $Title);
			$request->setProperty('DateCurrent', $DateCurrent);
			$request->setObject('NTotal', $NTotal);			
			$request->setObject('DataAll', $DataAll);
		}
	}
?>