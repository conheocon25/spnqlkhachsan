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
	private $Note;
	private $Status;
			
	//-------------------------------------------------------------------------------
	//ACCESSING MEMBER PROPERTY
	//-------------------------------------------------------------------------------
    function __construct( $Id=null, $IdTable=null, $IdUser=null, $IdCustomer=null, $IdEmployee=null, $DateTime=null, $Note=null, $Status=null) {
        $this->Id 			= $Id;
		$this->IdTable 		= $IdTable;
		$this->IdUser 		= $IdUser;
		$this->IdCustomer 	= $IdCustomer;
		$this->IdEmployee 	= $IdEmployee;
		$this->DateTime 	= $DateTime;
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
		$this->Note 			= $Data[6];
		$this->Status 			= $Data[7];		
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
			
	//Ghi chú
	function getNote( ) {return $this->Note;}	
	function setNote( $Note ) {$this->Note = $Note;$this->markDirty();}
		
	//Tình trạng
	function getStatus( ) {return $this->Status;}	
	function setStatus( $Status ) {$this->Status = $Status;$this->markDirty();}
			
	function getStatusPrint(){if ( isset($this->DateTime) )return "Đang có khách";else return "Chưa có khách";}
			
	//---------------------------------------------------------														
	function getValue(){
		return 0;
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
		return "/selling/".$Domain->getId()."/".$this->getIdTable()."/".$this->getId()."/print";
    }
	
	//---------------------------------------------------------	
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}	
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}
	
}
?>
