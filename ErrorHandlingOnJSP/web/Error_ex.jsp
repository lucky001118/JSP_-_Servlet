<%-- 
    Document   : Error_ex
    Created on : 29-Dec-2023, 12:44:14 am
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry, something went wrong..</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container p-3 text-center">
            <img src="img/errorman.webp" class="img-fluid"/>
            <h1 class='display-3'>Sorry! something went wrong..</h1>
            <p><%=exception%></p>
            <a href="Home.jsp" class="btn btn-outline-primary">Home page</a>
        </div>
        
        
    </body>
</html>
