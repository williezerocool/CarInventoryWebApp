

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controller</title>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Manage Inventory</h5>
        <hr/>
        <div class="container">
            
            <div class="row">
                
                <form method="get" action="LIS">
                    <div class="col-sm-4">
                        <div>
                            <button type="submit" name="list" class="btn btn-info">List</button>
                            <lable for="list">List Your Inventory</lable>
                        </div>
                     </div>  
                </form>
                
                <div class="col-sm-4">
                    <div>
                        <a href="addVehicleForm.jsp" class="btn btn-info" name="add" role="button">Add</a>
                        <lable for="add">Add Vehicle To Your Inventory</lable>
                    </div>
                </div> 
                
                <div class="col-sm-4">
                    <div>
                        <a href="EditVehicleDetails.jsp" class="btn btn-info" name="edit" role="button">Edit</a>
                        <lable for="edit">Edit Vehicle Details</lable>
                    </div>
                </div> 
                
            </div> <!--row-->
            <br/>
            
            <div class="row">
                
                <div class="col-sm-4">
                    <div class="form-group">
                        <a href="inventorySearchForm.jsp" class="btn btn-info" name="search" role="button">Search</a>
                        <lable for="search">Search For Vehicle</lable>
                    </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="form-group">
                        <a href="vehicleRemovalForm.jsp" class="btn btn-info" name="remove" role="button">Remove</a>
                        <lable for="Remove">Remove Vehicle From Inventory</lable>
                    </div>
                </div> 
                
                <div class="col-sm-4">
                    <div class="form-group">
                        <a href="sellVehicle.jsp" class="btn btn-info" name="sell" role="button">Sell</a>
                        <lable for="edit">Sell Vehicle</lable>
                    </div>
                </div> 
                
            </div> <!--row-->
            <br/><br/>
            
            <div class="row">
                <!--might need to be a form attached to a servlet-->
                <div class="col-sm-12">
                    <div class="form-group">
                        <a href="#" class="btn btn-info" name="exit" role="button">Log Out</a>
                    </div>
                </div>
                
            </div> <!--row-->
                  
        </div>
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
