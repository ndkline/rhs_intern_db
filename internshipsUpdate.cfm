
<!---
    <cfquery datasource="travel" name="qInternships">
    SELECT *
    FROM internships
    <cfif IsDefined("url.internshipID")>
    	WHERE internshipID = #url.internshipID#
    <cfelse>
		<cfparam name="url.internshipID" default="1">
    </cfif>
    </cfquery>
--->
    <cfquery datasource="InternDB_v2" name="qInternships">
    SELECT *
    FROM intern
    <cfif IsDefined("url.ID")>
    	WHERE ID = #url.ID#
    <cfelse>
		<cfparam name="url.ID" default=1>
		WHERE ID = #url.ID#
    </cfif>
    </cfquery>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Internship Update</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper">
  	<!---<cfinclude template="header.cfm">--->
	<!---div id="navbar">
      <a href="index.cfm">
					home
				</a>
				<a href="internships.cfm">
					internships
				</a>
				<a href="countries.cfm">
					countries
				</a>
				<a href="aboutUs.cfm">
					about us
				</a>
				<a href="contactUs.cfm">
					contact us
				</a>
				<a href="search.cfm">
					search
				</a>
  	</div>--->
  	<div id="content">
       	<h1>Update an Internshipship</h1>
       	<p>Use the form below to update the&nbsp;RHS internshipship information. This form is specifically for updating existing internships. To add a new internship, go to the <a href="internshipsInsert.cfm">internships Insert page</a>.</p>
       	<cfform name="insertinternship" id="insertinternship">
       	  <fieldset>
       	    <p>
       	      <label for="ID"> Record ID Number:<cfoutput>#qInternships.ID#</cfoutput></label>
       	      <br />
       	     
   	        </p>
       	    <p>
       	      <label for="Facility">Agency<br />
   	          </label>
       	      <cfinput type="text" name="Facility" message="Please enter an Agency name" validateat="OnSubmit" required="yes" id="Facility"  value="#qInternships.Facility#" size = "100" maxlength = "255" >
   	        </p>
       	    <p>
       	      <label for="Street">Street</label>
       	      <br />
       	      <cfinput type="text" name="Street" message="Please enter the street where the agency is located." validateat="onSubmit" required="yes" id="Street" value="#qInternships.Street#" size="50" maxlength="255"> 
   	        </p>
       	    <p>
       	      <label for="City">City</label>
       	      <br />
       	      <cfinput type="text" name="City" message="Please enter the City where the agency is located." validateat="onSubmit" validate="noblanks" required="yes" id="City" value="#qInternships.City#" size="50" maxlength="255">
   	        </p>
       	    <p>
       	      <label for="State">State</label>
       	      <br />
			  <cfinput type="text" name="State" message="Please enter the state where the agency is located." validateat="onSubmit" required="yes" value="#qInternships.State#" size="3">
   	        </p>
   	        <p>
       	      <label for="Zip">Zip</label>
       	      <br />
       	      <cfinput type="text" name="ID" message="Please enter a zipcode where the agency is located." validateat="onSubmit" required="yes" id="Zip" value="#qInternships.Zip#" size="5" maxlength="10">
   	        </p>
       	    <p>
       	      <label for="County">County<br />
   	          </label>
       	      <cfinput name="County" required="yes" validateat="OnSubmit" message="Please enter the county where the agency is located" value="#qInternships.County#">
   	        </p>
       	    <p>
       	      <label for="Phone">Phone</label>
       	      <br />
       	      <cfinput type="text" name="Phone" message="Please enter the phone number for the agency." validateat="onSubmit" required="yes" id="Phone" value="#qInternships.Phone#" size="12" maxlength="12"> 
   	        </p>
       	    <p>
       	      <label for="Email">Email</label>
       	      <br />
       	      <cfinput type="text" name="Email" message="Please enter the email address for the agency." validateat="onSubmit" required="yes" id="Email" value="#qInternships.Email#" size="50" maxlength="50">
   	        </p>
       	    <p>
       	      <label for="URL">URL:</label>
       	      <br />
			  <cfinput type="text" name="URL" message="Please enter the URL for the agency's web page." validateat="onSubmit" required="no" value="#qInternships.URL#" size="50">
   	        </p>
   	        <p>
       	      <label for="Description">Description<br />
   	          </label>
       	      <cftextarea name="Description" cols="55" rows="4" label="Description" required="yes" validateat="OnSubmit" message="Please enter an internship description" enabled="no"><cfoutput>#qInternships.Description#</cfoutput></cftextarea>
   	        </p>
   	       
   	        
   	        
   	       <table >
   	        	
   	      
