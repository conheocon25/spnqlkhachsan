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
	
	function toJSON(){
		$json = array(
			'Id' 			=> $this->getId(),			
			'Name'			=> $this->getName()
		);
		return json_encode($json);
	}
	
	function setArray( $Data ){
        $this->Id = $Data[0];
		$this->Name = $Data[1];		
    }
	
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
	function getURLCourseDefault(){	return "/setting/typeroom/".$this->getId()."/default";}
	function getURLCourseDefaultInsLoad(){	return "/setting/typeroom/".$this->getId()."/default/ins/load";}
	function getURLCourseDefaultInsExe(){	return "/setting/typeroom/".$this->getId()."/default/ins/exe";}
	
	//--------------------------------------------------------------------------
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}	
}

?>
