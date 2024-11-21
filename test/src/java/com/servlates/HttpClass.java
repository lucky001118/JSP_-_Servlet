package com.servlates;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class HttpClass extends HttpServlet{
    @Override
    public void doGet(HttpServletRequest request,HttpServletResponse responce)throws ServletException,IOException
    {
        //this HttpServlet class used for the doing protocol specific work
        //there is verious method to do verious protocol spesific work 
        System.out.println("This is doGet method in the HttpServlet class...");
        responce.setContentType("text/html");
        PrintWriter out = responce.getWriter();
        out.println("<h1>This is get method of my servlet </h1>");
        String todaydate = new Date().toString();
        out.println("<h1>Today's date is: "+todaydate+"</h1>");
    }
}