<TR>
<TD><p>Adolescents:<INPUT type="checkbox" id=checkboxAdolescents name=Adolescents value="1" <cfif #qInternships.Adolescents# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>MH:<INPUT type="checkbox" id=checkboxMH name=MH value="1" <cfif #qInternships.MH# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>MR:<INPUT type="checkbox" id=checkboxMR name=MR value="1" <cfif #qInternships.MR# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>D/A:<INPUT type="checkbox" id=checkboxD_A name=D_A value="1" <cfif #qInternships.D_A# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Children:<INPUT type="checkbox" id=checkboxChildren name=Children value="1" <cfif #qInternships.Children# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Corrections:<INPUT type="checkbox" id=checkboxCorrections name=Corerctions value="1" <cfif #qInternships.Corrections# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Student:<INPUT type="checkbox" id=checkboxStudent name=Student value="1" <cfif #qInternships.Student# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Elderly:<INPUT type="checkbox" id=checkboxElderly name=Elderly value="1" <cfif #qInternships.Elderly# is "True" >checked </cfif>/></p></TD>
</TR>

   	        	
   	        </table>
   	         <table >
   	        	
   	        
<TR>   	        <TD><p>VI:<INPUT type="checkbox" id=checkboxVI name=VI value="1" <cfif #qInternships.VI# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Rehab:<INPUT type="checkbox" id=checkboxRehab name=Rehab value="1" <cfif #qInternships.Rehab# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Adult:<INPUT type="checkbox" id=checkboxAdult name=Adult value="1" <cfif #qInternships.Adult# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>OT_PT:<INPUT type="checkbox" id=checkboxOT_PT name=OT_PT value="1" <cfif #qInternships.OT_PT# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Women:<INPUT type="checkbox" id=checkboxWomen name=Women value="1" <cfif #qInternships.Women# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Family:<INPUT type="checkbox" id=checkboxFamily name=Family value="1" <cfif #qInternships.Family# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Voc:<INPUT type="checkbox" id=checkboxVoc name=Voc value="1" <cfif #qInternships.Voc# is "True" >checked </cfif>/></p></TD>
</TR>
</table>
<table >

<tr>
	
</tr> <TR> 	        <TD><p>BV:<INPUT type="checkbox" id=checkboxBV name=BV value="1" <cfif #qInternships.BV# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Alternative_Education:<INPUT type="checkbox" id=checkboxAlternative_Education name=Alternative_Education value="1" <cfif #qInternships.Alternative_Education# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Private:<INPUT type="checkbox" id=checkboxPrivate name=Private value="1" <cfif #qInternships.Private# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Neuro:<INPUT type="checkbox" id=checkboxNeuro name=Neuro value="1" <cfif #qInternships.Neuro# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>CP:<INPUT type="checkbox" id=checkboxCP name=CP value="1" <cfif #qInternships.CP# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>Counseling:<INPUT type="checkbox" id=checkboxCounseling name=Counseling value="1" <cfif #qInternships.Counseling# is "True" >checked </cfif>/></p></TD>
   	        <TD><p>physical:<INPUT type="checkbox" id=checkboxphysical name=physical value="1" <cfif #qInternships.physical# is "True" >checked </cfif>/></p></TD>
