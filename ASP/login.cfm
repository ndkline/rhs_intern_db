<!---<cflocation url="https://ed.psu.edu/internships/maintenance/logon.asp">--->
<cfif CGI.HTTP_REMOTE_USER IS NOT "">
   <!--- CGI variable exists --->
   <cfset Session.PSUid = CGI.HTTP_REMOTE_USER>
   <!--- We've got the user verified by web access, but we also need to verify that they are in the preapplication table --->

	<!--- Check to see if the user is in the preapplication table.  If not, this is not a valid login. --->
	<cfquery name="isInPDSpreApplication" datasource="#Session.PDS_DNS#">
	SELECT     studentId, psuid
	FROM         preApplication
	Where PSUID = <cfqueryparam value="#Session.PSUId#" cfsqltype="cf_sql_varchar">
	</cfquery>

	<cfif isInPDSpreApplication.recordcount EQ 1>
		<!--- Log the user in --->
		<cfset Session.StudentID = isInPDSpreApplication.studentId>
		<cfset Session.Loggedin = True>
		
		<cfparam name="Session.ApplicationSubmitted" default="False" type="boolean">
		
		<cfparam name="Session.name" default="Testing">
		
		<cfparam name="Session.scrollx" default="0">
		<cfparam name="Session.scrolly" default="0">
		
		<cfparam name="Session.RecordExists" default="False" type="boolean">
		<cfparam name="Session.Answer1Saved" default="False" type="boolean">
		<cfparam name="Session.Answer2Saved" default="False" type="boolean">
		<cfparam name="Session.Answer3Saved" default="False" type="boolean">
		<cfparam name="Session.Answer4Saved" default="False" type="boolean">
		<cfparam name="Session.Answer5Saved" default="False" type="boolean">
		<cfparam name="Session.Answer6Saved" default="False" type="boolean">
		<cfparam name="Session.Answer7Saved" default="False" type="boolean">
		
		<cfparam name="Session.NotSubmittedBecause" default="" type="any">
	
		<!---The user is logged in and is in the Preapplication table.--->
		<cfif "dys11" does not contain Session.PSUID>
		<cfset effDate = "1/15/2010">
		<cfset expDate = "1/24/2010 5:00 PM">
		<cfset ReffDate = "1/26/2010">
		<cfset RexpDate = "2/05/2010 3:00 PM">
		<cfset comparison = DateCompare(Now(), effDate)>
	
		<cfif DateCompare(Now(),effdate) eq -1>
		<!---	If DateCompare = -1 then now is earler than the effDate (and the expDate)
				  send it to a file telling them the application is not open yet--->
				  <cflocation url="/educ/etc/jeb6/pds/student-information/pdsapplication/application-period-not-open" addtoken="yes">
				  
		</cfif>
			
		<cfif DateCompare(Now(), expDate) gte 0>
		<!---	If DateCompare >=0 then now is later than the expDate
				  send it to a file telling them the application is closed--->
				  <cflocation url="/educ/etc/jeb6/pds/student-information/pdsapplication/application-period-is-close/" addtoken="yes">
		</cfif>
		</cfif>
		<!--- Check to see if the user has submitted records to the Application table before --->
		<cfquery name="PDSApp" datasource="#Session.PDS_DNS#">
			SELECT * FROM jws31.application
			Where PSUID = <cfqueryparam value="#Session.PSUId#" cfsqltype="cf_sql_varchar">
		</cfquery>
	
		<!--- Get the questions for display --->
		<cfquery  name="StudentAppQuestions" datasource="#Session.PDS_DNS#">
			SELECT * FROM jws31.StudentAppQuestions
			Order by questionNum 
		</cfquery>
		<cfset Session.AppQuestions=ArrayNew(1)>
		<cfloop query="StudentAppQuestions">
		   <cfset Session.AppQuestions[CurrentRow]=questionText>
		</cfloop>
		
		<cfif PDSApp.recordcount EQ 1>
			<!--- A record exists for this applicant.  Retrieve their previous answers --->
			<cfset Session.RecordExists = True>
			<cfset Session.Answer1 = PDSApp.Answer1>
			<cfset Session.Answer2 = PDSApp.Answer2>
			<cfset Session.Answer3 = PDSApp.Answer3>
			<cfset Session.Answer4 = PDSApp.Answer4>
			<cfset Session.Answer5 = PDSApp.Answer5>
			<cfset Session.Answer6 = PDSApp.Answer6>
			<cfset Session.Answer7 = PDSApp.Answer7> 
		
			<!--- Check to see if the form was already submitted.  If so, all answers are read only --->
			<cfif PDSApp.submitted EQ True>
				<cfset Session.ApplicationSubmitted = True>
			<cfelse>
				<cfset Session.ApplicationSubmitted = False>	
			</cfif>
		<!--- The user has no existing record.  We will need to create one. --->
		<cfelse>
			<cfset Session.RecordExists = False>
		</cfif>
	
	<!--- the user has just logged in successfully.  Take them to the main form --->
	<cflocation url="PDS.cfm" addtoken="yes">
	</cfif>
<cfelse>
  <!---  CGI variable does not exist - User cannot be logged in --->
</cfif>
<!--- This will only be displayed if the user is not in the preapplication table. --->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login Form</title>
</head>

<body>

<p>Invalid Login!</p>
<!--- for testing only -- remove --->
<cfif Session.PSUID Eq "JEB6">
<cfdump expand="yes" var="#session#" >
</cfif>
</body>
</html>
