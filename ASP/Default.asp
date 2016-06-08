<%@ Language=VBScript %>
<% 

'Response.Redirect "http://www.ed.psu.edu"
'Response.write "hello"
'Response.End
'Response.Write(session("ID"))
'Response.Write(Request.ServerVariables("SERVER_NAME"))
'Response.End
 %>
<%If isempty(session("ID")) then 
     
    If NOT instr(Request.ServerVariables("SERVER_NAME"), "secure.ed.psu.edu") then
        
        Response.Redirect"https://ed.psu.edu/internships/maintenance/logon.asp"
    End If                   
End IF
Response.Buffer = True%>
<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft FrontPage 4.0">
<title></title>
</head>
<body BGCOLOR="#FFFFFF" TEXT="#000080">
<IMG BORDER="0" SRC="/COEimages/coe_wordmark.gif">
<table border="0" width="100%" height="100%">
  <tr>
    <td width="100%" height="110" align="middle">
      <P ALIGN="center"><B>
      <FONT COLOR="#000080" SIZE="4">Intern Information Pages</FONT>
      </B></P>
      <P>
      <FONT COLOR="#000080" SIZE="4"><B>&nbsp;</B></FONT>
      </P>
      <P><A href="/Internships/Maintenance/inter_en.asp"><B>
      <FONT COLOR="#000080" SIZE="4">Enter Data</FONT>
      </B></A></P>
      <P><B>
      <FONT COLOR="#000080" SIZE="4">&nbsp;&nbsp;<A href="internsort.asp">Edit/Delete Data<br></A></FONT>
      </B></P>
      </td>
  </tr>
  <tr>
    <td width="100%"><!-- VI6.0LAYOUT = "Top and Bottom 1"-->
    </td>
  </tr>
  <tr>
    <td width="100%" height="80">
  </td>
  </tr>
</table></body>
</html>
