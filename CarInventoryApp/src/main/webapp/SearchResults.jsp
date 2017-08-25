
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Search Results</h5>
        <hr/>
        
        <div class="container">
            
            <div class="row">
                <div class="col-lg-12">
                    <c:forEach var="results" items="${results}">
                        <div>
                            Make: ${results.carMake}
                                    <br/>
                            Model: ${results.carModel}
                                    <br/>
                            Year: ${results.year}
                                    <br/>
                            Vin: ${results.vin}
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
