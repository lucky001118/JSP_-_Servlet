package com.servlates;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
public class RegisterServlet extends HttpServlet{
    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Welcome to Register Servlet..</h2>");
        
        //fatiching the data from the html page
        String name = request.getParameter("user_name");
        String password = request.getParameter("user_password");
        String email = request.getParameter("user_emailID");
        String gender = request.getParameter("user_gender");
        String course = request.getParameter("user_course");
        
        String cond = request.getParameter("condition");
      if(cond!=null){
           if(cond.equals("checked")){
          out.println("<h2> Name: "+name+"</h2>");  
          out.println("<h2> Password: "+password+"</h2>");  
          out.println("<h2> EmailID: "+email+"</h2>");  
          out.println("<h2> Gender: "+gender+"</h2>");  
          out.println("<h2> Course: "+course+"</h2>");  
          
          //we can also save the data in the database throght JDBC
               try {
                   Thread.sleep(2000);
               } catch (InterruptedException ex) {
                   System.out.println(ex);
               }                   
                   //here we are seeing the Request Dispatcher Forword method
          RequestDispatcher rd = request.getRequestDispatcher("DispatcherForward");
          rd.forward(request, response);
          
        }else{
            out.println("<h2>You have not accepted terms and condition, please check it</h2>");
        }
      }else{
         out.println("<h2>You have not accepted terms and condition, please check it</h2>");
         
         
         //here we are going to see the Request Dispatcher Include method...
         RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.html");
         requestDispatcher.include(request, response);
      }
       
    }
}
