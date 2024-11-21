package com.servlates;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherForward extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        res.setContentType("text/html");
        
        PrintWriter out = res.getWriter();
        out.println("<h1>This is Success servlet...</h1>");
        out.println("<h1>Form has been successfully registered!</h1>");
        out.println("<h1>Using this we are learning the Request Dispatcher Forword method...</h1>");
        
    }
}
