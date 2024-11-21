package com.servlates;
import java.io.IOException;
import javax.servlet.*;
import java.io.*;
public class Second extends GenericServlet{
    
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
      
        System.out.println("This is the servlet using the generic servlet class..");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>This is my second servlet using the generic Servlet class</h1>");
    }
    
}
