<%@ Language=VBScript %>
<html>
<body bgcolor="#FFFFFF" text="#000080">
<img border="0" src="/COEimages/coe_wordmark.gif">
<%
Dim sqlstmt
IDS = request.form("IDS")%>
<%Facility = request.form("Facility")
Street = request.form("Street")
City = request.form("City")
State = request.form ("State")
Zip = request.form("Zip")
County = request.form("County")
Phone = request.form("Phone")
Email = request.form("Email")
URL = request.form("URL")
Adolescents= request.form("Adolescents")%>
<%MH = request.form("MH")
MR = request.form("MR")
D_A = request.form("D_A")
Children = request.form("Children")
Corrections = request.form("Corrections")
Student = request.form("Student")
Elderly = request.form("Elderly")
VI = request.form("VI")
Counseling = request.form("Counseling")
Rehab = request.form("Rehab")
Adult = request.form("Adult")
OT_PT = request.form("OT_PT")
Women = request.form("Women")
Family = request.form("Family")
VOC = request.form("VOC")
BV = request.form("BV")
Alternative_Education = request.form("Alternative_Education")
[Private] = request.form("private")
Neuro=request.form("Neuro")
Physical = request.form("Physical")
CP=request.form("CP")
Description = request.form("Description")
Set Conn = Server.CreateObject("ADODB.Connection")
conn.open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;"

<%dim objRec
  Set objConn = Server.CreateObject ("ADODB.Connection")
  Set objRec = Server.CreateObject ("ADODB.Recordset")
  objConn.Open "DSN=ERC"
  SQL="Select * from Intern where id ="& IDS
  objRec.Open SQL,objConn,1,2 
  objRec("Facility") = Request("Facility")
  objRec("Street") = Request("Street")
  objRec("Descriptive_Title") = (request("Descriptive_Title"))
  objRec("Submitter_Name") = (Request("Submitter_Name"))
  objRec("School_District") = (Request("School_District"))
  objRec("Email_Address") = Request("Email_Address")
  objRec("Phone#") = Request("Phone")
  objRec("Phone_Ext") = Request("Phone_Ext")
  objRec.update 
  objRec.MoveLast
  ID=objRec("ID")
  set objRec = Nothing







SQLstmt = "UPDATE Intern SET "
SQLStmt = SQLstmt & "Facility ='" &"Facility"& "',"  
SQLStmt = SQLstmt & "Description ='" & Description & "',"  
SQLstmt = SQLstmt & "Street ='" & Street & "',"
SQLstmt = SQLstmt & "City ='" & City & "',"  
SQLstmt = SQLstmt & "Email ='" & Email& "'," 
SQLstmt = SQLstmt & "State ='" & State & "'," 
SQLstmt = SQLstmt & "Zip ='" & Zip & "'," 
SQLstmt = SQLstmt & "County ='" & County & "',"
SQLstmt = Sqlstmt & "Phone ='" & Phone & "',"
SQLstmt = Sqlstmt & "URL ='" & URL & "',"
SQLstmt = Sqlstmt & "Adolescents ='" & Adolescents& "',"
SQLstmt = Sqlstmt & "MH ='" & MH & "',"
SQLstmt = Sqlstmt & "MR ='" & MR & "',"
SQLstmt = Sqlstmt & "D_A ='" & D_A & "',"
SQLstmt = Sqlstmt & "Children ='" & Children & "',"
SQLstmt = Sqlstmt & "Corrections ='" & Corrections & "',"
SQLstmt = Sqlstmt & "Student ='" & Student & "',"
SQLstmt = Sqlstmt & "Elderly ='" & Elderly & "',"
SQLstmt = Sqlstmt & "VI ='" & VI & "',"
SQLstmt = Sqlstmt & "Rehab ='" & Rehab & "',"
SQLstmt = Sqlstmt & "Adult ='" & Adult & "',"
SQLstmt = Sqlstmt & "OT_PT ='" & OT_PT & "',"
SQLstmt = Sqlstmt & "Women ='" & Women & "',"
SQLstmt = Sqlstmt & "Family ='" & Family & "',"
SQLstmt = Sqlstmt & "VOC ='" & VOC & "',"
SQLstmt = Sqlstmt & "BV ='" & BV & "',"
SQLstmt = Sqlstmt & "Alternative_Education ='" & Alternative_Education & "',"
SQLstmt = Sqlstmt & "Private ='" & [Private] & "',"
SQLstmt = Sqlstmt & "Counseling ='" & Counseling & "',"
SQLstmt = Sqlstmt & "Neuro ='" & Neuro & "',"
SQLstmt = Sqlstmt & "Physical ='" & physical & "',"
SQLstmt = Sqlstmt & "CP ='" & CP & "'"
SQLStmt = SQLStmt & "WHERE ID = "&IDS 
Set RS = Conn.Execute(SQLStmt)
If err.number>0 then
   response.write "VBScript Errors Occured:" & "<P>"
   response.write "Error Number=" & err.number & "<P>"
   response.write "Error Descr.=" & err.description & "<P>"
   response.write "Help Context=" & err.helpcontext & "<P>" 
   
   response.write "Help Path=" & err.helppath & "<P>"
   response.write "Native Error=" & err.nativeerror & "<P>"
   response.write "Source=" & err.source & "<P>"
   response.write "SQLState=" & err.sqlstate & "<P>"
end if
IF conn.errors.count>0 then
   response.write "Database Errors Occured" & "<P>"
   response.write SQLstmt & "<P>"
for counter= 0 to conn.errors.count
   response.write "Error #" & conn.errors(counter).number & "<P>"
   response.write "Error desc. -> " & CONN.Errors(COUNTER).Description & "<P>"
Next
else
   response.write "<B> No Errors Reported. Intern record was updated!</b>"
End If
set re=nothing
conn.Close
set conn=nothing
%>    

<p><center><a href="/Internships/Maintenance/internedita.asp">
<font color="#000080" size="4"><b>Back to Editing Page</b></font>
</a></p>
<p><a href="/Internships/Maintenance/Default.htm">
<font color="#000080" size="4"><b>Home</b></font>
</a></Center></p>             
</body>
</html>
