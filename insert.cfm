<cfparam  default= 0 name="form.Adolescents" type="integer" >
<cfparam default= "0" name="form.MH" type="integer" >
<cfparam default= "0" name="form.MR" type="integer" >
<cfparam default= "0" name="form.D_A" type="integer" >
<cfparam default= "0" name="form.Children" type="integer" >
<cfparam default= "0" name="form.Corrections"  type="integer" >
<cfparam default= "0" name="form.Student" type="integer" >
<cfparam default= "0" name="form.Elderly" type="integer" >
<cfparam default= "0" name="form.VI" type="integer" >
<cfparam default= "0" name="form.Rehab" type="integer" >
<cfparam default= "0" name="form.Adult" type="integer" >
<cfparam default= "0" name="form.OT_PT" type="integer" >
<cfparam default= "0" name="form.Women" type="integer" >
<cfparam default= "0" name="form.Family" type="integer" >
<cfparam default= "0" name="form.Voc" type="integer" >
<cfparam default= "0" name="form.BV" type="integer" >
<cfparam default= "0" name="form.Alternative_Education" type="integer" >
<cfparam default= "0" name="form.Private" type="integer" >
<cfparam default= "0" name="form.Neuro" type="integer" >
<cfparam default= "0" name="form.CP" type="integer" >
<cfparam default= "0" name="form.Counseling" type="integer" >
<cfparam default= "0" name="form.physical" type="integer" >
<cfparam default= "" name="form.Description" type="string" >
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RHS Insert Recor</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper"> 
    <div id="content">
        <h1>Insert a New Internship</h1>
        <p>Use the form below to insert a new Internship into the RHS internship database. </p>
        <cfform name="insertinternship" id="insertinternship" method = "post"    >
        	
            <fieldset>
                <p>
                    <label for="Facility">Agency<br />
                    </label>
                    <cfinput type="text" name="Facility" message="Please enter an Agency name" validateat="OnSubmit" required="yes" id="Facility"   size = "100" maxlength = "255" >
                </p>
                <p>
                    <label for="Street">Street</label>
                    <br />
                    <cfinput type="text" name="Street" message="Please enter the street where the agency is located." validateat="onSubmit" required="yes" id="Street" size="50" maxlength="255">
                </p>
                <p>
                    <label for="City">City</label>
                    <br />
                    <cfinput type="text" name="City" message="Please enter the City where the agency is located." validateat="onSubmit" validate="noblanks" required="yes" id="City" size="50" maxlength="255">
                </p>
                <p>
                    <label for="State">State</label>
                    <br />
                    <cfinput type="text" name="State" message="Please enter the state where the agency is located." validateat="onSubmit" required="yes" size="3">
                </p>
                <p>
                    <label for="Zip">Zip</label>
                    <br />
                    <cfinput type="text" name="Zip" message="Please enter a zipcode where the agency is located." validateat="onSubmit" required="yes" id="Zip" size="5" maxlength="10">
                </p>
                <p>
                    <label for="County">County<br />
                    </label>
                    <cfinput name="County" required="yes" validateat="OnSubmit" message="Please enter the county where the agency is located">
                </p>
                <p>
                    <label for="Phone">Phone</label>
                    <br />
                    <cfinput type="text" name="Phone" message="Please enter the phone number for the agency." validateat="onSubmit" required="yes" id="Phone" size="12" maxlength="12">
                </p>
                <p>
                    <label for="Email">Email</label>
                    <br />
                    <cfinput type="text" name="Email" message="Please enter the email address for the agency." validateat="onSubmit" required="yes" id="Email" size="50" maxlength="50">
                </p>
                <p>
                    <label for="URL">URL:</label>
                    <br />
                    <cfinput type="text" name="URL" message="Please enter the URL for the agency's web page." validateat="onSubmit" required="no" size="50">
                </p>
                <p>
                    <label for="supervisor">Supervisor:</label>
                    <br />
                    <cfinput type="text" name="supervisor" message="Please enter the Supervior for the internship." validateat="onSubmit" required="yes" size="50">
                </p>
                <p>
                    <label for="Description">Description<br />
                    </label>
                    <cftextarea name="Description" cols="55" rows="4" label="Description" required="yes" validateat="OnSubmit" message="Please enter an internship description"  />
                </p>
                <table >
                    <tr>
                        <td><p>Adolescents:
                                <cfinput type="checkbox" id="checkboxAdolescents" name="Adolescents"   value="1" /> 
                        </p></td>
                        <td><p>MH:
                        <cfinput name="MH" type="checkbox"  value="1" id=checkboxMH>
                               
                        </p></td>
                        <td><p>MR:
                                <cfinput type="checkbox" id="checkboxMR" name="MR" value="1"  />
                        </p></td>
                        <td><p>D/A:
                                <cfinput type="checkbox" id="checkboxD_A" name="D_A" value="1"  />
                        </p></td>
                        <td><p>Children:
                                <cfinput type="checkbox" id="checkboxChildren" name="Children" value="1"  />
                        </p></td>
                        <td><p>Corrections:
                                <cfinput type="checkbox" id="checkboxCorrections" name="Corerctions" value="1" />
                        </p></td>
                        <td><p>Student:
                                <cfinput type="checkbox" id="checkboxStudent" name="Student" value="1" />
                        </p></td>
                        <td><p>Elderly:
                                <cfinput type="checkbox" id="checkboxElderly" name="Elderly" value="1" />
                        </p></td>
                    </tr>
                </table>
                <table >
                    <tr>
                        <td><p>VI:
                                <cfinput type="checkbox" id="checkboxVI" name="VI" value="1" />
                        </p></td>
                        <td><p>Rehab:
                                <cfinput type="checkbox" id="checkboxRehab" name="Rehab" value="1" />
                        </p></td>
                        <td><p>Adult:
                                <cfinput type="checkbox" id="checkboxAdult" name="Adult" value="1" />
                        </p></td>
                        <td><p>OT_PT:
                                <cfinput type="checkbox" id="checkboxOT_PT" name="OT_PT" value="1" />
                        </p></td>
                        <td><p>Women:
                                <cfinput type="checkbox" id="checkboxWomen" name="Women" value="1" />
                        </p></td>
                        <td><p>Family:
                                <cfinput type="checkbox" id="checkboxFamily" name="Family" value="1" />
                        </p></td>
                        <td><p>Voc:
                                <cfinput type="checkbox" id="checkboxVoc" name="Voc" value="1" />
                        </p></td>
                    </tr>
                </table>
                <table >
                    <tr> </tr>
                    <tr>
                        <td><p>BV:
                                <cfinput type="checkbox" id="checkboxBV" name="BV" value="1" />
                        </p></td>
                        <td><p>Alternative_Education:
                                <cfinput type="checkbox" id="checkboxAlternative_Education" name="Alternative_Education" value="1" />
                        </p></td>
                        <td><p>Private:
                                <cfinput type="checkbox" id="checkboxPrivate" name="Private" value="1" />
                        </p></td>
                        <td><p>Neuro:
                                <cfinput type="checkbox" id="checkboxNeuro" name="Neuro" value="1" />
                        </p></td>
                        <td><p>CP:
                                <cfinput type="checkbox" id="checkboxCP" name="CP" value="1" />
                        </p></td>
                        <td><p>Counseling:
                                <cfinput type="checkbox" id="checkboxCounseling" name="Counseling" value="1" />
                        </p></td>
                        <td><p>physical:
                                <cfinput type="checkbox" id="checkboxphysical" name="physical" value="1" />
                        </p></td>
                    </tr>
                </table>
                <p>
                    <cfinput type="submit" name="InsertInternship" id="submit">
                </p>
            </fieldset>
        </cfform>
        </p>
       <cfif IsDefined("FORM.InsertInternship")>
  <cfquery datasource="InternDB_v2">
