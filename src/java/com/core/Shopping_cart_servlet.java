/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.core;

import java.sql.*;

import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;

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
public class Shopping_cart_servlet extends HttpServlet {

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
            out.println("<title>Servlet Shopping_cart_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            HttpSession session= request.getSession();
            String userid=session.getAttribute("items").toString();
            session.setAttribute("items", userid);
            int x=0;
//------------------------------FOR MOBILES-----------------------------------//    
            
            String allMobiles[]=request.getParameterValues("mobile");
            
            String m_str="";
      out.println("test 1");
            
       if(request.getParameterValues("mobile")!=null)     
       {     
           out.println("inside mobiles");
            for(int i=0;i<allMobiles.length;i++)
                    m_str +=allMobiles[i];  
            
            
            if(m_str.contains("Redmi"))
         {
                
            
              try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company,product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "redmi");
               preStmt.setString(3, "Redmi 6 Pro");
               preStmt.setInt(4, 9999);
               preStmt.setInt(5, 9);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "moto");
               preStmt.setString(3, "Moto E5 Plus");
               preStmt.setInt(4, 7849);
               preStmt.setInt(5, 12);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company,product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "samsung");
               preStmt.setString(3, "Samsung Galaxy M20");
               preStmt.setInt(4, 11990);
               preStmt.setInt(5, 17);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Mobiles");
               preStmt.setString(2, "iphone");
               preStmt.setString(3, "iPhone XR");
               preStmt.setInt(4, 59900);
               preStmt.setInt(5, 10);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "lenovo");
               preStmt.setString(3, "Lenovo Ideapad");
               preStmt.setInt(4, 40990);
               preStmt.setInt(5, 7);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "iBall");
               preStmt.setString(3, "iBall Excelance");
               preStmt.setInt(4, 9343);
               preStmt.setInt(5, 10);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "hp");
               preStmt.setString(3, "HP 14Q CS0009TU 2018");
               preStmt.setInt(4, 21970);
               preStmt.setInt(5, 5);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Laptops");
               preStmt.setString(2, "dell");
               preStmt.setString(3, "Dell Inspiron 3567");
               preStmt.setInt(4, 29813);
               preStmt.setInt(5, 8);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "boat");
               preStmt.setString(3, "Boat Stone 1000");
               preStmt.setInt(4, 2849);
               preStmt.setInt(5, 3);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "iball");
               preStmt.setString(3, "iBall Decor 9-2.0");
               preStmt.setInt(4, 399);
               preStmt.setInt(5, 5);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "jbl");
               preStmt.setString(3, "JBL GO Portable");
               preStmt.setInt(4, 1599);
               preStmt.setInt(5, 11);
               preStmt.setString(6, userid);
                
                
                
                
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
                PreparedStatement preStmt=(PreparedStatement) conn.prepareStatement("insert into shortlisted_products(category,company, product, price, qty,userid) values (?,?,?,?,?,?) ");
                
                
               preStmt.setString(1, "Speakers");
               preStmt.setString(2, "phillips");
               preStmt.setString(3, "Philips BT50B Portable");
               preStmt.setInt(4, 999);
               preStmt.setInt(5, 11);
               preStmt.setString(6, userid);
                
                
                
                
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
