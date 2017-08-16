
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Vehicle To Inventory</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include> 
        </header>
        <h5>Add Vehicle To Inventory</h5>
        <hr/>
        
        <div class="container">
                                
            <form method="post" action="addServlet">

                <div class="form-group">
                   <label for="make">Make</label>
                   <input type="text" class="form-control" name="make">
                </div>

                <div class="form-group">
                    <label for="model">Model</label>
                    <input type="text" class="form-control" name="model">
                </div>


                <div class="form-group">
                    <label for="year">Year</label>
                    <input type="text" class="form-control" name="year">
                </div>

                <div class="form-group">
                    <label for="vin">Vin Number</label>
                    <input type="text" class="form-control" name="vin">
                </div>



                <div class="form-group">
                    <label>Vehicle Details</label>
                    <textarea class="form-control" cols="5" name="details"></textarea>
                </div>


                <div class="form-group btn-group">
                    <input class="btn btn-info" type="submit" value="Add">
                </div>

            </form>
                                   
        </div> 
          
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
