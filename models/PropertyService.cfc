<cfcomponent hint="" output="false" >

    <!--- Properties --->
    

<!------------------------------------------- CONSTRUCTOR ------------------------------------------->

	<cffunction name="init" access="public" returntype="any" output="false" hint="constructor">
		<cfscript>
			return this;
		</cfscript>
	</cffunction>

<!------------------------------------------- PUBLIC ------------------------------------------->
<cffunction name="get" hint="get" output="false" returntype="any">
	<cfquery name="getQuery" datasource="contentbox" result="bluweb__properties">
			SELECT
				*
			FROM
				bluweb__properties
			WHERE 
				bluweb__properties.ID 	= 	<cfqueryparam value="#arguments.rc.id#">
		</cfquery>
		<cfreturn getQuery>
	</cffunction>

	<cffunction name="getall" hint="getall" output="false" returntype="any">
	<cfquery name="getallQuery" datasource="contentbox" result="bluweb__properties">
			SELECT
				*
			FROM
				bluweb__properties
		</cfquery>
		<cfreturn getallQuery>
	</cffunction>

	<cffunction name="save" hint="save" output="false" returntype="any">
	<cfquery name="saveQuery" datasource="contentbox" result="saveQuery">
			<cfif #len(arguments.rc.id)#>
				UPDATE
			<cfelse>
				INSERT INTO
			</cfif>
				bluweb__properties
			SET
			

			<cfif structKeyExists(arguments.rc, "address1")>
				bluweb__properties.address1 	= 	<cfqueryparam value="#arguments.rc.address1#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "address2")>
				bluweb__properties.address2 	= 	<cfqueryparam value="#arguments.rc.address2#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "city")>
				bluweb__properties.city 	= 	<cfqueryparam value="#arguments.rc.city#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "email")>
				bluweb__properties.email 	= 	<cfqueryparam value="#arguments.rc.email#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "first")>
				bluweb__properties.first 	= 	<cfqueryparam value="#arguments.rc.first#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "last")>
				bluweb__properties.last 	= 	<cfqueryparam value="#arguments.rc.last#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "state")>
				bluweb__properties.state 	= 	<cfqueryparam value="#arguments.rc.state#"  cfsqltype="cf_sql_char">,
			</cfif>
			<cfif structKeyExists(arguments.rc, "zip")>
				bluweb__properties.zip 	= 	<cfqueryparam value="#arguments.rc.zip#"  cfsqltype="cf_sql_char">,
			</cfif>			

			bluweb__properties.updated_at	=	<cfqueryparam value="#createodbcdatetime(now())#"  cfsqltype="cf_sql_timestamp">
			<cfif #len(arguments.rc.id)#>
			WHERE
				bluweb__properties.ID 	= 	<cfqueryparam value="#arguments.rc.id#">
				<cfelse>
			,bluweb__properties.created_at	=	<cfqueryparam value="#createodbcdatetime(now())#"  cfsqltype="cf_sql_timestamp">
			</cfif>
		</cfquery>
		<cfreturn saveQuery>
	</cffunction>

	<cffunction name="new" hint="new" output="false" returntype="any">
	<cfquery name="newQuery" datasource="contentbox" result="bluweb__properties">
			SELECT
				*
			FROM
				bluweb__properties
			WHERE
				bluweb__properties.ID is null
		</cfquery>
		<cfreturn newQuery>
	</cffunction>

	<cffunction name="delete" hint="delete" output="false" returntype="any">
	<cfquery name="deleteQuery" datasource="contentbox" result="deleteQuery">
			DELETE
			FROM
				bluweb__properties
			WHERE
				bluweb__properties.ID 	= 	<cfqueryparam value="#arguments.rc.id#">
		</cfquery>
		<cfreturn deleteQuery>
	</cffunction>


</cfcomponent>	