<%-- 
    Document   : first
    Created on : 28-Dec-2023, 12:23:48 pm
    Author     : manik
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page errorPage="errors.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .errorFild{
                background-color: greenyellow;
                color: white;
                text-align: center;
                padding: 10px;
                margin: 10px;
            }
        </style>
    </head>
    <body>
        <!--this is our declaretion tag here we will declere all the java variables or functions-->
        <h1>hello jsp</h1>
        <%!
            int a = 50;
            int b = 60;
            String name = "Java Server Page Technology";

            //declaring the function
            public int doSum() {
                return a + b;
            }

//declaring the function that reverce the given string
            public String reverse() {
                StringBuffer br = new StringBuffer(name);
                return br.reverse().toString();
            }
        %>

        <!--Now the script tag that process the request-->

        <%

            out.println(a);
            out.println(b);
            out.println("<br>");
            out.println(name);
            out.println("<br>");
            out.println(doSum());
            out.println("<br>");
            out.println(reverse());
        %>

        <%
            String name1 = request.getParameter("uname");
            out.print("<br>welcome " + name1);
        %>  

        <!--now going to see about the expresion tag-->
        <h1>The sum is:<%= doSum()%></h1><br>
        <h1>The sum is:<%= a%></h1><br>
        <h1>The sum is:<%=name%></h1><br> 
        <h1>The sum is:<%=reverse()%></h1>

        <div class="errorFild">
            <h1 style='color: red;'>Welcome to devide game!</h1>
            
            <%!
                String num1 = "a";
                String num2 = "b";
            %>
            <form>  
                No1:<input type="number" name="n1" /><br/><br/>  
                No1:<input type="number" name="n2"/><br/><br/>  
                <input type="submit" value="divide"/>  
                <%
                     num1 = request.getParameter("n1");
                     num2 = request.getParameter("n2");

                    float c = Integer.parseInt(num1)/Integer.parseInt(num2);
                    out.print("<h2><br>division of numbers is: " + c+" </h2>");
                %>       

                <%

                %>
            </form>  

        </div>
            
                
</html>
