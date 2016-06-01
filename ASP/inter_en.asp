<%@ Language=VBScript %>
<%If isempty(session("ID")) then 
Response.Redirect"logon.asp"
End IF
Response.Buffer = True%>
<html>
<body bgcolor="#ffffff" text="#000080">
<img border="0" src="/COEimages/coe_wordmark.gif">
<% If Request("Facility") = "" Then%>
<form method = "post" action = "/Internships/Maintenance/Inter_en.asp">
<center><font size=4 color="#000080"><b>Internship Database Data
Entry</b></font></center>
<p><b>
<font size="4">&nbsp;<font color=crimson>*</font></font>
</b>
<font color="#000080"><b>
<font size="4">Agency</font>
&nbsp;<br>
 <input id=text1 name=Facility ></b></font>
 </p>
<p>
<font color="#000080"><b>
<font size="4">Street&nbsp;</font>
<br>
<input id=text2 name=Street></b></font>
 </p>

<p><b>
<font color="#000080">
<font size="4">City</font>
<br>
<input id=text3a name=City>&nbsp;&nbsp;&nbsp;</font>
</b></p>

<p><b>
<font size="4" color="#ff0000">* </font>
<font color="#000080">
<font size="4">State</font>
<br>
<input id=text4a size=4 name=State>&nbsp;&nbsp;</font>
</b></p>

<p><b>
<font color="#000080">
<font size="4">Zip</font>
<br>
<input id=text4b name=Zip size=9>&nbsp;</font>
</b></p>

<p><b>
<font size="4" color="#ff0000">*</font>
<font color="#000080">
<font size="4">County</font>
<br>
<input id=text4c size=15 name=County>&nbsp;</font>
</b></p>

<p> 
<font color="#000080"><b>
<font size="4">Phone</font>
<br>
<input id=text5 size=16 name=Phone>&nbsp;&nbsp;</b></font>
</p>
<p> 
<font color="#000080"><b>
<font size="4">Email</font>
<br>
 <input name=email type="text" id=text6 size=25 maxlength="50"></b></font>
</p>
<p>
<font color="#000080"><b>
<font size="4">URL</font>
<br>
<input id=text7 size=25 name=URL></b></font>
</p>
<p><b>
<font size="4" color="#ff0000">&nbsp;*</font>
<font color="#000080">
<font size="4">Supervisor</font>
<br>
 <input id=text18a name=SN></font>
</b></p>
<p>
<font color="#000080"><b>
<font size="4">Description</font>
<br>
</b></font><textarea id=TEXTAREA2 name=Desc rows=10 cols=150></textarea></p>
<center><b>
<font size="4"><font color=crimson>* =<u>Mandatory Fields&nbsp;
</u></font><br><br>Disability Groups:</b>
<table cellspacing=1 cellpadding=1 width="567" align=center border=1>
    <tr>
    <td align=middle width="142">
      <font color="#000080" size="3"><b>Adolescents:</b></font>
    </td>
    <td align=middle width="56">
      <font color="#000080" size="3"><b><input id=checkbox1 type=checkbox name=Adolescents value="1"></b></font>
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Mental Health(MH)&nbsp;</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox2 type=checkbox name=MH value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>Drug and Alcohol (D/A)</b></font>
    </td>
    <td align=middle width="20"><input id=checkbox3 type=checkbox name=DA value=1></td></tr>
  <tr>
    <td align=middle width="142">
      <font color="#000080" size="3"><b>Children</b></font>
    </td>
    <td align=middle width="56">
      <font color="#000080" size="3"><b><input id=checkbox4 type=checkbox
       
      name=Children value=1></b></font>
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Corrections</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox5 type=checkbox
       
      name=Corrections value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>Student</b></font>
    </td>
    <td align=middle width="20"><input id=checkbox6 type=checkbox
       
      name=Student value=1></td></tr>
  <tr>
    <td align=middle width="142">
      <font color="#000080" size="3"><b>Elderly</b></font>
    </td>
    <td align=middle width="56">
      <font color="#000080" size="3"><b><input id=checkbox7 type=checkbox
       
      name=Elderly value=1></b></font>
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Visually Impared (VI)</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox8 type=checkbox
       
      name=VI value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>Counseling</b></font>&nbsp;
    </td>
    <td align=middle width="20"><input id=checkbox9 type=checkbox
       
      name=counseling value=1></td></tr>
  <tr>
    <td align=middle width="142">
      <font color="#000080" size="3"><b>Rehab</b></font>
    </td>
    <td align=middle width="56">
      <font color="#000080" size="3"><b><input id=checkbox10 type=checkbox
       
      name=Rehab value=1></b></font>
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Adult</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox11 type=checkbox
       
      name=Adult value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>OT/PT</b></font>
    </td>
    <td align=middle width="20"><input id=checkbox12 type=checkbox
       
      name=OT value=1></td></tr>
  <tr>
    <td align=middle width="142">
      <font color="#000080" size="3"><b>Women</b></font>
    </td>
    <td align=middle width="56">
      <font color="#000080" size="3"><b><input id=checkbox13 type=checkbox
       
      name=Women value=1></b></font>
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Family</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox14 type=checkbox
       
      name=Family value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>Vocational (VOC)</b></font>
    </td>
    <td align=middle width="20"><input id=checkbox15 type=checkbox
       
      name=VOC value=1></td></tr>
  <tr>
    <td align=middle width="142">
      <font color="#000080" size="3"><b>BV</b></font>
    </td>
    <td align=middle width="56">
      <font color="#000080" size="3"><b><input id=checkbox16 type=checkbox
       
      name=BV value=1></b></font>
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Alternative Education</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox17 type=checkbox
       
      name=AE value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>Private</b></font>
    </td>
    <td align=middle width="20"><input id=checkbox18 type=checkbox
       
      name=Private value=1></td></tr>
  <tr>
    <td align=middle width="142"><strong>Mental 
      Retardation(MR)</strong>
    </td>
    <td align=middle width="56"><input id=checkbox23 
      type=checkbox value=1 name=MR>&nbsp;
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Neuro</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox20 type=checkbox
       
      name=Neuro value=1></b></font>
    </td>
    <td align=middle width="126">
      <font color="#000080" size="3"><b>Physical</b></font>
    </td>
    <td align=middle width="20"><input id=checkbox21 type=checkbox
       
      name=Physical value=1></td></tr>
  <tr>
    <td align=middle width="142">
    </td>
    <td align=middle width="56">&nbsp;
    </td>
    <td align=middle width="140">
      <font color="#000080" size="3"><b>Cerebral Palsy (CP)</b></font>
    </td>
    <td align=middle width="43">
      <font color="#000080" size="3"><b><input id=checkbox22 type=checkbox name=CP value=1></b></font>
    </td>
    <td align=middle width="126"></td>
    <td align=middle width="20"></td></tr></table></center>
