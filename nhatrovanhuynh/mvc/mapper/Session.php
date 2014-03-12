<?php
namespace MVC\Mapper;

require_once( "mvc/base/Mapper.php" );
class Session extends Mapper implements \MVC\Domain\SessionFinder {

    function __construct() {
        parent::__construct();
        $tblSession 		= "nhatrovanhuynh_session";				
		$tblTable 			= "nhatrovanhuynh_table";
						
		$selectAllStmt = sprintf("select * from %s", $tblSession);
		$selectStmt = sprintf("select * from %s where id=?", $tblSession);
		$updateStmt = sprintf("update %s set idtable=?, iduser=?, idcustomer=?, idemployee=?, datetime=?, nelectric=?, oelectric=?, pelectric=?, nwater=?, owater=?, pwater=?, proom=?, note=?, status=? where id=?", $tblSession);
		$insertStmt = sprintf("insert into %s (idtable, iduser, idcustomer, idemployee, datetime, oelectric, nelectric, pelectric, nwater, owater, pwater, proom, note, status) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", $tblSession);
		$deleteStmt = sprintf("delete from %s where id=?", $tblSession);
		
		$findByTableStmt = sprintf("select * from %s where idtable=?", $tblSession);
		
		$this->selectAllStmt 			= self::$PDO->prepare($selectAllStmt);
        $this->selectStmt 				= self::$PDO->prepare($selectStmt);
        $this->updateStmt 				= self::$PDO->prepare($updateStmt);
        $this->insertStmt 				= self::$PDO->prepare($insertStmt);
		$this->deleteStmt 				= self::$PDO->prepare($deleteStmt);
		$this->findByTableStmt 			= self::$PDO->prepare($findByTableStmt);
		
    } 
    function getCollection( array $raw ) {return new SessionCollection( $raw, $this );}
    protected function doCreateObject( array $array ) {		
        $obj = new \MVC\Domain\Session( 
			$array['id'],
			$array['idtable'],			
			$array['iduser'], 
			$array['idcustomer'],
			$array['idemployee'],
			$array['datetime'], 			
			$array['nelectric'], 
			$array['oelectric'], 
			$array['pelectric'], 
			$array['nwater'], 
			$array['owater'], 
			$array['pwater'], 
			$array['proom'], 
			$array['note'], 
			$array['status']			
		);
        return $obj;
    }
	
    protected function targetClass() { return "Session";}

    protected function doInsert( \MVC\Domain\Object $object ) {
        $values = array(
			$object->getIdTable(),
			$object->getIdUser(),
			$object->getIdCustomer(),
			$object->getIdEmployee(),
			$object->getDateTime(),			
			$object->getNElectric(),
			$object->getOElectric(),
			$object->getPElectric(),
			$object->getNWater(),
			$object->getOWater(),
			$object->getPWater(),
			$object->getPRoom(),
			$object->getNote(),
			$object->getStatus()					
		);		
        $this->insertStmt->execute( $values );
        $id = self::$PDO->lastInsertId();
        $object->setId( $id );
    }
    
    protected function doUpdate( \MVC\Domain\Object $object ) {
        $values = array( 
			$object->getIdTable(),
			$object->getIdUser(),
			$object->getIdCustomer(),
			$object->getIdEmployee(),
			$object->getDateTime(),			
			$object->getNElectric(),
			$object->getOElectric(),
			$object->getPElectric(),
			$object->getNWater(),
			$object->getOWater(),
			$object->getPWater(),
			$object->getPRoom(),
			$object->getNote(),
			$object->getStatus(),			
			$object->getId()
		);		
        $this->updateStmt->execute( $values );
    }

	protected function doDelete(array $values) {return $this->deleteStmt->execute( $values );}	
    function selectStmt() {return $this->selectStmt;}	
    function selectAllStmt() {return $this->selectAllStmt;}
	
	function findByTable($values ){
        $this->findByTableStmt->execute( $values );
        return new SessionCollection( $this->findByTableStmt->fetchAll(), $this );
    }
}
?>