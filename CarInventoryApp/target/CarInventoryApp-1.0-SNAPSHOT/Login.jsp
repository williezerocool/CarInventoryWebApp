<%-- 
    Document   : HomePage
    Created on : Aug 12, 2017, 12:13:18 AM
    Author     : kendrabooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        
        <div class="container">
            
            <form>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="emailInput" name="email">
                </div>



                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="passwordInput" name="password">
                </div>


                <div class=" form-group btn-group">
                    <input class="btn btn-info" type="submit" value="Login">
                </div>


                <div class="form-group btn-group">
                    <a href="#" class="btn btn-info" name="newAccount" role="button">Create New Account</a>
                </div>

            </form>
                    
        </div> 
                
            
            
        
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
