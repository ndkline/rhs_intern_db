<%@ Language=VBScript %>
<%if isempty(Request.ServerVariables("REMOTE_USER")) then 
Session("NumAttempts") = 1
TheMessage = "Please log in below:"
else
	set conn = server.createobject ("adodb.connection")
	conn.open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;" 
	Set RSlogin = conn.Execute("Select ID, UserID,Password from Users where "&"UserID ='" & Request.ServerVariables("REMOTE_USER") &"'")
	if RSLogin.EOF then
		Session("NumAttempts") = Session("NumAttempts") + 1
		if Application("NumAttempts") = 0 then
			TheMessage = "Login not found.  If you think you should be able to login, please contact Dr. Jim Herbert at 814-863-3421 or jth4@psu.edu"
		elseif Session("NumAttempts") > Application("NumAttempts") then
			TheMessage = "Log In not found. No more attempts allowed."
		else
			TheMessage = "Log In not found, please try again:"
		end if
	else
		Session("ID") = RSLogin("ID")
		Session("Name") = RSLogin("UserID")
		Response.Redirect "https://ed.psu.edu/internships/maintenance/Default.asp"
	end if
end if
%>
<html>
<head>

<title></title>

</head>

<body bgcolor="#FFFFFF" text="#000080">
<img border="0" src="/COEimages/coe_wordmark.gif">
  <table border="0" cellspacing="0" cellpadding="0" width="650">
   <tr valign="top" align="left">
	<td width="600">
      <h2 align=center>
      <font color="#000080">Welcome to the College of Education<br>
      Intern&nbsp;Database&nbsp;Site</font>
      </h2></td>
   </tr>
  </table>
  <table border="0" cellspacing="0" cellpadding="0" width="650">
   <tr valign="top" align="left">
	<td></td>
	<td width="562"><p><font size="+1" face="Tahoma, Bell Centennial"><% response.write TheMessage %></font></p></td>
	<td></td>
   </tr>
  </table>
 <%
 if TheMessage <> "Log In not found. No more attempts allowed." then
 %>

<%
end if
%>
<p class="MsoNormal" align="center" style="TEXT-ALIGN: center">
<font color="#000080"><b>2000 The
Pennsylvania State University<br>
College of Education</b></font>
  </p>
</body>
</html>
