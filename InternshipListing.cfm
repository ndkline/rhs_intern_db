<cfquery datasource="InternDB_v2" name="qInternships">
	SELECT *
	FROM intern
	ORDER BY ID
</cfquery>
<cfparam name="Form.btnFAC" default="">
<cfif Form.btnFAC EQ "A-Z">
	<cfquery datasource="InternDB_v2" name="qInternships">
		SELECT *
		FROM intern
		ORDER BY Facility ASC;
	</cfquery>
</cfif>
<cfif Form.btnFAC EQ "Z-A">
	<cfquery datasource="InternDB_v2" name="qInternships">
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
			Internship Listings
		</title>
		<link href="styles.css" rel="stylesheet" type="text/css"/>
	</head>
	
	<body>
		<div id="wrapper">
		<div id="content">
			<h1>
				Internships 
			</h1>
			<p>
				Use the form below to update the&nbsp;RHS Internship information. This form is
				specifically for updating existing internships. To add a new internship, 
				<a href="InternshipInsert.cfm">
					click here.
				</a>
			</p>
			<form name="thisForm" action="InternshipListing.cfm" method="post">
				<table border="1" cellpadding="5" cellspacing="0">
					<tr>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
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
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							<input type="submit" name="btnFAC" value="A-Z">
							<input type="submit" name="btnFAC" value="Z-A">
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
						<th>
							&nbsp;
						</th>
					</tr>
					<cfoutput query="qInternships">
						<tr>
							<td>
								<a href="InternshipsUpdate.cfm?URL=#qInternships.ID#">
									Edit
								</a>
							</td>
							<td>
								<button onclick="return deleteInternship('InternshipDelete.cfm?ID=#qInternships.ID#')">
									Delete
								</button>
							</td>
							<td>
								#qInternships.ID#
							</td>
							<td>
								#qInternships.Facility#
							</td>
							<td>
								#qInternships.Street#
							</td>
							<td>
								#qInternships.State#
							</td>
							<td>
								#qInternships.City#
							</td>
							<td>
								#qInternships.Zip#
							</td>
							<td>
								#qInternships.County#
							</td>
							<td>
								#qInternships.Phone#
							</td>
							<td>
								#qInternships.Email#
							</td>
							<td>
								#qInternships.Supervisor#
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