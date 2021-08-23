<%-- 
    Document   : Speakers
    Created on : Jun 25, 2019, 11:04:05 PM
    Author     : ayush
--%>

<%@page import="com.core.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <body bgcolor="RoyalBlue">
        
        <h1>Welcome to India's biggest shopping frenzy!</h1><br/>
        <h1>Choose from a variety of Laptops all at cheap prices!</h1><br/>
        
        <form action='Shopping_cart_servlet'>
        
        <%
            
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            
             try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select * from product where category='Speakers'");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                    if(rs.getString(2).contains("boat"))
                    {
                        out.println("<p><img src='images\\boat.jpg' border=6 width=180 height=120 align='left' />");
                        out.println(rs.getString(3)+" Bluetooth Speaker "+"M.R.P.:	₹ 6,990.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+" You Save:	₹ 4,141.00 (59%)");
                        out.println("<input type='checkbox' name='speaker' value='Boat_Stone_1000' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("iball"))
                    {
                        out.println("<p><img src='images\\iBall_1.jpg' border=6 width=150 height=120 align='left' />");
                        out.println(rs.getString(3)+" Computer Multimedia Speakers "+" M.R.P.:	₹ 945.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+" You Save:	₹ 546.00 (58%)");
                        out.println("<input type='checkbox' name='speaker' value='iBall_Decor_9_2' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("jbl"))
                    {
                        out.println("<p><img src='images\\jbl.jpg' border=6 width=150 height=120 align='left' />");
                        out.println(rs.getString(3)+" Wireless Bluetooth Speaker"+" M.R.P.:	₹ 2,699.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+" Deal Price:	₹ 1,599.00"+" You Save:	₹ 1,100.00 (41%)");
                        out.println("<input type='checkbox' name='speaker' value='JBL_GO_Portable' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("phillips"))
                    {
                        out.println("<p><img src='images\\phillips.jpg' border=6 width=90 height=120  align='left' />");
                        out.println(rs.getString(3)+" Wireless "+" M.R.P.:	₹ 1,999.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(4))+" You Save:	₹ 1,000.00 (50%)");
                        out.println("<input type='checkbox' name='speaker' value='Philips_BT50B_Portable' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
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
