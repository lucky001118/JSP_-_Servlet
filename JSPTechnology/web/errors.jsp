<%-- 
    Document   : errors
    Created on : 28-Dec-2023, 7:19:58 pm
    Author     : manik
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date.*"%>
<%@page import="java.util.Random.*"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Handling</title>
        <style>
            .gotError{
                background-color: graytext;
                color: white;
                text-align: center;
                margin: 10px;
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div class="gotError">
            <%!
                Date date = new Date();
                long currentdate = date.getTime();
            %>
            <h2>This div section is handling the error</h2>
            <h2>The time is: <%=currentdate%></h2>
            <h2>Today's date and time is: <%=date%></h2>
            <h3> The error is: <%=exception  %> </h3>
        </div>
    </body>
</html>
