<?php
	namespace MVC\Command;
	class SellingDomainTableCheckinExe extends Command{
		function doExecute( \MVC\Controller\Request $request ) {
			require_once("mvc/base/domain/HelperFactory.php");			
			//-------------------------------------------------------------
			//THAM SỐ TOÀN CỤC
			//-------------------------------------------------------------
			$Session = \MVC\Base\SessionRegistry::instance();
									
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐẾN
			//-------------------------------------------------------------
			$IdTable = $request->getProperty("IdTable");
						
			//-------------------------------------------------------------
			//MAPPER DỮ LIỆU
			//-------------------------------------------------------------
			$mTable = new \MVC\Mapper\Table();			
			$mCourse = new \MVC\Mapper\Course();
			$mSession = new \MVC\Mapper\Session();
			$mSessionDetail = new \MVC\Mapper\SessionDetail();
			$mCourseDefault = new \MVC\Mapper\CourseDefault();
			
			//-------------------------------------------------------------
			//XỬ LÝ CHÍNH
			//-------------------------------------------------------------			
			$Table = $mTable->find($IdTable);
									
			//Nếu chưa có Session thì tạo
			$SessionTable = $Table->getSessionActive();	
			$IdUser = $Session->getCurrentIdUser();			
			if (!isset($SessionTable)){
				$dSession = new \MVC\Domain\Session(
					null,					//Id
					$IdTable,				//IdTable
					$IdUser,				//User hiện hành
					1,						//Khách vãng lai
					\date("Y-m-d H:i:s"), 	//DateTime
					null, 					//DateTimeEnd
					"",						//Note
					0,						//Status
					0,						//Discount Value
					0,						//Discount Percent
					0,						//Surtax
					0,						//Payment
					0						//Value
				);
				$mSession->insert($dSession);
				$IdSession = $dSession->getId();
				
				$CDAll = $mCourseDefault->findBy(array( $Table->getType()));
				while ( $CDAll->valid() ){
					$CD = $CDAll->current();					
					$SD = new \MVC\Domain\SessionDetail(
						null,
						$IdSession, 
						$CD->getIdCourse(), 
						$CD->getCount(),
						$CD->getPrice()
					);
					$mSessionDetail->insert($SD);
				
					$CDAll->next();
				}
			}
			
			//-------------------------------------------------------------
			//THAM SỐ GỬI ĐI
			//-------------------------------------------------------------
			return self::statuses('CMD_OK');
		}
	}
?>