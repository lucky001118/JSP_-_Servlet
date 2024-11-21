/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlates;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author manik
 */
@WebServlet(name = "CockieS2", urlPatterns = {"/cockieS2"})
public class CockieS2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CockieS2</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CockieS2 at " + request.getContextPath() + "</h1>");

            //fatching the name from the Servlet CockieS1
            //String name = request.getParameter("name");

            //getting the cookie
            Cookie[] cookies = request.getCookies();
            boolean f = false;
            String name ="";
            if (cookies == null) {
                out.println("<h1>You are new user go to home page and submit your name</h1>");
                return;
            } else {
                for (Cookie c : cookies) {
                    String temp_name = c.getName();

                    if (temp_name.equals("user_name")) {
                        f = true;
                        name = c.getValue();
                    }
                }
            }
            if (f == true) {
                out.println("<h1>Hello, " + name + " welcome back to my website...</h1>");
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
