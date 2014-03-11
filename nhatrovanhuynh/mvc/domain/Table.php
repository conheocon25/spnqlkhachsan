<?php
namespace MVC\Domain;
use MVC\Library\Number;

require_once( "mvc/base/domain/DomainObject.php" );
class Table extends Object{

    private $Id;
	private $IdDomain;
	private $Name;
	private $IdUser;
	private $Type;
	
	private $Sessions;
	private $SessionsTracking;
	//-------------------------------------------------------------------------------
	//ACCESSING MEMBER PROPERTY
	//-------------------------------------------------------------------------------		
    function __construct( $Id=null, $IdDomain=null, $Name=null, $IdUser=null, $Type=null ) {
        $this->Id = $Id;
		$this->IdDomain = $IdDomain;
		$this->Name = $Name;
		$this->IdUser = $IdUser;
		$this->Type = $Type;
        parent::__construct( $Id );
    }
	
    function getId( ) {return $this->Id;}
	function getIdPrint( ) {return "t".$this->Id;}
		
	function getIdDomain( ) {return $this->IdDomain;}	
	function setIdDomain( $IdDomain ) {$this->IdDomain = $IdDomain;$this->markDirty();}

	function getName( ) {return $this->Name;}
	function setName( $Name ) {$this->Name = $Name;$this->markDirty();}

	function getIdUser( ) {return $this->IdUser;}	
    function setIdUser( $IdUser ) {$this->IdUser = $IdUser;$this->markDirty();}
	
	function getUser( ){$mUser = new \MVC\Mapper\User();$User = $mUser->find($this->IdUser);return $User;}

	//True: có khách, false: không có khách
    function getState() {
		$mSession = new	\MVC\Mapper\Session();
		$Session = $mSession->findLast(array($this->getId()));
		if (!isset($Session)){
			return false;
		}
		$count = $Session->getDetails()->count();
		if ($count==0)
			return false;
		return true;
    }
			
	function getType( ) {return $this->Type;}	
	function getTypePrint() {
		if ($this->Type==1)
			return "VIP";
        return "Thường";
    }
	
	function setType( $Type ){$this->Type = $Type; $this->markDirty();}			
	function getDomain(){
		$mDomain = new \MVC\Mapper\Domain();
		$Domain = $mDomain->find($this->IdDomain);
		return $Domain;
	}
	
	//-------------------------------------------------------------------------------
	//GET LISTs
	//-------------------------------------------------------------------------------	
	function getSessionActive(){
		$mSession = new	\MVC\Mapper\Session();
		$Session = $mSession->findLast(array($this->getId()));
		return $Session;
	}
	
	function getSessionRecent(){		
		$mSession = new	\MVC\Mapper\Session();		
		$SessionAll = $mSession->findByTablePage(array($this->getId(), 1, 5));
		return $SessionAll;
	}
	
	function getSessionAll(){		
		$mSession = new	\MVC\Mapper\Session();		
		$SessionAll = $mSession->findByTable(array($this->getId()));		
		return $SessionAll;
	}
	
	function getSessionsValue(){
		$Sessions = $this->getSessions();
		$Sum = 0;
		$Sessions->rewind();
		while($Sessions->valid()){
			$Session = $Sessions->current();
			$Sum += $Session->getValue();
			$Sessions->next();
		}
		return $Sum;
	}
	
	function getSessionsValuePrint(){
		$num = new Number($this->getSessionsValue());
		return $num->formatCurrency()." đ";
	}
	
	function getSessionByDate($Date){
		$mSession 	= new \MVC\Mapper\Session();
		$SessionAll = $mSession->findByTableTracking(array($this->getId(), $Date." 0:0:0", $Date." 23:59:59"));
		return $SessionAll;
	}
	
	function getSessionByDateValue($Date){
		$Sessions = $this->getSessionByDate($Date);
		$Sum = 0;
		$Sessions->rewind();
		while($Sessions->valid()){
			$Session = $Sessions->current();
			$Sum += $Session->getValue();
			$Sessions->next();
		}
		return $Sum;
	}	
	function getSessionByDateValuePrint($Date){
		$num = new Number($this->getSessionByDateValue($Date));
		return $num->formatCurrency();
	}
	
	function getSessionByDateValue1($Date){
		$Sessions = $this->getSessionByDate($Date);
		$Sum = 0;
		$Sessions->rewind();
		while($Sessions->valid()){
			$Session = $Sessions->current();
			if ($Session->getStatus()==0)
				$Sum += $Session->getValue();
			$Sessions->next();
		}
		return $Sum;
	}	
	function getSessionByDateValue1Print($Date){
		$num = new Number($this->getSessionByDateValue1($Date));
		return $num->formatCurrency();
	}
	
	function getSessionByDateValue2($Date){
		$Sessions = $this->getSessionByDate($Date);
		$Sum = 0;
		$Sessions->rewind();
		while($Sessions->valid()){
			$Session = $Sessions->current();
			if ($Session->getStatus()==1)
				$Sum += $Session->getValue();
			$Sessions->next();
		}
		return $Sum;
	}	
	function getSessionByDateValue2Print($Date){
		$num = new Number($this->getSessionByDateValue2($Date));
		return $num->formatCurrency();
	}
			
	function toJSON(){
		$json = array(
			'Id' 			=> $this->getId(),
			'IdDomain'		=> $this->getIdDomain(),
			'Name'			=> $this->getName(),
			'IdUser'		=> $this->getIdUser(),			
			'Type'			=> $this->getType()
		);
		return json_encode($json);
	}
	
	function setArray( $Data ){
        $this->Id 			= $Data[0];
		$this->IdDomain 	= $Data[1];
		$this->Name 		= $Data[2];
		$this->IdUser 		= $Data[3];
		$this->Type 		= $Data[4];
    }
	
	function getClassPrint(){		
		if ($this->getSessionActive()==null){
			$Class = "Table item";
		}else{
			if ($this->getSessionActive()->getNote()==""){
				$Class = "Table item actived";
			}else{
				$Class = "Table item print";
			}
		}
		return $Class;
	}
	
	function getLog($Date){
		$mLog 	= new \MVC\Mapper\TableLog();
		$LogAll = $mLog->findBy(array($this->getId(), $Date));
		return $LogAll;
	}
	
	//-------------------------------------------------------------------------------
	//DEFINE SELLING URL
	//-------------------------------------------------------------------------------	
	function getURLDetail(){return "/note/".$this->IdDomain."/".$this->getId();}
	
	//---------------------------------------------------------	
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}
}
?>