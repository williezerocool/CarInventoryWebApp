<%-- 
    Document   : SoldVehicleList
    Created on : Aug 22, 2017, 10:39:17 AM
    Author     : kendrabooker
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buyer Search Result List</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Buyer Search Result List</h5>
        <hr/>
        
        <div class="container">
            
            <div class="row">
                <div class="col-lg-4">
                   <c:forEach var="buyer" items="${buyers}">
                        <div>
                           First Name: ${buyer.firstName}
                           <br/>
                           Last Name: ${buyer.lastName}
                           <br/>
                           Address: ${buyer.address}
                           <br/>
                           Phone NUmber: ${buyer.phoneNumber}
                           <br/>
                           Purchase Price: ${buyer.purchasePrice}
                           <br/>
                           Total Paid: ${buyer.totalPaid}
                           <br/>
                           Vehicle Vin: ${buyer.vin}
                           <br/>
                           <br/><br/><br/>
                        </div>
                    </c:forEach> 
                </div>
            </div>
            
        </div>
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
