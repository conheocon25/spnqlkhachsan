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
	private $IdEmployee;	
	private $DateTime;	
	private $NElectric;
	private $OElectric;
	private $PElectric;
	private $NWater;
	private $OWater;
	private $PWater;
	private $PRoom;
	private $Note;
	private $Status;
			
	//-------------------------------------------------------------------------------
	//ACCESSING MEMBER PROPERTY
	//-------------------------------------------------------------------------------
    function __construct( $Id=null, $IdTable=null, $IdUser=null, $IdCustomer=null, $IdEmployee=null, $DateTime=null, $NElectric=null, $OElectric=null, $PElectric=null, $NWater=null, $OWater=null, $PWater=null, $PRoom=null,  $Note=null, $Status=null){
        $this->Id 			= $Id;
		$this->IdTable 		= $IdTable;
		$this->IdUser 		= $IdUser;
		$this->IdCustomer 	= $IdCustomer;
		$this->IdEmployee 	= $IdEmployee;
		$this->DateTime 	= $DateTime;
		$this->NElectric 	= $NElectric;
		$this->OElectric 	= $OElectric;
		$this->PElectric 	= $PElectric;
		$this->NWater 		= $NWater;
		$this->OWater 		= $OWater;
		$this->PWater 		= $PWater;
		$this->PRoom 		= $PRoom;
		$this->Note 		= $Note;
		$this->Status 		= $Status;
        parent::__construct( $Id );
    }
	function toJSON(){
		$json = array(
			'Id' 				=> $this->getId(),
			'IdTable'			=> $this->getIdTable(),			
			'IdUser'			=> $this->getIdUser(),						
			'IdCustomer'		=> $this->getIdCustomer(),
			'CustomerName'		=> $this->getCustomer()->getName(),
			'IdEmployee'		=> $this->getIdEmployee(),
			'DateTime'			=> $this->getDateTime(),			
			'NElectric'			=> $this->getNElectric(),
			'OElectric'			=> $this->getOElectric(),
			'PElectric'			=> $this->getPElectric(),
			'NWater'			=> $this->getNWater(),
			'OWater'			=> $this->getOWater(),
			'PWater'			=> $this->getPWater(),
			'PRoom'				=> $this->getPRoom(),
			'Note'				=> $this->getNote(),
			'Status'			=> $this->getStatus()
		);
		return json_encode($json);
	}
	
	function setArray( $Data ){
        $this->Id 				= $Data[0];
		$this->IdTable 			= $Data[1];
		$this->IdUser 			= $Data[2];
		$this->IdCustomer 		= $Data[3];
		$this->IdEmployee 		= $Data[4];
		$this->DateTime 		= $Data[5];
		$this->NElectric		= $Data[6];
		$this->OElectric		= $Data[7];
		$this->PElectric		= $Data[8];
		$this->NWater			= $Data[9];
		$this->OWater			= $Data[10];
		$this->PWater			= $Data[11];
		$this->PRoom			= $Data[12];
		$this->Note 			= $Data[13];
		$this->Status 			= $Data[14];
    }
		
	function setId( $Id) {return $this->Id = $Id;}
    function getId( ){return $this->Id;}
				
	function getIdTable( ) {return $this->IdTable;}	
	function setIdTable( $IdTable ) {$this->IdTable = $IdTable; $this->markDirty();}
	function getTable(){		
		$mTable = new \MVC\Mapper\Table();
		$Table = $mTable->find($this->IdTable);		
		return $Table;
	}
		
	function setIdUser( $IdUser ){$this->IdUser = $IdUser;$this->markDirty();}
	function getIdUser( ) {return $this->IdUser;}
	function getUser( ) {	
		$mUser = new \MVC\Mapper\User();
		$User = $mUser->find($this->IdUser);		
        return $User;
    }
	
	function getIdCustomer( ) {return $this->IdCustomer;}
	function setIdCustomer( $IdCustomer ) {$this->IdCustomer = $IdCustomer;$this->markDirty();}
	function getCustomer( ) {
		$mCustomer = new \MVC\Mapper\Customer();
		$Customer = $mCustomer->find($this->IdCustomer);
        return $Customer;
    }		
	
	function getIdEmployee( ) {return $this->IdEmployee;}
	function setIdEmployee( $IdEmployee ) {$this->IdEmployee = $IdEmployee;$this->markDirty();}
	function getEmployee( ) {
		$mEmployee 	= new \MVC\Mapper\Employee();
		$Employee 	= $mEmployee->find($this->IdEmployee);
        return $Employee;
    }		
	
	//Giờ bắt đầu
	function setDateTime( $DateTime ) {$this->DateTime = $DateTime;$this->markDirty();}	
	function getDateTime( ){return $this->DateTime;}
	function getDatePrint( ) {$date = new Date($this->getDateTime());return $date->getDateFormat();}
    function getDateTimePrint( ){return date('d/m',strtotime($this->DateTime));}
	function getDateTimeReceipt( ){return "THÁNG " . date('m / Y',strtotime($this->DateTime));}
			
	//Ghi chú
	function getNote( ) {return $this->Note;}	
	function setNote( $Note ) {$this->Note = $Note;$this->markDirty();}
	
	//Electric 
	function getNElectric( ) {return $this->NElectric;}	
	function setNElectric( $NElectric ) {$this->NElectric = $NElectric;$this->markDirty();}		
	function getOElectric( ) {return $this->OElectric;}	
	function setOElectric( $NElectric ) {$this->OElectric = $OElectric;$this->markDirty();}		
	function getRElectric(){return $this->OElectric."-".$this->NElectric;}
	function getDElectric(){return ($this->NElectric - $this->OElectric);}
	function getElectricValue(){return ($this->getDElectric()*$this->getPElectric());}
	function getElectricValuePrint(){$num = new Number($this->getElectricValue());return $num->formatCurrency();}
	
	//PElectric 
	function getPElectric( ) {return $this->PElectric;}	
	function setPElectric( $PElectric ) {$this->PElectric = $PElectric; $this->markDirty();}
	
	//Water
	function getNWater( ) {return $this->NWater;}	
	function setNWater( $NWater ) {$this->NWater = $NWater; $this->markDirty();}
	function getOWater( ) {return $this->OWater;}	
	function setOWater( $OWater ) {$this->OWater = $OWater; $this->markDirty();}
	function getRWater(){return $this->OWater."-".$this->NWater;}
	function getDWater(){return ($this->NWater - $this->OWater);}
	function getWaterValue(){return ($this->getDWater()*$this->getPWater());}
	function getWaterValuePrint(){$num = new Number($this->getWaterValue());return $num->formatCurrency();}
	
	//PWater
	function getPWater( ) {return $this->PWater;}	
	function setPWater( $PWater ) {$this->PWater = $PWater; $this->markDirty();}
	
	function getPRoom( ) {return $this->PRoom;}	
	function setPRoom( $PRoom ) {$this->PRoom = $PRoom; $this->markDirty();}
	function getPRoomPrint(){$num = new Number($this->getPRoom());return $num->formatCurrency();}
	
	//Tình trạng
	function getStatus( ) {return $this->Status;}	
	function setStatus( $Status ) {$this->Status = $Status;$this->markDirty();}
			
	function getStatusPrint(){if ( isset($this->DateTime) )return "Đang có khách";else return "Chưa có khách";}
			
	//---------------------------------------------------------														
	function getValue(){
		return $this->getPRoom() + ($this->NWater - $this->OWater)*$this->getPWater() + ($this->NElectric - $this->OElectric)*$this->getPElectric();
	}		
	function getValuePrint(){$num = new Number($this->getValue());return $num->formatCurrency();}
	function getValueStrPrint(){$num = new Number($this->getValue());return $num->readDigit();}
			
	//-------------------------------------------------------------------------------
	//DEFINE URL
	//-------------------------------------------------------------------------------		
	function getURLCheckoutExe(){
		$Domain = $this->getTable()->getDomain();
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/".$this->getId()."/checkout/exe";
    }				
	
	function getURLPrint(){
		$Domain = $this->getTable()->getDomain();
		return "/note/".$Domain->getId()."/".$this->getIdTable()."/".$this->getId()."/print";
    }
	
	//---------------------------------------------------------	
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}	
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}
	
}
?>
