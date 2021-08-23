/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.core;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ayush
 */
public class register_Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register_Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String email=request.getParameter("t1");
            long contact=Long.parseLong(request.getParameter("t2"));
            String userid= request.getParameter("t3");
            String password= request.getParameter("t4");
            String  retyped_password= request.getParameter("t5");
           
            if(!retyped_password.equals(password))
            {
                RequestDispatcher rdview=request.getRequestDispatcher("reg_errorPage.jsp");
                
                        rdview.forward(request,response);
            }
            
            
            else  
            
            {     
                
                try
            {
                    Connection conn=DBConnection.getConnect();
                    PreparedStatement preStmt=conn.prepareStatement("insert into login_register values(?,?,?,?)");
                    preStmt.setString(1, userid);
                    preStmt.setString(2, password);
                    preStmt.setString(3,email);
                    preStmt.setLong(4,contact );
                
                    int x=preStmt.executeUpdate();
            
                    if(x>0)
                    {
                    
                         RequestDispatcher rdview=request.getRequestDispatcher("loginPage.jsp");
                
                        rdview.forward(request,response);
                    }
                    else 
                    {
                            response.sendRedirect("reg_errorPage.jsp");
                        
                    }
            }
            catch(Exception e)
            {
                response.sendRedirect("reg_errorPage.jsp");
            }
                  
            out.println("</body>");
            out.println("</html>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
