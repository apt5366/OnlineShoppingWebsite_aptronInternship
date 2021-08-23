<%-- 
    Document   : successPage
    Created on : Jun 25, 2019, 6:31:35 PM
    Author     : ayush
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.core.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body bgcolor="DarkOrange ">
        <h1>Welcome to India's biggest shopping frenzy!</h1>
     <p align="right">
         
         <a href="Shopping_cart.jsp"> Go to Cart</a> &emsp;
         <a href="Bill.jsp"> Pay/Checkout</a> &emsp;
         <a href="index.jsp"> Logout</a>&emsp;
     </p>
            
        
        <br/>
        <h1>Choose from a variety of products all at cheap prices!</h1><br/>
         
        
        <%
            
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            
             try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select * from category");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                    out.println("<a href='"+rs.getString(1)+".jsp'>"+rs.getString(1)+"</a><br/>");
                }
                }
            catch(Exception e)
            {
                //response.sendRedirect("errorPage.jsp");
                out.println("SQL exception is "+e);
            }
           %> 
        
        

        
        
    </body>
</html>
