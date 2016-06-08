<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<!--- Don't show debugging output, and allow non-CF output --->
<cfsetting showdebugoutput="Yes" enablecfoutputonly="No">

<!--- Enable session variables --->
<cfapplication name="RHSInternships" sessionmanagement="yes" sessiontimeout="#CreateTimeSpan(0, 2, 0, 0)#">

<!--- Data source  --->
<cfset Session.DSN = "InternDB_v2">
