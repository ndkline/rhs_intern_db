<cfquery datasource="InternDB_v2" name="qIntenships">
	SELECT *
	FROM intern
	ORDER BY ID
</cfquery>
<script type="text/javascript" >
	function deleteInternship(url) {
	var r = confirm("Press OK to delete the record! Press Cancel to do nothing.  Deleting cannot be undone!");
	if (r == true){
		window.location.href = url;
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
			<!---<cfinclude template="header.cfm">--->
			<!---<div id="navbar">
				<a href="index.php">
					home
				</a>
				<a href="tours.php">
					tours
				</a>
				<a href="countries.php">
					countries
				</a>
				<a href="aboutUs.php">
					about us
				</a>
				<a href="contactUs.php">
					contact us
				</a>
				<a href="search.php">
					search
				</a>
			</div>--->
			<div id="content">
				<h1>
					Interships 
				</h1>
				<p>
					Use the form below to update the&nbsp;RHS Internship information. This form is 
					specifically for updating existing internships. To add a new internship, <a href="internshipInsert.cfm">click here.</a>
				</p>
				<table border="1" cellpadding="5" cellspacing="0">
					<tr>
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
					
					<cfoutput query="qIntenships">
						<tr>
							<td>
								#qIntenships.ID#
							</td>
							<td>
								#qIntenships.Facility#
							</td>
							<td>
								#qIntenships.Street#
							</td>
							<td>
								#qIntenships.State#
							</td>
							<td>
								#qIntenships.City#
							</td>
							<td>
								#qIntenships.Zip#
							</td>
							<td>
								#qIntenships.County#
							</td>
							<td>
								#qIntenships.Phone#
							</td>
							<td>
								#qIntenships.Email#
							</td>
							<td>
								#qIntenships.Supervisor#
							</td>
							<td>
								<a href="InternshipsUpdate.cfm?URL=#qIntenships.ID#">
									Edit
								</a>
							</td>
							<td>
								<button onclick="deleteInternship('InternshipDelete.cfm?ID=#qIntenships.ID#')">
									Delete
								</button>
							</td>
						</tr>
					</cfoutput>
				</table>
			</div>
			<!---<cfinclude template="footer.cfm">
		</div>--->
	</body>
</html>