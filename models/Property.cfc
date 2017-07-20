/**
* A cool Property entity
*/
component persistent="true" table="bluweb__properties"{

	// Primary Key
	property name="id" fieldtype="id" column="id" generator="native" setter="false";
	
	// Properties
	property name="first" ormtype="string";	property name="last" ormtype="string";	property name="email" ormtype="string";	property name="address1" ormtype="string";	property name="address2" ormtype="string";	property name="city" ormtype="string";	property name="state" ormtype="string";	property name="zip" ormtype="string";	
	
	// Validation
	this.constraints = {
		// Example: age = { required=true, min="18", type="numeric" }
	};
	
	// Constructor
	function init(){
		
		return this;
	}
}

