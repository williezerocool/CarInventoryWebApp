<%-- 
    Document   : appDescription
    Created on : Aug 12, 2017, 1:09:25 AM
    Author     : kendrabooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Application Description page</title>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Site Description</h5>
        <hr/>
        
        <div class="container">
            
            <div class="row">
                
                <div class="col-sm-12">
                    <p>
                        This website is to help small car dealers keep up with there vehicle inventory records,
                        as well as the records of those they have sold cars to(who bought what, and their payment history).
                        Enjoy!!!
                    </p>
                </div>
            
            </div>
            
            <div class="row">
                
                <div class="col-sm-12">
                    <div>
                        <a href="#" class="btn btn-info" name="next" role="button">Next</a>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
