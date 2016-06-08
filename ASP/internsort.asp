<script type="text/javascript" >
    //window.location = "https://www.ed.psu.edu/internships/Maintenance/Internedita.asp?which=466"
    function editRecord(ID) {
        URL="/internships/Maintenance/internedita.asp?which="+ID
        window.location = URL;
        return false;
        
	}  
	function deleteRecord(ID) {
        URL="/internships/Maintenance/InternDelete.asp?which="+ID
	if (confirm("Press OK to delete the record! Press Cancel to do nothing.  Deleting cannot be undone!")){
		window.location = URL;
	}else{console.log('failed to send')}
	return false;
	}  
</script>
<%@ Language=VBScript %>
<%If isempty(session("ID")) then 
Response.Redirect"logon.asp"
End IF
Response.Buffer = True%>
<html>
<head><title>internSort</title>
</head>
<body bgcolor="#FFFFFF" text="#000080">
<img border="0" src="/COEimages/coe_wordmark.gif">
<%Dim DataConnection, cmdDC, RecordSet
Dim SearchText
set conntemp=server.createobject("adodb.connection")
conntemp.open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;"

SQL = "SELECT * FROM view_internedit order by Facility ASC;"

set rstemp=conntemp.execute(SQL)

If Request.Form("btnFAC") = "A-Z" Then

	SQL = "SELECT * FROM view_internedit order by Facility ASC;"

End If
If Request.Form("btnFAC") = "Z-A" Then

	SQL = "SELECT * FROM view_internedit order by Facility DESC;"

End If
Set rstemp=conntemp.execute(SQL)%>
<form name="thisForm" action="/internships/maintenance/internsort.asp" method="post">
<p align="center">
<font color="#000080" size="4"><b>Intern Data Editing/Deletion<br><br>
****Warning: Delete is instant and undoable!****</b></font>
<table border="1" cellpadding="0" cellspacing="1" width="614">
 <tr><td width="43"></td><td width="50"></td><td align="center" width="24"><b>ID #</b></td>
  <td align="center" width="72"><b>Agency</b></td>
  <td align="center" width="45"><b>Street</b></td>
  <td align="center" width="30"><b>City</b></td>
  <td align="center" width="39"><b>State</b></td>
  <td align="center" width="23"><b>Zip</b></td>
  <td align="center" width="56"><b>County</b></td>
  <td align="center" width="50"><b>Phone</b></td>
  <td align="center" width="42"><b>Email</b></td>
  <td align="center" width="88"><b>Supervisor Name</b></td>
  </tr>
  <tr>
  <td width="43">&nbsp;</td><td width="50">&nbsp;</td><td width="24">&nbsp;</td>
  <td align="center" width="72"><input type="submit" name="btnFAC" value="A-Z"><input type="submit" name="btnFAC" value="Z-A"></td>
  <td align="center" width="45">&nbsp;</td>
  <td align="center" width="30">&nbsp;</td>
  <td align="center" width="39">&nbsp;</td>
  <td align="center" width="23">&nbsp;</td>
  <td align="center" width="56">&nbsp;</td>
  <td align="center" width="50">&nbsp;</td>
  <td align="center" width="42">&nbsp;</td>
  <td align="center" width="88">&nbsp;</td>
  </tr>
 <% ' Now lets grab all the records
do while not rstemp.eof %>
<tr>

<td valign="top" width="43">
  <button onclick="return editRecord(<%=rstemp("ID")%>)">
<b>
  <font color="#000080">Edit</font>
  </b>
  </button>
</td>
<td valign="top" width="50">
  <button onclick="return deleteRecord(<%=rstemp("ID")%>)">
<b>
  <font color="#000080">Delete</font>
  </b>
  </button>
</td>
<% for i = 0 to 9%>
    <td valign="top" width="24"><% = rstemp.fields(i).value %>&nbsp;</td>
<% next %>
</tr>
<%
rstemp.movenext
loop
rstemp.close
set rstemp=nothing
conntemp.close
set conntemp=nothing
%>

</table>
</form>
<center><a href="/Internships/Maintenance/Default.asp"><b>
<font color="#000080" size="4">HOME</font>
</b></a></center>
</body>
</html>