<cfquery datasource="InternDB_v2" name="qInternship">
	SELECT *
	FROM intern
	ORDER BY ID
</cfquery>
<cfparam name="Form.btnFAC" default="">
<cfif Form.btnFAC EQ "A-Z">
	<cfquery datasource="InternDB_v2" name="qInternship">
		SELECT *
		FROM intern
		ORDER BY Facility ASC;
	</cfquery>
</cfif>
<cfif Form.btnFAC EQ "Z-A">
	<cfquery datasource="InternDB_v2" name="qInternship">
		SELECT *
		FROM intern
		ORDER BY Facility DESC;
	</cfquery>
</cfif>

<script type="text/javascript">
	function deleteInternship(url) {
	var r = confirm("Press OK to delete the record! Press Cancel to do nothing.  Deleting cannot be undone!");
	if (r == true){
		window.location = url;
	}
	return false;
	}
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>
			Intern Data Editing/Deletion
		</title>
		<link href="styles.css" rel="stylesheet" type="text/css"/>
	</head>
	
	<body>
		<div id="wrapper">
		<div id="content">
			<h1>
				Intern Data Editing/Deletion
			</h1>
			<p>
				Use the form below to update or delete the&nbsp;RHS Internship information. This form is
				specifically for updating or deleting existing internships. To add a new internship, 
				<a href="InternshipInsert.cfm">
					click here.
				</a>
			</p>
			<form name="thisForm" action="InternshipListing.cfm" method="post">
				<table border="1" cellpadding="5" cellspacing="0">
					<tr>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>
							ID
						</th>
						<th>
							Agency
						</th>
						<th>
							Street
						</th>
						<th>
							City
						</th>
						<th>
							State
						</th>
						<th>
							Zip
						</th>
						<th>
							County
						</th>
						<th>
							Phone
						</th>
						<th>
							Email
						</th>
						<th>
							Supervisor Name
						</th>
					</tr>
					<tr>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>
							<input type="submit" name="btnFAC" value="A-Z">
							<input type="submit" name="btnFAC" value="Z-A">
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
						<th>&nbsp;
							
						</th>
					</tr>
					<cfoutput query="qInternship">
						<tr>
							<td>
								<a href="InternshipUpdate.cfm?ID=#qInternship.ID#">
									Edit
								</a>
							</td>
							<td>
								<button onClick="return deleteInternship('InternshipDelete.cfm?ID=#qInternship.ID#')">
									Delete
								</button>
							</td>
							<td>
								#qInternship.ID#
							</td>
							<td>
								#qInternship.Facility#
							</td>
							<td>
								#qInternship.Street#
							</td>
							<td>
								#qInternship.State#
							</td>
							<td>
								#qInternship.City#
							</td>
							<td>
								#qInternship.Zip#
							</td>
							<td>
								#qInternship.County#
							</td>
							<td>
								#qInternship.Phone#
							</td>
							<td>
								#qInternship.Email#
							</td>
							<td>
								#qInternship.Supervisor#
							</td>
						</tr>
					</cfoutput>
				</table>
			</form>
		</div>
		<!---<cfinclude template="footer.cfm">
		        </div>--->
	</body>
</html>