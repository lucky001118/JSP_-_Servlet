<%-- 
    Document   : error_404
    Created on : 29-Dec-2023, 1:04:47 am
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry, page not found</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    </head>
    <body>
        <div class="container p-3 text-center">
            <img src="img/404roor.png" class="img-fluid" style="height:400px; width: 550px;"/>
            <h1 class='display-3'>Sorry! Page not found..</h1>
            <p><%=exception%></p>
            <a href="Home.jsp" class="btn btn-outline-primary">Home page</a>
        </div>
        
    </body>
</html>
