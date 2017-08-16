<%-- 
    Document   : sellVehicle
    Created on : Aug 12, 2017, 2:39:53 PM
    Author     : kendrabooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sell Vehicle</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Sell Vehicle</h5>
        <hr/>
        
        <div class="container">
            
            <form>

                <div class="form-group">
                    <label for="buyerFirstName">First Name</label>
                    <input type="text" class="form-control" id="buyerFirstNameTxt" name="buyerFirstName">
                </div>

                <div class="form-group">
                    <label for="buyerLastName">Last Name</label>
                    <input type="text" class="form-control" id="buyerLastNameTxt" name="buyerLastName">
                </div>


                <div class="form-group">
                    <label for="phoneNumber">Phone Number</label>
                    <input type="text" class="form-control" id="phoneNumberTxt" name="phoneNumber">
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="addressTxt" name="address">
                </div> 

                <div class="form-group">
                    <label for="purchasePrice">Purchase Price</label>
                    <input type="text" class="form-control" id="purchasePriceTxt" name="purchasePrice">
                </div>

                <div class="form-group">
                    <label for="downPayment">Down Payment</label>
                    <input type="text" class="form-control" id="addressTxt" name="downPayment">
                </div>

                <div class="form-group btn-group">
                    <input class="btn btn-info" type="submit" value="Submit">
                </div>
                   
             </form>
                
        </div>
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
