

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Search</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Inventory Search</h5>
        <hr/>
        
       
        <div class="container">    
            
            <form method="get" action="SearchInventory">

                <div class="form-group">
                    <label for="attributeOfVehicleToSearchFor">Search For Vehicle By(make, model, year, vin)</label>
                    <input type="text" class="form-control" name="attributeOfVehicleToSearchFor">
                </div>

                <div class="form-group">
                    <label for="valueOfVehicleSearchAttribute">Enter Corresponding Value</label>
                    <input type="text" class="form-control"  name="valueOfVehicleSearchAttribute">
                </div>

                <div class="form-group btn-group">
                    <input class="btn btn-info" type="submit" value="Search">
                </div>
                  
            </form>
            
        </div>    
       
           
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
