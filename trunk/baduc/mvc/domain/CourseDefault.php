<?php
Namespace MVC\Domain;
use MVC\Library\Number;
require_once( "mvc/base/domain/DomainObject.php" );

class CourseDefault extends Object{

    private $Id;	
	private $IdTypeRoom;
	private $IdCourse;
	private $Count;	
	private $Price;
	
	private $Course;
	private $Session;

    function __construct( $Id=null, $IdTypeRoom=null, $IdCourse=null, $Count=null, $Price=null) {
        $this->Id = $Id;
		$this->IdTypeRoom = $IdTypeRoom;
		$this->IdCourse = $IdCourse;
		$this->Count = $Count;		
		$this->Price = $Price;
        parent::__construct( $Id );
    }
	function setId( $Id) {
        $this->Id = $Id;
    }
    function getId( ) {return $this->Id;}
	function getIdPrint( ) {return "CourseDefault".$this->Id;}
	
	function setId1( $Id1) {$this->Id1 = $Id1;}
    function getId1( ) {return $this->Id1;}
		
	function setIdTypeRoom( $IdTypeRoom ) {$this->IdTypeRoom = $IdTypeRoom;$this->markDirty();}
	function getIdTypeRoom( ) {return $this->IdTypeRoom;}
	
	function getSession( ) {
		if (!isset($this->Session)){
			$mSession = new \MVC\Mapper\Session();
			$this->Session = $mSession->find($this->IdTypeRoom);
		}
        return $this->Session;
    }
	
	function setIdCourse( $IdCourse ) {
        $this->IdCourse = $IdCourse;
        $this->markDirty();
    }
	function getIdCourse( ) {
        return $this->IdCourse;
    }		
	function getCourse( ) {
		if (!isset($this->Course)){
			$mCourse = new \MVC\Mapper\Course();
			$this->Course = $mCourse->find($this->IdCourse);
		}
        return $this->Course;
    }	
    function setCount( $Count ) {
        $this->Count = $Count;
        $this->markDirty();
    }   
	function getCount( ) {
        return $this->Count;
    }
	function getCountPrint( ) {
        $num = new Number($this->Count);
		return $num->formatCurrency();
    }
	
	function getCountExchange( $IdResource ) {
		$mR2C = new \MVC\Mapper\R2C();
		$R2CAll = $mR2C->findBy(array( $this->getIdCourse() ));
		
		$Rate = 1;
		while ($R2CAll->valid()){
			$R2C = $R2CAll->current();
			if ($R2C->getIdResource() == $IdResource){
				$Rate = (float)$R2C->getValue2()/(float)$R2C->getValue1();
				break;
			}
			$R2CAll->next();
		}		
        return (float)($this->Count)*$Rate;
    }
	
	function setPrice( $Price) {
        $this->Price = $Price;
    }
	function getPrice( ) {
        return $this->Price;
    }
	function getPricePrint( ) {
        $num = new Number($this->Price);
		return $num->formatCurrency();
    }
	
	function getValue( ) {
        return $this->Price*$this->Count;
    }
	function getValuePrint( ) {
        $num = new Number($this->getValue());
		return $num->formatCurrency()." đ";
    }
	//-------------------------------------------------------------------------------
	//DEFINE URL
	//-------------------------------------------------------------------------------
	function getURLUpdLoad(){return "/setting/typeroom/".$this->getIdTypeRoom()."/default/".$this->getId()."/upd/load";}
	function getURLUpdExe(){return "/setting/typeroom/".$this->getIdTypeRoom()."/default/".$this->getId()."/upd/exe";}
	
	function getURLDelLoad(){return "/setting/typeroom/".$this->getIdTypeRoom()."/default/".$this->getId()."/del/load";}
	function getURLDelExe(){return "/setting/typeroom/".$this->getIdTypeRoom()."/default/".$this->getId()."/del/exe";}
		
	//---------------------------------------------------------------------------------	
	//CÁC HÀM XỬ LÍ DANH SÁCH
	//---------------------------------------------------------------------------------			
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}
	
}
?>
