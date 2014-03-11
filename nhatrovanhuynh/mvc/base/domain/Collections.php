<?php
namespace MVC\Domain;

interface CollectGeneralCollection 	extends \Iterator {function add( Object $CollectGeneral );}
interface CollectCustomerCollection extends \Iterator {function add( Object $CollectCustomer );}
interface ConfigCollection 			extends \Iterator {function add( Object $Config );}
interface CustomerCollection 		extends \Iterator {function add( Object $Customer );}
interface DomainCollection 			extends \Iterator {function add( Object $Domain );}
interface EmployeeCollection 		extends \Iterator {function add( Object $Employee );}
interface GuestCollection 			extends \Iterator {function add( Object $Guest);}
interface PaidGeneralCollection 	extends \Iterator {function add( Object $PaidGeneral );}
interface PaidEmployeeCollection 	extends \Iterator {function add( Object $PaidEmployee );}
interface SessionCollection 		extends \Iterator {function add( Object $Session );	}
interface SessionDetailCollection 	extends \Iterator {function add( Object $SessionDetail );	}
interface TableCollection 			extends \Iterator {function add( Object $table );}
interface TableLogCollection 		extends \Iterator {function add( Object $TableLog );}
interface TermCollectCollection 	extends \Iterator {function add( Object $TermCollect );}
interface TermPaidCollection 		extends \Iterator {function add( Object $TermPaid );}
interface TrackingCollection 		extends \Iterator {function add( Object $Tracking);}
interface TrackingDailyCollection 	extends \Iterator {function add( Object $TrackingDaily);}
interface UserCollection 			extends \Iterator {function add( Object $user );}
interface PageCollection 			extends \Iterator {function add( Object $Page);}

?>