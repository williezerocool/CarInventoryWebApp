<%-- 
    Document   : SoldVehicleForm
    Created on : Aug 23, 2017, 8:16:42 PM
    Author     : kendrabooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buyer Search Form</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include> 
        </header>
        <h5>Buyer Search Form</h5>
        <hr/>
        
        <div class="container">
                                
            <form method="get" action="BuyerSearchServlet">

                <div class="form-group">
                   <label for="buyersFirstName">Buyer's First Name</label>
                   <input type="text" class="form-control" name="buyersFirstName">
                </div>

                <div class="form-group">
                   <label for="buyersLastName">Buyer's Last Name</label>
                   <input type="text" class="form-control" name="buyersLastName">
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
