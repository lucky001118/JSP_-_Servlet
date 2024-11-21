<%-- 
    Document   : op
    Created on : 29-Dec-2023, 12:35:14 am
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error_ex.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The output page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    </head>
    <body>
        <%
            //fatching the data from the Home.jsp
            String n1 = request.getParameter("n1");
            String n2 = request.getParameter("n2");

            //converting string to integer
            int a = Integer.parseInt(n1);
            int b = Integer.parseInt(n2);
            int c = a/b;
        %>

         <div class="container p-3 text-center">
            <img src="img/output.png" class="img-fluid" style="height:400px; width: 550px;"/>
            <h1 class='display-3'>Division Complited</h1>
            <h1 style='color: green;'>Result is: <%=c%></h1>
            <a href="Home.jsp" class="btn btn-outline-primary">Home page</a>
        </div>

    </body>
</html>
