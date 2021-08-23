/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.core;

import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ayush
 */
public class payment_confirmation_Servlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet payment_confirmation_Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
             HttpSession session= request.getSession();
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            
            
            try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where userid='"+user+"'");
                
                
              out.println("test 1");
               int x=preStmt.executeUpdate();
               out.println("test 2");
               if(x>0)
                    {
                       //RequestDispatcher rdview=request.getRequestDispatcher("Payment_confirmation.jsp");
                
                        //rdview.forward(request,response);
                        
                        response.sendRedirect("successPage.jsp");
                        
                    }
               
               
               
                  out.println("test 3");
               /*else
                        response.sendRedirect("Payment_confirmation.jsp");
                        //response.sendRedirect("General_errorPage.jsp");
                    */   
            }
            catch(Exception e)
            {
                response.sendRedirect("General_errorPage.jsp");
            }
            
            
            
            
            out.println("</body>");
            out.println("</html>");
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
