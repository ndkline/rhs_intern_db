<!--- component with attributes rest and restpath --->
<cfcomponent rest="true"
             restpath="/crudService">

    <!--- handle GET request (httpmethod),
          take argument in restpath(restpath={customerID}),
          return query data in json format(produces=text/json) ---> 
    <cffunction name="getHandlerJSON"
                access="remote"
                httpmethod="GET"
           <!---restpath="{customerID}" --->
                returntype="query"
                produces="application/json">
                    
        <!--- <cfargument name="customerID"
                    required="true"
                    restargsource="Path"
                    type="numeric"/>--->
                    
        <cfquery name = "myQuery" datasource = "InternDb_v2">  
        SELECT * FROM Intern
        </cfquery>          
          
        
        <cfreturn myQuery>
        
    </cffunction>   
</cfcomponent>