</TR>
</table>
   	        
   	        


   	                      
   	        
   	        
   	        
   	        
       	    <p>
       	      <cfinput type="submit" name="updateInternship" value="Update internship" id="submit">
   	        </p>
   	      </fieldset>
   	  </cfform>
   	  
   	  	<cfif IsDefined("form.updateInternship")>
			<cfset mealsincluded = #numberformat(form.meals)#>
	   	  	<cfquery datasource="travel">
				UPDATE internships
				SET Facility = <cfqueryparam  value="#form.Facility#" CFSQLType="CF_SQL_VARCHAR">,
					Street = <cfqueryparam  value="#form.Street#" CFSQLType="CF_SQL_INTEGER">, 
					City = <cfqueryparam  value="#form.City#" CFSQLType="CF_SQL_INTEGER">
					State = <cfqueryparam  value="#form.State#" CFSQLType="CF_SQL_VARCHAR">,
					Zip = <cfqueryparam  value="#form.Zip#" CFSQLType="CF_SQL_INTEGER">, 
					County = <cfqueryparam  value="#mealsincluded#" CFSQLType="CF_SQL_INTEGER">, 
					Phone = <cfqueryparam  value="#form.City#" CFSQLType="CF_SQL_INTEGER">
					Facility = <cfqueryparam  value="#form.Facility#" CFSQLType="CF_SQL_VARCHAR">,
					Phone = <cfqueryparam  value="#form.Phone#" CFSQLType="CF_SQL_INTEGER">, 
					City = <cfqueryparam  value="#form.City#" CFSQLType="CF_SQL_INTEGER">
					State = <cfqueryparam  value="#form.State#" CFSQLType="CF_SQL_VARCHAR">,
					Zip = <cfqueryparam  value="#form.Zip#" CFSQLType="CF_SQL_INTEGER">, 
					County = <cfqueryparam  value="#form.County#" CFSQLType="CF_SQL_INTEGER">, 
					Phone = <cfqueryparam  value="#form.Phone#" CFSQLType="CF_SQL_INTEGER">
					Adolescents = <cfqueryparam value="#form.Adolescents#" CFSQLType="cf_sql_bit" >,
					MH = <cfqueryparam value="#form.MH#" CFSQLType="cf_sql_bit" >,
					MR = <cfqueryparam value="#form.MR#" CFSQLType="cf_sql_bit" >,
					D_A = <cfqueryparam value="#form.D_A#" CFSQLType="cf_sql_bit" >,
					Children = <cfqueryparam value="#form.Children#" CFSQLType="cf_sql_bit" >,
					Corrections = <cfqueryparam value="#form.Corrections#" CFSQLType="cf_sql_bit" >,
					Student = <cfqueryparam value="#form.Student#" CFSQLType="cf_sql_bit" >,
					Elderly = <cfqueryparam value="#form.Elderly#" CFSQLType="cf_sql_bit" >,
					VI = <cfqueryparam value="#form.VI#" CFSQLType="cf_sql_bit" >,
					Rehab = <cfqueryparam value="#form.Rehab#" CFSQLType="cf_sql_bit" >,
					Adult = <cfqueryparam value="#form.Adult#" CFSQLType="cf_sql_bit" >,
					OT_PT = <cfqueryparam value="#form.OT_PT#" CFSQLType="cf_sql_bit" >,
					Women = <cfqueryparam value="#form.Women#" CFSQLType="cf_sql_bit" >,
					Family = <cfqueryparam value="#form.Family#" CFSQLType="cf_sql_bit" >,
					Voc = <cfqueryparam value="#form.Voc#" CFSQLType="cf_sql_bit" >,
					BV = <cfqueryparam value="#form.BV#" CFSQLType="cf_sql_bit" >,
					Alternative_Education = <cfqueryparam value="#form.Alternative_Education#" CFSQLType="cf_sql_bit" >,
					Private = <cfqueryparam value="#form.Private#" CFSQLType="cf_sql_bit" >,
					Neuro = <cfqueryparam value="#form.Neuro#" CFSQLType="cf_sql_bit" >,
					CP = <cfqueryparam value="#form.CP#" CFSQLType="cf_sql_bit" >
					Counseling = <cfqueryparam value="#form.Counseling#" CFSQLType="cf_sql_bit" >
					physical = <cfqueryparam value="#form.physical#" CFSQLType="cf_sql_bit" >
					supervisor = <cfqueryparam  value="#form.supervisor#" CFSQLType="CF_SQL_VARCHAR">,
					Description = <cfqueryparam  value="#form.Description#" CFSQLType="CF_SQL_VARCHAR">
					
				WHERE internshipID = <cfqueryparam  value="#url.internshipID#" CFSQLType="CF_SQL_INTEGER">
				
			</cfquery>
			<cflocation url="internshipsListing.cfm">
		 </cfif>
		<!---
		<cfform name="insertinternship" id="insertinternship">
       	  <fieldset>
       	    <p>
       	      <label for="ID">internship Name</label>
       	      <br />
       	      <cfinput type="text" name="ID" message="Please enter a internship name." validateat="onSubmit" required="yes" id="ID" value="" size="60">
   	        </p>
       	    <p>
       	      <label for="Facility">internship Description<br />
   	          </label>
       	      <cftextarea name="Facility" cols="55" rows="4" label="internship Description" required="yes" validateat="OnSubmit" message="Please enter a internship description" enabled="no"></cftextarea>
   	        </p>
       	    <p>
       	      <label for="Street">internship Length</label>
       	      <br />
       	      <cfinput type="text" name="Street" message="Please enter an the total length of the internship in days." validateat="onSubmit" required="yes" id="Street" value="" size="2" maxlength="10"> Days
   	        </p>
       	    <p>
       	      <label for="City">Country ID</label>
       	      <br />
       	      <cfinput type="text" name="City" message="Please enter the country id." validateat="onSubmit" validate="noblanks" required="yes" id="City" value="" size="3" maxlength="10">
   	        </p>
       	    <p>
       	      <label for="mealsincluded">Meals Included?</label>
       	      <br />
			  <cfinput type="text" name="meals" validateat="onSubmit" required="yes" value="" size="3">
   	        </p>
       	    <p>
       	      <cfinput type="submit" name="insertinternship" value="Insert internship" id="submit">
   	        </p>
   	      </fieldset>
   	  </cfform>
   	  
   	 ******************************************************************
   	 below is the update form in its completed code for comparison
   	 ******************************************************************
		<cfform name="insertinternship" id="insertinternship">
       	  <fieldset>
       	    <p>
       	      <label for="ID">internship Name</label>
       	      <br />
       	      <cfinput type="text" name="ID" message="Please enter a internship name." validateat="onSubmit" required="yes" id="ID" value="#qInternships.ID#" size="60">
   	        </p>
       	    <p>
       	      <label for="Facility">internship Description<br />
   	          </label>
       	      <cftextarea name="Facility" cols="55" rows="4" label="internship Description" required="yes" validateat="OnSubmit" message="Please enter a internship description" enabled="no"><cfoutput>#qInternships.Facility#</cfoutput></cftextarea>
   	        </p>
       	    <p>
       	      <label for="Street">internship Length</label>
       	      <br />
       	      <cfinput type="text" name="Street" message="Please enter an the total length of the internship in days." validateat="onSubmit" required="yes" id="Street" value="#qInternships.Street#" size="2" maxlength="10"> Days
   	        </p>
       	    <p>
       	      <label for="City">Country ID</label>
       	      <br />
       	      <cfinput type="text" name="City" message="Please enter the country id." validateat="onSubmit" validate="noblanks" required="yes" id="City" value="#qInternships.City#" size="3" maxlength="10">
   	        </p>
       	    <p>
       	      <label for="mealsincluded">Meals Included?</label>
       	      <br />
			  <cfinput type="text" name="meals" validateat="onSubmit" required="yes" value="#yesnoFormat(qInternships.MEALSINCLUDED)#" size="3">
   	        </p>
       	    <p>
       	      <cfinput type="submit" name="insertinternship" value="Insert internship" id="submit">
   	        </p>
   	      </fieldset>
   	  </cfform>
   	  --->
  	</div>
  	<cfinclude template="footer.cfm">
</div>
</body>
</html>