<%@ Language=VBScript %>
<%If isempty(session("ID")) then 
Response.Redirect"logon.asp"
End IF
Response.Buffer = True%>
<html>
<body BGCOLOR="#FFFFFF" TEXT="#000080">
<IMG BORDER="0" SRC="/COEimages/coe_wordmark.gif">
<form name="thisForm" METHOD="post">
<% On Error Resume Next
IDS = request.querystring("which")%>
<%if IDS = " " then Response.Redirect "/internships/maintenance/internsort.asp"%>
<%
Dim ConnTemp
Dim mySQL
set conntemp=server.createobject("adodb.connection")
conntemp.open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;" 
mySQL="DELETE FROM intern where id="&IDS
ConnTemp.Execute mySQL
Response.Redirect  "/internships/maintenance/internsort.asp"
%>
</FORM>

