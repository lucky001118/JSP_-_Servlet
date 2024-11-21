package com.user;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author manik
 */
//using the MultipartConfig anotation we tring to tell our server that this servlet is handling the multi-content type data like limage,text,number,adio,video ect.
@MultipartConfig
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //fatching all the information from the form
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            //fatching the image on the server from the form.
            Part part = request.getPart("image");
            //using this part variable, we are getting the that image file's file name
            String filename = part.getSubmittedFileName();
            //out.println(filename);

            //connection with database using the jdbc
            try {
                Thread.sleep(2500);

                //creating the connection with the 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "Lucky@server2002");

                //query..
                String que = "insert into user(name,password,email,imageName) values(?,?,?,?);";
                PreparedStatement pstmt = con.prepareStatement(que);
                pstmt.setString(1, name);
                pstmt.setString(2, password);
                pstmt.setString(3, email);
                pstmt.setString(4, filename);  //only filename of the image is storing the database

                //execute the query
                pstmt.executeUpdate();
                
                //now storing the image in the folder
                InputStream is = part.getInputStream();
                byte []data = new byte[is.available()];  //making the byte variable to store the image this variable is equal size of the image and it is the array with byte type
                is.read(data); 
                String path = request.getRealPath("/")+"img"+File.separator+filename; //making pathname where image going to store
                FileOutputStream fos = new FileOutputStream(path);
                fos.write(data);
                fos.close();
                
                out.println("done");

            } catch (Exception e) {
                e.printStackTrace();
                out.println("error..");
            }

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
