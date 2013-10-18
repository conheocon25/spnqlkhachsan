<?php
namespace MVC\Mapper;
require_once( "mvc/base/Mapper.php" );
class CourseDefault extends Mapper implements \MVC\Domain\CourseDefaultFinder {

    function __construct() {
        parent::__construct();
				
		$tblCourseDefault = "h3d_course_default";
								
		$selectAllStmt = sprintf("select * from %s", $tblCourseDefault);
		$selectStmt = sprintf("select * from %s where id=?", $tblCourseDefault);
		$updateStmt = sprintf("update %s set id_type_room=?, id_course=?, count=?, price=? where id=?", $tblCourseDefault);
		$insertStmt = sprintf("insert into %s (id_type_room, id_course, count, price) values(?, ?, ?, ?)", $tblCourseDefault);		
		$deleteStmt = sprintf("delete from %s where id=?", $tblCourseDefault);		
		$findByStmt = sprintf("select * from %s where id_type_room = ? ", $tblCourseDefault);
												
        $this->selectAllStmt = self::$PDO->prepare( $selectAllStmt);
        $this->selectStmt = self::$PDO->prepare( $selectStmt );
        $this->updateStmt = self::$PDO->prepare( $updateStmt );
        $this->insertStmt = self::$PDO->prepare( $insertStmt );
		$this->deleteStmt = self::$PDO->prepare( $deleteStmt );
		$this->findByStmt = self::$PDO->prepare($findByStmt);
		
    } 
    function getCollection( array $raw ) {
        return new CourseDefaultCollection( $raw, $this );
    }
    protected function doCreateObject( array $array ) {		
        $obj = new \MVC\Domain\CourseDefault( 
			$array['id'],
			$array['id_type_room'], 
			$array['id_course'], 
			$array['count'], 			
			$array['price']
		);
        return $obj;
    }
    protected function targetClass() {return "CourseDefault";}
    protected function doInsert( \MVC\Domain\Object $object ) {
        $values = array(
			$object->getIdTypeRoom(),
			$object->getIdCourse(),
			$object->getCount(),
			$object->getPrice()
		); 
        $this->insertStmt->execute( $values );
        $id = self::$PDO->lastInsertId();
        $object->setId( $id );
    }
    protected function doUpdate( \MVC\Domain\Object $object ) {
        $values = array(
			$object->getIdTypeRoom(),
			$object->getIdCourse(),
			$object->getCount(),
			$object->getPrice(),
			$object->getId()
		);		
        $this->updateStmt->execute( $values );
    }
	protected function doDelete(array $values) {
        return $this->deleteStmt->execute( $values );
    }
    function selectStmt() {return $this->selectStmt;}
    function selectAllStmt() {return $this->selectAllStmt;}
		
	function findBy( $values ) {	
        $this->findByStmt->execute( $values );
        return new CourseDefaultCollection( $this->findByStmt->fetchAll(), $this );
    }
	
}
?>