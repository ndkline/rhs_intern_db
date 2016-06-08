<!---<cflocation url="https://ed.psu.edu/internships/maintenance/logon.asp">--->

<!---Change next line once WebAccess is working -JEB6
<cfif CGI.HTTP_REMOTE_USER IS NOT "">--->
<cfif CGI.HTTP_REMOTE_USER IS  "">
   <!--- CGI variable exists --->
   <cfset Session.Id = "JEB6">
   <!---<cfset Session.Id = CGI.HTTP_REMOTE_USER>--->
   <!--- We've got the user verified by web access, but we also need to verify that they are in the Users table --->

	<!--- Check to see if the user is in the Users table.  If not, this is not a valid login. --->
	<cfquery name="isInUsers" datasource="#Session.dsn#">
	SELECT     UserID
	FROM         Users
	Where UserID = <cfqueryparam value="#Session.Id#" cfsqltype="cf_sql_varchar">
	</cfquery>

	<cfif isInUsers.recordcount EQ 1>
		<!--- Log the user in --->
		<cfset Session.Loggedin = True>
		<cflocation url="InternshipListing.cfm" >
	</cfif>
<cfelse>
  <!---  CGI variable does not exist - User cannot be logged in --->
  <cfset Session.Loggedin = False>
</cfif>
<!--- This will only be displayed if the user is not in the Users table. --->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login Form</title>
</head>

<body>

<p>Invalid Login!</p>
<!--- for testing only -- remove --->
<cfif Session.ID Eq "JEB6">
<cfdump expand="yes" var="#session#" >
</cfif>
</body>
</html>