<center>&nbsp;</center>
<center><a
 href="/Internships/Maintenance/Default.asp"><b>
<font color="#000080" size="4">Home</font>
</b></a></center>
<center><input type=submit value=Submit id=submit1 name=submit1><input type=reset value=Reset id=reset1 name=reset1></center>
</form>
<center>
<%Else%>

<%dim objConn
  dim objRec
  Set objConn = Server.CreateObject ("ADODB.Connection")
  Set objRec = Server.CreateObject ("ADODB.Recordset")
  objConn.Open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;"
  objRec.Open "intern",objConn,1,2
  objRec.AddNew
  objRec("Facility") = Request("Facility")
  objRec("Street") = Request("Street")
  objRec("City") = Request.Form("City")
  objRec("State") = Request.Form("State")
  objRec("Zip") = Request.Form("Zip")
  objRec("County") = Request.Form("County")
  objRec("Phone") = Request.Form("Phone")
  objRec("email") = Request.Form("email")
  objRec("url") = Request.Form("url")
  %>
  <%If Request("Adolescents") <> 1 then objRec("Adolescents") = 0 else objRec("Adolescents") = 1 end if%>
  <%IF Request("MH") <> 1 then objRec ("MH") = 0 else objRec ("MH") = 1%>
  <%IF Request("MR") <> 1 then objRec ("MR") = 0 else objRec ("MR") = 1%>
  <%IF Request.Form("DA")<> 1 then objRec ("D_A") = 0 else objRec ("D_A") = 1%>
  <%IF Request.Form("Children")<> 1 then objRec ("Children") = 0 else objRec ("Children") = 1%>
  <%IF Request.Form("Corrections")<> 1 then objRec("Corrections")= 0 else objRec("Corrections") = 1%>
  <%IF Request.Form("Student")<> 1 then objRec ("Student") = 0 else objRec ("Student") = 1%>
  <%IF Request.Form("Elderly")<> 1 then objRec ("Elderly") = 0 else objRec ("Elderly") = 1%>
  <%IF Request.Form("VI")<> 1 then objRec ("VI") = 0 else objRec ("VI") = 1%>
  <%IF Request.Form("counseling")<> 1 then objRec ("counseling") = 0 else objRec ("counseling") = 1%>
  <%IF Request.Form("Rehab")<> 1 then objRec ("Rehab") = 0 else objRec ("Rehab") = 1%>
  <%IF Request.Form("Adult")<> 1 then objRec ("Adult") = 0 else objRec ("Adult") = 1%>
  <%IF Request.Form("OT")<> 1 then objRec ("OT_PT") = 0 else objRec ("OT_PT") = 1%>
  <%IF Request.Form("Women")<> 1 then objRec ("Women") = 0 else objRec ("Women") = 1%>
  <%IF Request.Form("Family")<> 1 then objRec ("Family") = 0 else objRec ("Family") = 1%>
  <%IF Request.Form("VOC")<> 1 then objRec ("VOC") = 0 else objRec ("VOC") = 1%>
  <%IF Request.Form("BV")<>1 then objRec("BV") = 0 else objRec ("BV") = 1%>
  <%IF Request.Form("AE")<> 1 then objRec ("Alternative_Education") = 0 else objRec ("Alternative_Education") = 1%>
  <%IF Request.Form("Private")<> 1 then objRec ("Private") = 0 else objRec ("Private") = 1%>
  <%IF Request.Form("Neuro")<> 1 then objRec ("Neuro") = 0 else objRec ("Neuro") = 1%>
  <%IF Request.Form("Physical")<> 1 then objRec ("physical") = 0 else objRec ("physical") = 1%>
  <%IF Request.Form("CP")<> 1 then objRec ("CP") = 0 else objRec ("CP") = 1%>
  <%objRec("Supervisor") = Request("SN")
  objRec("Description") = Request("Desc")
  objRec.Update
  set objRec = Nothing
  set objConn = Nothing
  If Err.number = 0 then %>
  </center>
<center>&nbsp;</center>
 <b>
 <font color="#000080" size="4">
  <center>The Database was updated<br>
<br><br>&nbsp;<a href="/Internships/maintenance/Default.asp">Home</a>&nbsp;</center>
<center>&nbsp;<a href="/Internships/maintenance/inter_en.asp">Add Another Record</a></center></font>
</b><center>&nbsp;</center>
<center>
<%Else%>
 <font color="#000080"><b>There was an error updating your record. 
Please select back on your browser and correct</b></font>
<font color=#ff0000>.
  <%End IF
  End IF%></font></center>
<center>&nbsp;</center>
</body>
</html>