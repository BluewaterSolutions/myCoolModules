/**
* Manage Properties
* It will be your responsibility to fine tune this template, add validations, try/catch blocks, logging, etc.
*/
component {

	property name="securityService" inject="id:securityService@cb";
	property name="authorService" 	inject="id:authorService@cb";
	property name='MessageBox' 		inject='MessageBox@cbMessageBox';
	property name="cbHelper" 		inject="CBHelper@cb";	
	property name='menuService' 	inject='AdminMenuService@cb';
	property name="settingService"	inject="id:settingService@cb";
	property name="PropertyService"	inject="PropertyService@bluTest";
	
	// HTTP Method Security
	this.allowedMethods = {
		index = "GET", 
		new = "GET", 
		edit = "GET", 
		delete = "POST,DELETE", 
		save = "POST,PUT"
	};
	
/*******************************************************
			CHECKEVENTPERMISSIONS
********************************************************/
    function checkEventPermissions( event, rc, prc ){
        var currentAction = event.getMemento().context.moduleAction;
        if( structKeyExists( eventPermissions, currentAction ) ){
            if( !prc.oAuthor.checkPermission( eventPermissions[ currentAction ][ "permissions" ] ) ){
                if( structKeyExists( eventPermissions[ currentAction ], "permissions" ) ){
                    messagebox.error( eventPermissions[ currentAction ][ "message" ] );   
                }
                if( structKeyExists( eventPermissions[ currentAction ], "nextEvent" ) ){
                    setNextEvent( eventPermissions[ currentAction ][ "nextEvent" ] ); 
                } else {
                	
                    setNextEvent( defaultEventRedirect );
                }
            }   
        }
    }
	defaultEventRedirect = "cbadmin";
        eventPermissions = {
            "index": {
                "permissions"     : "MODULES_ADMIN",
                "message"     : "You do not have permision to view this."   ,
                "nextEvent"       : "cbadmin"
            },
            "edit": {
                "permissions"     : "MODULES_ADMIN",
                "message"     : "You do not have permision to view this."   ,
                "nextEvent"       : "cbadmin"
            },
            "new": {
                "permissions"     : "MODULES_ADMIN",
                "message"     : "You do not have permision to view this."   ,
                "nextEvent"       : "cbadmin"
            },
            "save": {
                "permissions"     : "MODULES_ADMIN",
                "message"     : "You do not have permision to view this."   ,
                "nextEvent"       : "cbadmin"
            },
            "delete": {
                "permissions"     : "MODULES_ADMIN",
                "message"     : "You do not have permision to view this."   ,
                "nextEvent"       : "cbadmin"
            }

        };
	

	/*******************************************************
				PREHANDLER
	********************************************************/
	function preHandler( event, rc, prc ){
	checkEventPermissions( event, rc, prc, eventPermissions, defaultEventRedirect );
	    param name="prc.jsFullAppendList"	default="";
	    param name="prc.cssFullAppendList"	default="";
		prc.jsFullAppendList=listappend(prc.jsFullAppendList,"https://cdn.datatables.net/v/dt/jszip-2.5.0/pdfmake-0.1.18/af-2.1.2/b-1.2.2/b-colvis-1.2.2/b-flash-1.2.2/b-html5-1.2.2/b-print-1.2.2/cr-1.3.2/fc-3.2.2/fh-3.1.2/kt-2.1.3/r-2.1.0/rr-1.1.2/sc-1.4.2/se-1.2.0/datatables.min");
	    prc.cssFullAppendList=listappend(prc.cssFullAppendList,"https://cdn.datatables.net/v/dt/jszip-2.5.0/pdfmake-0.1.18/af-2.1.2/b-1.2.2/b-colvis-1.2.2/b-flash-1.2.2/b-html5-1.2.2/b-print-1.2.2/cr-1.3.2/fc-3.2.2/fh-3.1.2/kt-2.1.3/r-2.1.0/rr-1.1.2/sc-1.4.2/se-1.2.0/datatables.min");

	}

	/**
	* Listing
	*/
	function index( event, rc, prc ){
		// Get all Properties
		prc.qProperties=PropertyService.getAll(argumentCollection = arguments);
		event.setView( "Properties/index" );
	}	
	
	/**
	* New Form
	*/
	function new( event, rc, prc ){
		// get new Property
		prc.qProperty = PropertyService.new();
		event.setView( "Properties/new" );
		

	}	

	/**
	* Edit Form
	*/
	function edit( event, rc, prc ){
		// get Property
		prc.qProperty = PropertyService.get(argumentCollection = arguments);
		event.setView( "Properties/edit" );

	}	
		
	

	/**
	* Save and Update
	*/
	function save( event, rc, prc ){
		// get Property to persist or update and populate it with incoming form
		prc.qProperty=PropertyService.save(argumentCollection = arguments);
		setNextEvent(event='cbadmin.module.bluTest.Properties.index');
			
	}	

	/**
	* Delete
	*/
	function delete( event, rc, prc ){
		prc.qProperty=PropertyService.getAll("active"=1);
		var removed = PropertyService.delete(argumentCollection = arguments);
		flash.put( "notice", { message="Property Deleted!", type="success" } );
		setNextEvent(event='cbadmin.module.bluTest.Properties.index');
		
	}	



		
		
	
}
