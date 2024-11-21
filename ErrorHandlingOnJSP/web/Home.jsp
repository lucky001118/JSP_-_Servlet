<%-- 
    Document   : Home
    Created on : 29-Dec-2023, 12:09:28 am
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">

                    <form action="op.jsp">
                    <div class="card">
                        <div class="card-header bg-dark text-white text-center">
                            <h3>Provide me two numbers!</h3>
                        </div>
                        <div class="card-body bg-secondary">
                            <div class="form-group">
                                <input type="text" name="n1" class="form-control" placeholder="Enter number-1 here"/>  
                            </div>
                            <div class="form-group">
                                <input type="text" name="n2" class="form-control" placeholder="Enter number-2 here"/>
                            </div>
                        </div>
                        <div class="card-footer text-center bg-dark text-white">
                            <button class="btn btn-outline-light" type="submit">Divide</button>
                        </div>
                    </div>

                    </form>
                </div>

            </div>

        </div>
    </body>
</html>
