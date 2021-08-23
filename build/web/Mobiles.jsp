<%-- 
    Document   : Mobiles
    Created on : Jun 25, 2019, 11:03:26 PM
    Author     : ayush
--%>

<%@page import="java.sql.*"%>
<%@page import="com.core.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
       <body bgcolor="orange">
        
        <h1>Welcome to India's biggest shopping frenzy!</h1><br/>
        <h1>Choose from a variety of Laptops all at cheap prices!</h1><br/>
        
        <form action='Shopping_cart_servlet'>
        
        <%
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            
             try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select * from product where category='Mobiles'");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                    if(rs.getString(2).contains("redmi"))
                    {
                        out.println("<p><img src='images\\redmi.jpg' border=6 width=120 height=160 align='left' />");
                        out.println(rs.getString(3)+" (Black, 4GB RAM, 64GB Storage) \n"+ "M.R.P.:	₹ 13,499.00 \n" +
                        "Deal Price:	₹ "+Integer.toString(rs.getInt(4))+" You Save:	₹ 3,500.00 (26%)" );
                        out.println("<input type='checkbox' name='mobile' value='Redmi' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("moto"))
                    {
                        out.println("<p><img src='images\\moto_e_5.jpg' border=6 width=120 height=160 align='left'>");
                        out.println(rs.getString(3)+" (Black, 3GB RAM, 32GB Storage) \n"+"M.R.P.:	₹ 12,999.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+"You Save:	₹ 5,150.00 (40%)");
                        out.println("<input type='checkbox' name='mobile' value='Moto' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("samsung"))
                    {
                        out.println("<img src='images\\samsung_m_20.jpg' border=6 width=120 height=160 align='left'>");
                        out.println(rs.getString(3)+" (Charcoal Black, 4+64GB) \n"+"M.R.P.:	₹ 13,390.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+"You Save:	₹ 1,400.00 (10%)");
                        out.println("<input type='checkbox' name='mobile' value='Samsung' /> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("iphone"))
                    {
                        out.println("<img src='images\\iphone_X.jpg' border=6 width=120 height=160   align='left'>");
                        out.println(rs.getString(3)+" (64GB, Black) "+ "\n"+"M.R.P.:	₹ 76,900.00 " +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+"You Save:	₹ 17,000.00 (22%)");
                        out.println("<input type='checkbox' name='mobile' value='iphone' /> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                }
                
                }
            catch(Exception e)
            {
                //response.sendRedirect("errorPage.jsp");
                out.println("SQL exception is "+e);
            }
           %> 
        
        <center><input type='submit' value='Add Selected Items to Cart' /><br/><br/>
        </form>
           
           <form action="successPage.jsp">
            <input type="submit" value="Back to Main Menu" name="a" /></center>
        </form>
           <br/><br/>
    </body>
</html>
