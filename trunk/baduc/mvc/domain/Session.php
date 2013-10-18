<?php
Namespace MVC\Domain;
use MVC\Library\Number;
use MVC\Library\Date;

require_once( "mvc/base/domain/DomainObject.php" );
class Session extends Object{

    private $Id;	
	private $IdTable;
	private $IdUser;
	private $IdCustomer;
	private $DateTime;
	private $DateTimeEnd;
	private $Note;
	private $Status;
	private $DiscountPercent;
	private $DiscountValue;
	private $Surtax;
	private $Payment;
	private $Value;
	
	private $Table;
	private $Employee;

	//-------------------------------------------------------------------------------
	//ACCESSING MEMBER PROPERTY
	//-------------------------------------------------------------------------------
    function __construct( $Id=null, $IdTable=null, $IdUser=null, $IdCustomer=null, $DateTime=null, $DateTimeEnd=null, $Note=null, $Status=null, $DiscountValue=null, $DiscountPercent= null, $Surtax=null, $Payment=null, $Value=null ) {
        $this->Id = $Id;
		$this->IdTable = $IdTable;
		$this->IdUser = $IdUser;
		$this->IdCustomer = $IdCustomer;
		$this->DateTime = $DateTime;
		$this->DateTimeEnd = $DateTimeEnd;
		$this->Note = $Note;
		$this->Status = $Status;
		$this->DiscountPercent = $DiscountPercent;
		$this->DiscountValue = $DiscountValue;
		$this->Surtax = $Surtax;
		$this->Payment = $Payment;
		$this->Value = $Value;
		
        parent::__construct( $Id );
    }
	
	function setId( $Id) {
        return $this->Id = $Id;
    }
    function getId( ) {return $this->Id;}
	function getIdPrint( ) {return decbin((int)($this->Id));}
	
	function setDiscountValue( $DiscountValue) {
        return $this->DiscountValue = $DiscountValue;
    }
    function getDiscountValue( ) {
        return $this->DiscountValue;
    }
	
	function getDiscountValuePrint(){
		$num = new Number($this->getDiscountValue());
		return $num->formatCurrency()." đ";
	}
	
	function setDiscountPercent( $DiscountPercent) {
        return $this->DiscountPercent = $DiscountPercent;
    }
    function getDiscountPercent( ) {
        return $this->DiscountPercent;
    }
	
	function getDiscountPercentPrint(){
		$num = new Number($this->getDiscountPercent());
		return $num->formatCurrency()." %";
	}
	
	function getIdTable( ) {
        return $this->IdTable;
    }	
	function setIdTable( $IdTable ) {
        $this->IdTable = $IdTable;
        $this->markDirty();
    }
	function getTable(){
		if (!isset($this->Table)){
			$mTable = new \MVC\Mapper\Table();
			$this->Table = $mTable->find($this->IdTable);
		}
		return $this->Table;
	}
		
	function setIdUser( $IdUser ) {
        $this->IdUser = $IdUser;
        $this->markDirty();
    }
	function getIdUser( ) {
        return $this->IdUser;
    }
	function getUser( ) {
		if (!isset($this->User)){
			$mUser = new \MVC\Mapper\User();
			$this->User = $mUser->find($this->IdUser);
		}
        return $this->User;
    }
	
	function getIdCustomer( ) {
        return $this->IdCustomer;
    }
	function getCustomer( ) {
		$mCustomer = new \MVC\Mapper\Customer();
		$Customer = $mCustomer->find($this->IdCustomer);
        return $Customer;
    }		
	function setIdCustomer( $IdCustomer ) {
        $this->IdCustomer = $IdCustomer;
        $this->markDirty();
    }
		
	//Giờ bắt đầu
	function setDateTime( $DateTime ) {
        $this->DateTime = $DateTime;
        $this->markDirty();
    }	
	function getDateTime( ) {		
        return $this->DateTime;
    }
    function getDateTimePrint( ){		
		return date('d/m H:i',strtotime($this->DateTime));
    }
	function getDatePrint( ) {
		$date = new Date($this->getDateTime());
        return $date->getDateFormat();
    }
		
	//Giờ kết thúc
	function setDateTimeEnd( $DateTime ) {
        $this->DateTimeEnd = $DateTime;
        $this->markDirty();
    }
	function getDateTimeEnd( ) {		
        return $this->DateTimeEnd;
    }	
	function getDateTimeEndPrint( ) {
		return date('d/m H:i',strtotime($this->getDateTimeEnd()));
    }
			
	function getTimeRangePrint(){
		$DS = date('H:i',strtotime($this->getDateTime()));
		$DE = date('H:i',strtotime($this->getDateTimeEnd()));
		return "từ ".$DS." đến ".$DE;
	}
	function getCurrentDatePrint(){
		$date = new Date();
		return $date->getCurrentDateVN();
	}
	
	//Ghi chú
	function getNote( ) {
        return $this->Note;
    }
	
	function setNote( $Note ) {
        $this->Note = $Note;
        $this->markDirty();
    }
	
	//Giảm giá
	function setDiscount( $Discount ) {
        $this->Discount = $Discount;
        $this->markDirty();
    }
		
