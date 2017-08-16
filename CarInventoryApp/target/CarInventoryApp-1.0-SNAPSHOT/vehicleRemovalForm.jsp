

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Vehicle</title>
    </head>
    <body>
        
        <header>
            <jsp:include page="Header.jsp"></jsp:include>   
        </header>
        <h5>Remove Vehicle</h5>
        <hr/>
        
        <div class="container">
            
            <form>
                
                <div class="form-group">
                    <label for="editVin">Enter Vehicle Vin</label>
                    <input type="text" class="form-control" id="editVinTxt" name="editVin">
                </div>

                <div class="form-group btn-group">
                    <input class="btn btn-info" type="submit" value="Remove">
                </div>
                  
            </form>
               
        </div>
            
        
        
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        
    </body>
</html>
