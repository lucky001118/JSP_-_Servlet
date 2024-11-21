package com.servlates;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;

public class FirstServlate implements Servlet {
    //we have to overrides all the methods 
  //life cycle methods
    ServletConfig conf;
    
    @Override
    public void init(ServletConfig conf)
    {
        this.conf = conf;
     System.out.println("Creating objects....");
    }
    
    @Override
    public void service(ServletRequest req,ServletResponse res) throws IOException{
           System.out.println("Servicing.....");
           
           //set the content type of the response
           res.setContentType("text/html");
           PrintWriter out = res.getWriter();  //using the printWriten class obj "out" we can write output on the web on html format
           out.println("<h1>This is the output from the server</h1>");  //this is the massage that we want to write on webpage
           String date_var = new Date().toString(); //using the Date class getting today's date and converting it into the string and assigning it into variable
           out.println("<h1>Today's date is: "+date_var+"</h1>"); //that variable is displaying on the webpage
            
    }
    
    @Override
    public void destroy()
    {
        System.out.println("going to destroy servlet object..");
    }
    
    //non life cycle methods
    @Override
    public ServletConfig getServletConfig()
    {
        return this.conf;
    }
    @Override
    public String getServletInfo(){
        return "This servlet is created by Lucky Manikpuri";
    }
}
