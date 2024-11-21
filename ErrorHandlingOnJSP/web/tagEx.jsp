<%-- 
    Document   : tagEx
    Created on : 29-Dec-2023, 8:36:43 am
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--decrering taglib directory-->
<%@taglib uri="/WEB-INF/tlds/mylib" prefix="t"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>custom tags example!</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <!--this is the way of accessing the custom tags in the .jsp file using the taglib directories -->
        <t:mytag></t:mytag>
        <t:printTable number="23" color="red"></t:printTable>
        <t:printTable number="100" color="blue"></t:printTable>
        <t:printTable number="300" color="aqua"></t:printTable>
    </body>
</html>