INSERT INTO intern 
    (FACILITY,STREET,CITY,STATE,ZIP,COUNTY,PHONE,EMAIL,URL,ADOLESCENTS,MH,MR,D_A,CHILDREN,CORRECTIONS,STUDENT,ELDERLY,VI,REHAB,ADULT,OT_PT,WOMEN,FAMILY,VOC,BV,ALTERNATIVE_EDUCATION,PRIVATE,NEURO,CP,COUNSELING,PHYSICAL,SUPERVISOR,DESCRIPTION)
VALUES (<cfqueryparam  value="#form.Facility#" CFSQLType="CF_SQL_VARCHAR">,
<cfqueryparam  value="#form.Street#" CFSQLType="CF_SQL_VARCHAR">, 
<cfqueryparam  value="#form.City#" CFSQLType="CF_SQL_VARCHAR">,
<cfqueryparam  value="#form.State#" CFSQLType="CF_SQL_VARCHAR">,
					<cfqueryparam  value="#form.Zip#" CFSQLType="CF_SQL_VARCHAR">, 
					<cfqueryparam  value="#form.County#" CFSQLType="CF_SQL_VARCHAR">,
					<cfqueryparam  value="#form.Phone#" CFSQLType="CF_SQL_VARCHAR">,
					<cfqueryparam  value="#form.Email#" CFSQLType="CF_SQL_VARCHAR">,
					<cfqueryparam  value="#form.URL#" CFSQLType="CF_SQL_VARCHAR">, 
					<cfqueryparam value="#form.Adolescents#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.MH#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.MR#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.D_A#" CFSQLType="cf_sql_bit" >,
										<cfqueryparam value="#form.Children#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Corrections#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Student#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Elderly#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.VI#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Rehab#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Adult#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.OT_PT#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Women#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Family#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Voc#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.BV#" CFSQLType="cf_sql_bit" >,
										<cfqueryparam value="#form.Alternative_Education#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Private#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Neuro#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.CP#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.Counseling#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam value="#form.physical#" CFSQLType="cf_sql_bit" >,
					<cfqueryparam  value="#form.supervisor#" CFSQLType="CF_SQL_VARCHAR">,
					<cfqueryparam  value="#form.Description#"  >

)
</cfquery>
</cfif>
</div>
  	<cfinclude template="footer.cfm">
</div>
	<!---<cfquery datasource="InternDB_v2" name="getList">
	    Select * from intern
	</cfquery>
	<cfoutput>#ArrayToList( getList.getColumnNames() )#</cfoutput>--->
</body>
</html>