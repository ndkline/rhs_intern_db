<cfquery name="getAllData" datasource="InternDB_v2">
select *
from Intern
</cfquery>

<cfdump var="#getAllData#" expand="yes"  >

<!---<cfquery datasource="InternDB_v2">
INSERT tourname, tourdescription, totaldays, mealsincluded, countryid
INTO tours
WHERE #form.tourname#
</cfquery>--->
