
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Results</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Complete Inventory List</h5>
        <hr/>
        
        <div class="container">
            
            <div class="row">
                <div class="col-lg-4">
                    <c:forEach var="car" items="${cars}">
                        <div>
                           Make: ${car.carMake}
                           <br/>
                           Model: ${car.carModel}
                           <br/>
                           Year: ${car.year}
                           <br/>
                           Vin: ${car.vin}
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
