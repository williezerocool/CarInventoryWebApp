<%-- 
    Document   : EditVehicleDetails
    Created on : Aug 12, 2017, 10:45:17 AM
    Author     : kendrabooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Vehicle Details</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Edit Vehicle Details</h5>
        <hr/>
        
        <div class="container">    
           
            <form>

                <div class="form-group">
                    <label for="editVin">Enter Vehicle Vin</label>
                    <input type="text" class="form-control" id="editVinTxt" name="editVin">
                </div>

                <div class="form-group">
                   <label for="editArea">Enter Area You Wish To Edit(make, model, vin, details)</label>
                   <input type="text" class="form-control" id="editAreaTxt" name="editArea">
               </div>



                <div class="form-group btn-group">
                    <input class="btn btn-info" type="submit" value="Edit">
                </div>

            </form>
                    
        </div> 
            
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
