   <%@ Language=VBScript %>
<%If isempty(session("ID")) then 
Response.Redirect"logon.asp"
End IF
Response.Buffer = True%>
<%Dim ConnTemp
Dim SearchText
Dim CurrenthourlyRate 
set conntemp=server.createobject("adodb.connection")
conntemp.open "FILEDSN=C:\Program Files\Common Files\ODBC\Data Sources\internDB.dsn;" 
If request.querystring("which") = "" then
Response.Write "<STRONG>YOU MUST USE THE SORT PAGE TO GET HERE!!!!</STRONG>"
Response.Redirect "/internships/Maintenance/internSort.asp"
else
IDS = request.querystring("which")
sqltemp="select * from intern"
End IF
sqltemp=sqltemp & " where ID = " & IDS
set rstemp = conntemp.execute (sqltemp)
ID = rstemp("ID") 
Facility = rstemp("Facility")
Supervisor = rstemp("Supervisor")
Street = rstemp("Street")
City = rstemp("City")
State = rstemp ("State")
Zip = rstemp("Zip")
County = rstemp("County")
Phone = rstemp("Phone")
Email = rstemp("Email")
URL = rstemp("URL")
Adolescents= rstemp("Adolescents")
MH= rstemp("MH")
MR= rstemp("MR")
D_A = rstemp("D_A")
Children = rstemp("Children")
Corrections = rstemp("Corrections")
Student = rstemp("Student")
Elderly = rstemp("Elderly")
VI = rstemp("VI")
Counseling = rstemp("Counseling")
Rehab = rstemp("Rehab")
Adult = rstemp("Adult")
OT_PT = rstemp("OT_PT")
Women = rstemp("Women")
Family = rstemp("Family")
VOC = rstemp("VOC")
BV = rstemp("BV")
Alternative_Education = rstemp("Alternative_Education")
[Private] = rstemp("private")
Neuro=rstemp("Neuro")
Physical = rstemp("physical")
CP=rstemp("CP")
Description = rstemp("Description")
rstemp.close 
set rstemp=nothing
conntemp.close
set conntemp=nothing
%>
<HTML>
<form name="Intern Edit" action="/internships/Maintenance/interneditresponse.asp" method="post">
<input type="hidden" name="IDS" value="<%=IDS%>">
<META content="MSHTML 5.00.3018.900" name=GENERATOR></HEAD>
<body BGCOLOR="#FFFFFF" TEXT="#000080">
<IMG BORDER="0" SRC="/COEimages/coe_wordmark.gif">
<P> Record ID Number:<%=IDS%>
<p> Agency: <input name="Facility" value="<%=Facility%>">&nbsp; Street: <input name="Street" value="<%=Street%>"></p>
<p> City: <input name="City" value="<%=City%>">&nbsp;State: <input name="State" value="<%=State%>">&nbsp;Zip: <input name="Zip" value="<%=Zip%>"></p>   
<p> County: <input name="County" value="<%=County%>">&nbsp; Phone:<input name="Phone" value="<%=Phone%>">&nbsp; Email:<input name="Email" value="<%=Email%>">&nbsp;</p>
<p> URL: <input name="URL" value="<%=URL%>"></p>
<P> Description: <br/><textarea id=TEXTAREA2 name=Description rows=10 cols=150><%=Description%></textarea></p>
<P>Adlolescents:<INPUT type="checkbox" id=checkboxAdolescents name=Adolescents value="1" <% if Adolescents = "True" then%>CHECKED<%End IF%>> 
MH:<INPUT type="checkbox" id=checkboxMH name=MH value="1" <% if MH = "True" then%>CHECKED<%End IF%>>MR:<INPUT type="checkbox" id=checkboxMR name=MR value="1" <% if MR = "True" then%>CHECKED<%End IF%>> 
D/A:<INPUT type="checkbox" id=checkboxD_A name=D_A value="1" <% if D_A = "True" then%>CHECKED<%End IF%>> 
Children:<INPUT type="checkbox" id=checkboxChildren name=Children value="1" <% if Children = "True" then%>CHECKED<%End IF%>> 
Corrections:<INPUT type="checkbox" id=checkboxCorrections name=Corrections value="1" <% if Corrections = "True" then%>CHECKED<%End IF%>> 
Student:<INPUT type="checkbox" id=checkboxStudent name=Student value="1" <% if Student = "True" then%>CHECKED<%End IF%>>
Elderly:<INPUT type="checkbox" id=checkboxElderly name=Elderly value="1" <% if Elderly = "True" then%>CHECKED<%End IF%>>
</P><P>VI:<INPUT type="checkbox" id=checkboxVI name=VI value="1" <% if VI = "True" then%>CHECKED<%End IF%>>
Rehab:<INPUT type="checkbox" id=checkboxRehab name=Rehab value="1" <% if Rehab = "True" then%>CHECKED<%End IF%>>
Adult:<INPUT type="checkbox" id=checkboxAdult name=Adult value="1" <% if Adult = "True" then%>CHECKED<%End IF%>>
OT/PT:<INPUT type="checkbox" id=checkboxOT_PT name=OT_PT value="1" <% if OT_PT = "True" then%>CHECKED<%End IF%>>
Women:<INPUT type="checkbox" id=checkboxWomen name=Women value="1" <% if Women = "True" then%>CHECKED<%End IF%>>
</P><P>Family:<INPUT type="checkbox" id=checkboxFamily name=Family value="1" <% if Family = "True" then%>CHECKED<%End IF%>>
VOC:<INPUT type="checkbox" id=checkboxVOC name=VOC value="1" <% if VOC = "True" then%>CHECKED<%End IF%>>
BV:<INPUT type="checkbox" id=checkboxBV name=BV value="1" <% if BV = "True" then%>CHECKED<%End IF%>>
Alternative Educcation:<INPUT type="checkbox" id=checkboxAlternative_Educcation name=Alternative_Educcation value="1" <% if Alternative_Educcation = "True" then%>CHECKED<%End IF%>>
Private:<INPUT type="checkbox" id=checkboxPrivate name=Private value="1" <% if [Private] = "True" then%>CHECKED<%End IF%>>
Counseling:<INPUT type="checkbox" id=checkboxGeneral name=Counseling value="1" <% if Counseling = "True" then%>CHECKED<%End IF%>>
Neuro:<INPUT type="checkbox" id=checkboxNeuro name=Neuro value="1" <% if Neuro = "True" then%>CHECKED<%End IF%>>
Physical:<INPUT type="checkbox" id=checkboxPhysical name=Physical value="1" <% if Physical = "True" then%>CHECKED<%End IF%>>
CP:<INPUT type="checkbox" id=checkboxCP name=CP value="1" <% if CP = "True" then%>CHECKED<%End IF%>>
</P>
<P> Supervisor Name: <input name="Supervisor" value="<%=Supervisor%>">&nbsp; </P>
<p><input Type="submit" id="Submit1" name="Submit1" value="Submit Update">
<p></p>
<br><Center><A HREF="/internships/Maintenance/Default.asp">HOME</A></Center>
<p></FORM></p></TD></TR></TABLE></BODY></HTML>






