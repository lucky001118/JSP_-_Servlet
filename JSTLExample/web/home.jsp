<%-- 
    Document   : home
    Created on : 02-Jan-2024, 2:01:03 pm
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is jstl example!</h1>
        <!--set tag-->
        <c:set value="i" value='26' scope="application"></c:set>
        <!--out tag-->
        <h1><c:out value="${i}"></c:out></h1>
    </body>
</html>
