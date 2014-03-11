<?php
namespace MVC\Domain;

interface Finder {
    function find( $id );
    function findAll();

    function update( Object $object );
    function insert( Object $obj );
    //function delete();
}
interface CollectCustomerFinder extends Finder {}
interface CollectGeneralFinder 	extends Finder {}
interface ConfigFinder 			extends Finder {}
interface CustomerFinder 		extends Finder {}
interface DomainFinder  		extends Finder {}
interface EmployeeFinder 		extends Finder {}
interface GuestFinder 			extends Finder {}
interface PaidGeneralFinder 	extends Finder {}
interface PaidEmployeeFinder 	extends Finder {}
interface SessionFinder  		extends Finder {}
interface TableFinder  			extends Finder {}
interface TermCollectFinder 	extends Finder {}
interface TermPaidFinder 		extends Finder {}
interface UserFinder  			extends Finder {}
interface TrackingFinder 		extends Finder {}
interface TrackingDailyFinder 	extends Finder {}

?>