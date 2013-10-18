<?php
Namespace MVC\Domain;
require_once( "mvc/base/domain/DomainObject.php" );

class TypeRoom extends Object{

    private $Id;
	private $Name;
		
	//-------------------------------------------------------------------------------
	//ACCESSING MEMBER PROPERTY
	//-------------------------------------------------------------------------------
    function __construct( $Id=null, $Name=null) {
        $this->Id = $Id;
		$this->Name = $Name;
		
        parent::__construct( $Id );
    }
    function getId() {return $this->Id;}	
	function getIdPrint(){return "t" . $this->getId();}
	
    function setName( $Name ) {$this->Name = $Name;$this->markDirty();}   
	function getName( ) {return $this->Name;}
		
	//-------------------------------------------------------------------------------
	//GET LISTs
	//-------------------------------------------------------------------------------
	function getDefaultAll(){
		$mCourseDefault = new \MVC\Mapper\CourseDefault();
		$CDAll = $mCourseDefault->findBy( array($this->getId()) );
		return $CDAll;
	}
	
	function getTableAll(){
		$mTable = new \MVC\Mapper\Table();
		$TableAll = $mTable->findByType(array( $this->getId() ));
		return $TableAll;
	}
	
	//-------------------------------------------------------------------------------
	//DEFINE URL
	//-------------------------------------------------------------------------------
	function getURLUpdLoad(){	return "/setting/typeroom/".$this->getId()."/upd/load";}
	function getURLUpdExe(){	return "/setting/typeroom/".$this->getId()."/upd/exe";}
	
	function getURLDelLoad(){	return "/setting/typeroom/".$this->getId()."/del/load";}
	function getURLDelExe(){	return "/setting/typeroom/".$this->getId()."/del/exe";}
	
	function getURLCourseDefault(){	return "/setting/typeroom/".$this->getId()."/default";}
	function getURLCourseDefaultInsLoad(){	return "/setting/typeroom/".$this->getId()."/default/ins/load";}
	function getURLCourseDefaultInsExe(){	return "/setting/typeroom/".$this->getId()."/default/ins/exe";}
	
	//--------------------------------------------------------------------------
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}	
}

?>
