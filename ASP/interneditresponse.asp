<%@ Language=VBScript %>
<html>
<body bgcolor="#FFFFFF" text="#000080">
<img border="0" src="/COEimages/coe_wordmark.gif">
<%
IDS = request.form("IDS")%>
<%dim objRec
  Set objConn = Server.CreateObject ("ADODB.Connection")
  Set objRec = Server.CreateObject ("ADODB.Recordset")
  objConn.Open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;"
  SQL="Select * from Intern where id ="& IDS
  objRec.Open SQL,objConn,1,2 
  objRec("Facility") = Request("Facility")
  objRec("Street") = Request("Street")
  objRec("City") = (request("City"))
  objRec("STATE") = (Request("STATE"))
  objRec("Zip") = (Request("Zip"))
  objRec("County") = Request("County")
  objRec("Phone") = Request("Phone")
  objRec("Email") = Request("Email")
  objRec("URL") = Request("URL")
  objRec("Supervisor") = Request("Supervisor")
  objRec("Description") = Request("Description")
    If Request("Adolescents")="1" then objRec("Adolescents") = "1" else objRec("Adolescents")= "0" End If
  If Request("MH")="1" then objRec("MH") = "1" else objRec("MH")= "0" End If
  If Request("MR")="1" then objRec("MR") = "1" else objRec("MR")= "0" End If
  If Request("D_A")="1" then objRec("D_A") = "1" else objRec("D_A")= "0" End If
 If Request("Children")="1" then objRec("Children") = "1" else objRec("Children")= "0" End If
 If Request("Corrections")="1" then objRec("Corrections") = "1" else objRec("Corrections")= "0" End If
 If Request("Student")="1" then objRec("Student") = "1" else objRec("Student")= "0" End If
If Request("Elderly")="1" then objRec("Elderly") = "1" else objRec("Elderly")= "0" End If
If Request("VI")="1" then objRec("VI") = "1" else objRec("VI")= "0" End If
If Request("Rehab")="1" then objRec("Rehab") = "1" else objRec("Rehab")= "0" End If
If Request("adult")="1" then objRec("adult") = "1" else objRec("adult")= "0" End If
If Request("OT_PT")="1" then objRec("OT_PT") = "1" else objRec("OT_PT")= "0" End If
If Request("Women")="1" then objRec("Women") = "1" else objRec("Women")= "0" End If
If Request("Family")="1" then objRec("Family") = "1" else objRec("Family")= "0" End If
If Request("Voc")="1" then objRec("Voc") = "1" else objRec("Voc")= "0" End If
If Request("BV")="1" then objRec("BV") = "1" else objRec("BV")= "0" End If
If Request("Alternative_Education")="1" then objRec("Alternative_Education") = "1" else objRec("Alternative_Education")= "0" End If
If Request("Private")="1" then objRec("Private") = "1" else objRec("Private")= "0" End If
If Request("Neuro")="1" then objRec("Neuro") = "1" else objRec("Neuro")= "0" End If
If Request("CP")="1" then objRec("CP") = "1" else objRec("CP")= "0" End If
If Request("Counseling")="1" then objRec("Counseling") = "1" else objRec("Counseling")= "0" End If
If Request("physical")="1" then objRec("physical") = "1" else objRec("physical")= "0" End If
objRec.update 
set objRec = Nothing
objconn.Close
set objconn=nothing
%>    
<center><h4>Update Completed!</h4></center>
<p><center><a href="/Internships/Maintenance/internedita.asp">
<font color="#000080" size="4"><b>Back to Editing Page</b></font>
</a></p>
<p><a href="/Internships/Maintenance/Default.asp">
<font color="#000080" size="4"><b>Home</b></font>
</a></Center></p>             
</body>
</html>
