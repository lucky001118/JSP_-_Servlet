/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Myservelts;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
//stapes to use the fiter in servlet
//stap 1): use the java class to make the any servlet like servlet one or servlet two doing the thier seprete works 
//stape 2): make the filter java class which extends the filter class and usinf the filter life cycle methods to creating the filters
//in the doFilter method we can define all the filters which can be in the request or response
//step 3): make configration on the web.xml   1)declear the filter 2)mapping the filter
public class Myfilter implements Filter{


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    @Override
    public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain)throws IOException,ServletException{
        System.out.println("Before filtering");
        //.............
        chain.doFilter(request,response);
        System.out.println("After the servlet");
        //.................
        
        
    }
    @Override
    public void destroy() {
        Filter.super.destroy(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
}