	//Phụ thu
	function setSurtax( $Surtax ) {
        $this->Surtax = $Surtax;
        $this->markDirty();
    }
	function getSurtax( ) {
        return $this->Surtax;
    }
	function getSurtaxPrint(){		
		$num = new Number($this->getSurtax());
		return $num->formatCurrency()." đ";
	}
		
	//Tình trạng
	function getStatus( ) {
        return $this->Status;
    }
	
	function setStatus( $Status ) {
        $this->Status = $Status;
        $this->markDirty();
    }
	
	function getStatusPrint( ){
        if ( isset($this->DateTime) )
			return "Đang có khách";
		else
			return "Chưa có khách1";
    }
	
	//Khách trả tiền
	function getPayment( ) {
        return $this->Payment;
    }	
	function setPayment( $Payment ) {
        $this->Payment = $Payment;
        $this->markDirty();
    }
	function getPaymentPrint(){
		$N = new Number($this->getPayment());
		return $N->formatCurrency()." đ";
	}
	
	function getRemain( ){
		$Remain = $this->getPayment() - $this->getValue();
		return $Remain;
    }
	
	function getRemainPrint( ){
		$N = new \MVC\Library\Number( $this->getRemain() );
        return $N->formatCurrency()." đ";
	}
	
	//Tính ra tiền giờ làm TRÒN TRÊN 30 phút: 5H30 ==> 6H	5H25 ==> 5H
	function getHours(){
		$D = (int)((strtotime($this->getDateTimeEnd()) - strtotime($this->getDateTime()))/3600);
		$D += (int)((strtotime($this->getDateTimeEnd()) - strtotime($this->getDateTime()))/60)%60 >20?1:0;
		return $D;
	}
	function getHoursPrint(){	
		$D = $this->getHours();		
		return $D." giờ ";
	}
	
	function getValueHours(){
		//Lấy thông số Config
		$mConfig = new \MVC\Mapper\Config();
		$Value = 0;
		
		//ĐƠN + LẠNH
		$DON_LANH_DEM = $mConfig->findByName('DON_LANH_DEM')->getValue();
		$DON_LANH_DEM_LO = $mConfig->findByName('DON_LANH_DEM_LO')->getValue();
		
		$DON_LANH_NGAY = $mConfig->findByName('DON_LANH_NGAY')->getValue();
		$DON_LANH_NGAY_LO = $mConfig->findByName('DON_LANH_NGAY_LO')->getValue();
		
		$DON_LANH_GIO = $mConfig->findByName('DON_LANH_GIO')->getValue();
		$DON_LANH_GIO_LO = $mConfig->findByName('DON_LANH_GIO_LO')->getValue();
				
		//ĐƠN + QUẠT
		$DON_QUAT_GIO = $mConfig->findByName('DON_QUAT_GIO')->getValue();
		$DON_QUAT_GIO_LO = $mConfig->findByName('DON_QUAT_GIO_LO')->getValue();
		
		$DON_QUAT_DEM = $mConfig->findByName('DON_QUAT_DEM')->getValue();
		$DON_QUAT_DEM_LO = $mConfig->findByName('DON_QUAT_DEM_LO')->getValue();
		
		$DON_QUAT_NGAY = $mConfig->findByName('DON_QUAT_NGAY')->getValue();
		$DON_QUAT_NGAY_LO = $mConfig->findByName('DON_QUAT_NGAY_LO')->getValue();
		
		//ĐÔI + LẠNH		
		$DOI_LANH_NGAY = $mConfig->findByName('DOI_LANH_NGAY')->getValue();
		$DOI_LANH_NGAY_LO = $mConfig->findByName('DOI_LANH_NGAY_LO')->getValue();
		
		$DOI_LANH_DEM = $mConfig->findByName('DOI_LANH_DEM')->getValue();
		$DOI_LANH_DEM_LO = $mConfig->findByName('DOI_LANH_DEM_LO')->getValue();
		
		//Mảng tham chiếu đến giá
		$arrPriceDaily = 	array(1=>$DON_LANH_NGAY, 	2=>$DOI_LANH_NGAY, 		3=>$DON_QUAT_NGAY);
		$arrPriceDailyP = 	array(1=>$DON_LANH_NGAY_LO, 2=>$DOI_LANH_NGAY_LO, 	3=>$DON_QUAT_NGAY_LO);
		
		$arrPriceNight = 	array(1=>$DON_LANH_DEM, 	2=>$DOI_LANH_DEM, 		3=>$DON_QUAT_DEM);
		$arrPriceNightP = 	array(1=>$DON_LANH_DEM_LO, 	2=>$DOI_LANH_DEM_LO, 	3=>$DON_QUAT_DEM_LO);
		
		$arrPriceHour = 	array(1=>$DON_LANH_GIO, 	2=>0, 					3=>$DON_QUAT_GIO);
		$arrPriceHourP = 	array(1=>$DON_LANH_GIO_LO, 	2=>0, 					3=>$DON_QUAT_GIO_LO);
				
		$Type 		= $this->getTable()->getType();
		$Start 		= $this->getDateTime();
		$End 		= $this->getDateTimeEnd();
		$Index		= 0;
		$Value 		= 0;
		
		$HCurrent = (\date("H", strtotime($Start)) + \date("i", strtotime($Start))/60.0);
		$HD = ((strtotime($End) - strtotime($Start))/3600);
		$DD = ((strtotime($End) - strtotime($Start))%3600)/60;		
		if ($HD < 1){ 
			$HD = 1;
			$DD = 0;
		}
		if ($DD >= 20){
			$HD = (int)($HD) + 1;		
		}
		$HEnd = $HCurrent + $HD;
		
		//(1) TÍNH THEO GIỜ
		if ($HD < 3.5){			
			if ($Type==2){				
				if ($HCurrent <=6 || $HCurrent >=22)
					$Value += $arrPriceNight[$Type];
				else
					$Value += $arrPriceDaily[$Type];
			}
			else{				
				$Value += $arrPriceHour[$Type] + (int)($HD + 0.5 -1)*$arrPriceHourP[$Type];
			}
		}
		//(2) TÍNH THEO NGÀY / ĐÊM
		else{
			//(2.1) TÍNH PHẦN GIỜ TRƯỚC 12H TRƯA
			if ($HCurrent < 12){
				//Trước 6h sáng lấy giá đêm
				if ($HCurrent <6){
					$Value += $arrPriceNight[$Type];
				}
				//Sau 6h sáng lấy giá ngày
				else
					$Value += $arrPriceDaily[$Type];
				
				//Còn ở tiếp sau 12h trưa cập nhật HCurrent để tính tiếp
				if ( $HEnd > 12){
					$HCurrent = 12;	
				}else{
					$HCurrent = $HEnd;					
				}
			}
			//(2.2) TÍNH PHẦN GIỜ SAU 12H TRƯA			
			$Index = 1;
			//echo $HEnd."-".$HCurrent;
			
			while ( $HCurrent < $HEnd){				
				$HD = ($HEnd - $HCurrent);				
				if ($HD < 3.5){					
					$Value += (int)($HD + 0.5)*$arrPriceDailyP[$Type];					
					$HCurrent = $HEnd;
				}else{
					if ($HCurrent >= (($Index-1)*24 + 22))
						$Value += $arrPriceNight[$Type];
					else
						$Value += $arrPriceDaily[$Type];
					
					if ($HEnd >= ($Index*24 + 12))
						$HCurrent = $Index*24 + 12;	
					else
						$HCurrent = $HEnd;
					
				}
				$Index++;
			}
		}				
		return $Value;
	}
	function getValueHoursPrint(){		
		$num = new Number($this->getValueHours());
		return $num->formatCurrency()." đ";	
	}
	
