<cfif IsDefined("URL.ID")>
    <cfquery name="qDeleteInternship" datasource="#Session.DSN#" >
    	
    
    DELETE FROM intern where id=<cfqueryparam  value="#URL.ID#"  cfsqltype= "cf_sql_integer">
    </cfquery>
    <cflocation url="internshipListing.cfm">
<cfelse> <cflocation url="login.cfm" >

</cfif>