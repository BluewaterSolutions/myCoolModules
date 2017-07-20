/**
* A cool Property entity
*/
component persistent="true" table="bluweb__properties"{

	// Primary Key
	property name="id" fieldtype="id" column="id" generator="native" setter="false";
	
	// Properties
	property name="first" ormtype="string";
	
	// Validation
	this.constraints = {
		// Example: age = { required=true, min="18", type="numeric" }
	};
	
	// Constructor
	function init(){
		
		return this;
	}
}
