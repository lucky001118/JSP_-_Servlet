<%-- 
    Document   : home
    Created on : 02-Jan-2024, 2:03:50 pm
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--set tag setting the value in the variable-->
        <c:set var="i" value="-456" scope="application"></c:set>
            <!--out tag to print this-->
            <h1> 
            <c:out value="${i}"></c:out>
            </h1>

            <!--if statement using the taglib library -->
        <c:if test="${i==456}">
            <h1>The condition is true i = 456</h1>
        </c:if>

        <!--Going to use switch in the jstl--> 
        <!--choose, when, otherwise-->
        <c:choose>
            <c:when test="${i>0}">
                <h1>This is my case-01</h1>
                <h2>number is positive</h2>
            </c:when>

            <c:when test="${i<0}">
                <h1>This is the case-02</h1>
                <h1>The number is negative number</h1>
            </c:when>

            <c:otherwise>
                <h1>The number is zero</h1>
            </c:otherwise>
        </c:choose>
                
                <!--for-each tag: for traversing and repeating-->
            <c:forEach var="j" begin="1" end="15">
                <h1>the value of j is: <c:out value="${j}"></c:out></h1>
            </c:forEach>
                
                <!--for redirect in specific url-->
                 <c:redirect url="http://javatpoint.com"/>  

    </body>
</html>
