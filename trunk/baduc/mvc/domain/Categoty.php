<?php
Namespace MVC\Domain;
require_once( "mvc/base/domain/DomainObject.php" );

class Category extends Object{

    private $Id;
	private $Name;
	private $Picture;
	
	//-------------------------------------------------------------------------------
	//ACCESSING MEMBER PROPERTY
	//-------------------------------------------------------------------------------
    function __construct( $Id=null, $Name=null , $Picture=Null) {
        $this->Id = $Id;
		$this->Name = $Name;
		$this->Picture = $Picture;
        parent::__construct( $Id );
    }
    function getId() {
        return $this->Id;
    }	
	function getIdPrint(){
        return "c" . $this->getId();
    }	
	
    function setName( $Name ) {
        $this->Name = $Name;
        $this->markDirty();
    }
   
	function getName( ) {
        return $this->Name;
    }
	
	function setPicture( $Picture ) {
        $this->Picture = $Picture;
        $this->markDirty();
    }
   
	function getPicture( ) {
        return $this->Picture;
    }
	
	//-------------------------------------------------------------------------------
	//GET LISTs
	//-------------------------------------------------------------------------------
	function getCourses(){
		$mCourse = new \MVC\Mapper\Course();
		$Courses = $mCourse->findByCategory(array($this->getId()));
		return $Courses;
	}
	
	//-------------------------------------------------------------------------------
	//DEFINE URL
	//-------------------------------------------------------------------------------
	function getURLUpdLoad(){		
		return "/setting/category/".$this->getId()."/upd/load";
	}
	function getURLUpdExe(){		
		return "/setting/category/".$this->getId()."/upd/exe";
	}
	
	function getURLDelLoad(){		
		return "/setting/category/".$this->getId()."/del/load";
	}
	function getURLDelExe(){		
		return "/setting/category/".$this->getId()."/del/exe";
	}
					
	function getURLCourse(){		
		return "/setting/category#c".$this->getId();
	}
	
	function getURLCourseInsLoad(){		
		return "/setting/category/".$this->getId()."/ins/load";
	}
	function getURLCourseInsExe(){		
		return "/setting/category/".$this->getId()."/ins/exe";
	}
		
	//--------------------------------------------------------------------------
    static function findAll() {$finder = self::getFinder( __CLASS__ ); return $finder->findAll();}
    static function find( $Id ) {$finder = self::getFinder( __CLASS__ ); return $finder->find( $Id );}	
}

?>