	//---------------------------------------------------------										
	function getDetails(){
		$mSD = new \MVC\Mapper\SessionDetail();
		$SDs = $mSD->findBySession(array($this->getId()));
		return $SDs;
	}
	
	function getDetailPrintAll(){
		$mSD = new \MVC\Mapper\SessionDetail();
		$SDs = $mSD->findBySession1(array($this->getId()));
		return $SDs;
	}
	
	function getValue(){
		if ($this->Value <= 0 || $this->Value == null){
			$mSD = new \MVC\Mapper\SessionDetail();		
			$Value = $this->getSurtax() + (int)(($mSD->evaluate(array($this->getId())) + $this->getValueHours() - $this->getDiscountValue())*(1.0 - $this->getDiscountPercent()/100.0)/1000)*1000;
			return $Value;
		}
		return $this->Value;
	}
	
	function setValue($Value){
		$this->Value = $Value;
		$this->markDirty();
	}
		
	function getReValue(){
		$mSD = new \MVC\Mapper\SessionDetail();		
		$Value = $this->getSurtax() + (int)(($mSD->evaluate(array($this->getId())) + $this->getValueHours() - $this->getDiscountValue())*(1.0 - $this->getDiscountPercent()/100.0)/1000)*1000;
		return $Value;
	}
		
	function getValuePrint(){
		$num = new Number($this->getValue());
		return $num->formatCurrency()." đ";
	}
	
	function getValueStrPrint(){
		$num = new Number($this->getValue());
		return $num->readDigit()." đồng";
	}
	
	//-------------------------------------------------------------------------------
	//DEFINE URL
	//-------------------------------------------------------------------------------
	function getURLCheckoutLoad(){		
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/".$this->getId()."/checkout/load";
    }
	
	function getURLCheckoutExe(){
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/".$this->getId()."/checkout/exe";
    }
	
	function getURLUpdLoad(){
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/log/".$this->getId()."/upd/load";
    }
	
	function getURLUpdExe(){		
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/log/".$this->getId()."/upd/exe";
    }
	
	function getURLDelLoad(){		
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/log/".$this->getId()."/del/load";
    }
	
	function getURLDelExe(){		
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/log/".$this->getId()."/del/exe";
    }
	
	function getURLDetail(){		
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/log/".$this->getId()."/detail";
    }
	
	function getURLPrint(){
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/".$this->getId()."/print";
    }
	
	//---------------------------------------------------------
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}	
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}
}
?>