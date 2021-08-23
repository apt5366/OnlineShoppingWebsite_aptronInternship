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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ayush
 */
public class delete_entries_Servlet extends HttpServlet {

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
            out.println("<title>Servlet delete_entries_Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            int x=0;
//------------------------------FOR MOBILES-----------------------------------//    
            
            String allMobiles[]=request.getParameterValues("mobile");
            
            String m_str="";
     
            
       if(request.getParameterValues("mobile")!=null)     
       {     
          
            for(int i=0;i<allMobiles.length;i++)
                    m_str +=allMobiles[i];
            
            
            if(m_str.contains("Redmi"))
         {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=? ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "redmi");
               
                
                
                
                
                 x+=preStmt.executeUpdate();
            
                
                
            }
            catch(Exception e)
            {
                out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");
            }
            
         }
            
            if(m_str.contains("Moto"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "moto");
               
                
                
                
                x+=preStmt.executeUpdate();
            
                    
            }
            catch(Exception e)
            {
              out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");  
            }
            
         }
            
            
                 if(m_str.contains("Samsung"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "samsung");
               
                
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
              out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");  
            }
            
         }
                 
                if(m_str.contains("iphone"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "iphone");
               
                
                
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
               out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>"); 
            }
            
         }
       }      
        out.println("test 2");    
 //----------------------------------FOR LAPTOPS-------------------------------//
 
            
            String allLaptops[]=request.getParameterValues("laptop");
            
            String l_str="";
            
     if(request.getParameterValues("laptop")!=null)      
     {      
            for(int i=0;i<allLaptops.length;i++)
                    l_str +=allLaptops[i];
            
            
            if(l_str.contains("lenovo_ideapad"))
         {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "lenovo");
               
                
                
                
                
                x+=preStmt.executeUpdate();
            
                    
            }
            catch(Exception e)
            {
               out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>"); 
            }
            
         }
            
            if(l_str.contains("iBall_excellence"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "iBall");
               
               
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
               out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>"); 
            }
            
         }
            
            
                 if(l_str.contains("HP_14Q_CS0009TU_2018"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "hp");
               
                
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
                out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");
            }
            
         }
                 
                if(l_str.contains("Dell_Inspiron"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "dell");
               
                
                
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
                out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");
            }
            
         }
     }           
 //--------------------------------FOR SPEAKERS--------------------------------//
 
 
             String allSpeakers[]=request.getParameterValues("speaker");
            
            String s_str="";
            
     if(request.getParameterValues("speaker")!=null)      
     {      
            for(int i=0;i<allSpeakers.length;i++)
                    s_str +=allSpeakers[i];
            
            
            if(s_str.contains("Boat_Stone_1000"))
         {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "boat");
              
                
                
                
                
                x+=preStmt.executeUpdate();
            
                    
            }
            catch(Exception e)
            {
               out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>"); 
            }
            
         }
            
            if(s_str.contains("iBall_Decor_9_2"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=? ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "iball");
               
                
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
               out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>"); 
            }
            
         }
            
            
                 if(s_str.contains("JBL_GO_Portable"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "jbl");
              
                
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
                out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");
            }
            
         }
                 
                if(s_str.contains("Philips_BT50B_Portable"))
          {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("delete from shortlisted_products where category=? and  company=?  ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "phillips");
                
                
                x+=preStmt.executeUpdate();
            
                    
                
            }
            catch(Exception e)
            {
                out.println("<font size='14' color='red'> Selection Failed!!! Please try again.</font>");
            }
            
         }
     }
     
 //----------------------------------------------------------------------------//
                    if(x>0)
                    {
                    
                       //  RequestDispatcher rdview=request.getRequestDispatcher("Shopping_cart.jsp");
                
                        //rdview.forward(request,response);
                        
                        response.sendRedirect("Shopping_cart.jsp");
                        
                    }
                    else
                        response.sendRedirect("Shopping_cart.jsp");
            
            
            
            
            
            out.println("<h1>Servlet delete_entries_Servlet at " + request.getContextPath() + "</h1>");
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
