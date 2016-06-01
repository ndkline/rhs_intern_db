<!--- Please insert your code here --->
<cfquery datasource="#Session.DSN#" name="qInternships">
SELECT Children
FROM Intern
</cfquery>
<cfdump var="#qInternships#" expand="true" top="10">