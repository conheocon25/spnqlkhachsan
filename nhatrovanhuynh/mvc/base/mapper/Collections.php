<?php
namespace MVC\Mapper;
require_once( "mvc/base/domain/Collections.php");
require_once( "mvc/base/mapper/Collection.php");

class CollectGeneralCollection 	extends Collection implements \MVC\Domain\CollectGeneralCollection{function targetClass( ) {return "\MVC\Domain\CollectGeneral";}}
class CollectCustomerCollection extends Collection implements \MVC\Domain\CollectCustomerCollection{function targetClass( ) {return "\MVC\Domain\CollectCustomer";}}
class ConfigCollection 			extends Collection implements \MVC\Domain\ConfigCollection{function targetClass(){return "\MVC\Domain\Config";}}
class CustomerCollection 		extends Collection implements \MVC\Domain\CustomerCollection {function targetClass( ) {return "\MVC\Domain\Customer";}}
class DomainCollection 			extends Collection implements \MVC\Domain\DomainCollection {function targetClass( ) {return "\MVC\Domain\Domain";}}	
class EmployeeCollection 		extends Collection implements \MVC\Domain\EmployeeCollection{function targetClass( ) {return "\MVC\Domain\Employee";}}
class GuestCollection 			extends Collection implements \MVC\Domain\GuestCollection{function targetClass(){return "\MVC\Domain\Guest";}}
class PaidGeneralCollection 	extends Collection implements \MVC\Domain\PaidGeneralCollection{function targetClass( ) {return "\MVC\Domain\PaidGeneral";}}
class PaidEmployeeCollection 	extends Collection implements \MVC\Domain\PaidEmployeeCollection{function targetClass( ) {return "\MVC\Domain\PaidEmployee";}}
class SessionCollection 		extends Collection implements \MVC\Domain\SessionCollection {function targetClass( ) {return "\MVC\Domain\Session";}}			
class TableCollection 			extends Collection implements \MVC\Domain\TableCollection {function targetClass( ) {return "\MVC\Domain\Table";}}		
class TermCollectCollection 	extends Collection implements \MVC\Domain\TermCollectCollection{function targetClass(){return "\MVC\Domain\TermCollect";}}
class TermPaidCollection 		extends Collection implements \MVC\Domain\TermPaidCollection{function targetClass(){return "\MVC\Domain\TermPaid";}}
class TrackingCollection 		extends Collection implements \MVC\Domain\TrackingCollection{function targetClass(){return "\MVC\Domain\Tracking";}}
class TrackingDailyCollection 	extends Collection implements \MVC\Domain\TrackingDailyCollection{function targetClass(){return "\MVC\Domain\TrackingDaily";}}
class UserCollection 			extends Collection implements \MVC\Domain\UserCollection {function targetClass( ) {return "\MVC\Domain\User";}}
class PageCollection 			extends Collection implements \MVC\Domain\PageCollection{function targetClass(){return "\MVC\Domain\Page";}}

?>