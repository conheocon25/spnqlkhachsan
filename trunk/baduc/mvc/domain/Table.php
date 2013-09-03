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
	
    function getId( ) {
        return $this->Id;
    }
	function getIdPrint( ) {
        return "t".$this->Id;
    }
		
	function getIdDomain( ) {
        return $this->IdDomain;
    }
	
	function setIdDomain( $IdDomain ) {
        $this->IdDomain = $IdDomain;
        $this->markDirty();
    }

	function getName( ) {
        return $this->Name;
    }

	function setName( $Name ) {
        $this->Name = $Name;
        $this->markDirty();
    }

	function getIdUser( ) {
        return $this->IdUser;
    }
	
    function setIdUser( $IdUser ) {
        $this->IdUser = $IdUser;
        $this->markDirty();
    }
	
	function getUser( ){
		$mUser = new \MVC\Mapper\User();
		$User = $mUser->find($this->IdUser);
		return $User;
    }

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
			
	function getType( ) {
        return $this->Type;
    }
	
	function getTypePrint() {
		$mType = new \MVC\Mapper\TypeRoom();
		$Type = $mType->find($this->Type);		
        return $Type->getName();
    }
	
	function setType( $Type ) {
        $this->Type = $Type;
        $this->markDirty();
    }
			
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
	
	function getSessionsTop20(){		
		$mSession = new	\MVC\Mapper\Session();		
		$Sessions = $mSession->findByTableTop20(array($this->getId()));		
		return $Sessions;
	}
	
	function getSessions(){
		if (!isset($this->Sessions)){
			$mSession = new	\MVC\Mapper\Session();		
			$this->Sessions = $mSession->findByTable(array($this->getId()));
		}
		return $this->Sessions;
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
	
	function getSessionsTracking(){			
		if (!isset($this->SessionsTracking)){
			$Session = \MVC\Base\SessionRegistry::instance();
			$DateStart = $Session->getReportSellingDateStart();
			$DateEnd = $Session->getReportSellingDateEnd();
		
			$mSession = new	\MVC\Mapper\Session();		
			$this->SessionsTracking = $mSession->findByTracking2(array($this->getId(), $DateStart, $DateEnd));
		}
		return $this->SessionsTracking;
	}
	
	function getSessionsTrackingValue(){
		$Sessions = $this->getSessionsTracking();
		$Sum = 0;
		$Sessions->rewind();
		while($Sessions->valid()){
			$Session = $Sessions->current();
			$Sum += $Session->getValue();
			$Sessions->next();
		}
		return $Sum;
	}
	
	function getSessionsTrackingValuePrint(){
		$num = new Number($this->getSessionsTrackingValue());
		return $num->formatCurrency()." đ";
	}
	
	function getTrackingCount($DateStart, $DateEnd){
		$mSession = new \MVC\Mapper\Session();
		return $mSession->trackingCount(array($this->getId(), $DateStart, $DateEnd));
	}
	
	//-------------------------------------------------------------------------------
	//DEFINE SETTING URL
	//-------------------------------------------------------------------------------	
	function getURLUpdLoad(){
		return "/setting/domain/".$this->getIdDomain()."/".$this->getId()."/upd/load";
	}
	function getURLUpdExe(){		
		return "/setting/domain/".$this->getIdDomain()."/".$this->getId()."/upd/exe";
	}
	
	function getURLDelLoad(){		
		return "/setting/domain/".$this->getIdDomain()."/".$this->getId()."/del/load";
	}
	function getURLDelExe(){
		return "/setting/domain/".$this->getIdDomain()."/".$this->getId()."/del/exe";
	}
	
	//-------------------------------------------------------------------------------
	//DEFINE SELLING URL
	//-------------------------------------------------------------------------------	
	function getURLDetail(){return "/selling/".$this->IdDomain."/".$this->getId();}	
	function getURLCheckinExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/checkin/exe";}
	
	function getURLCheckoutExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/checkout/exe";}	
	function getURLCallLoad(){return "/selling/".$this->IdDomain."/".$this->getId()."/call/load";}
	function getURLCallExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/call/exe";}
	
	function getURLEvalLoad(){return "/selling/".$this->IdDomain."/".$this->getId()."/eval/load";}
	function getURLEvalExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/eval/exe";}
	
	function getURLMoveLoad(){return "/selling/".$this->IdDomain."/".$this->getId()."/move/load";}
	function getURLMoveExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/move/exe";}
	
	function getURLMergeLoad(){return "/selling/".$this->IdDomain."/".$this->getId()."/merge/load";}
	function getURLMergeExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/merge/exe";}
	
	function getURLCancelLoad(){return "/selling/".$this->IdDomain."/".$this->getId()."/del/load";}
	function getURLCancelExe(){return "/selling/".$this->IdDomain."/".$this->getId()."/del/exe";}
	
	function getURLLog(){return "/selling/".$this->IdDomain."/".$this->getId()."/log";}

	//---------------------------------------------------------	
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}
}
?>
