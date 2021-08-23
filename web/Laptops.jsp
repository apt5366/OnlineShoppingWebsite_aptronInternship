<%-- 
    Document   : Laptops
    Created on : Jun 25, 2019, 11:03:45 PM
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
    <body bgcolor="SpringGreen">
        
        <h1>Welcome to India's biggest shopping frenzy!</h1><br/>
        <h1>Choose from a variety of Laptops all at cheap prices!</h1><br/>
        
                  
        <form action='Shopping_cart_servlet'> 
            
        <%
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            
             try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select * from product where category='Laptops'");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                    if(rs.getString(2).contains("lenovo"))
                    {
                        out.println("<p><img src='images\\lenovo.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(3)+" 330 Intel Core i5 "+ "M.R.P.:	₹ 61,490.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(4))+ "You Save:	₹ 20,500.00 (33%)");
                        out.println("<input type='checkbox' name='laptop' value='lenovo_ideapad' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("iBall"))
                    {
                        out.println("<p><img src='images\\iball.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(3)+"M.R.P.:	₹ 12,999.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(4))+" You Save:	₹ 3,656.00 (28%)" );
                        out.println("<input type='checkbox' name='laptop' value='iBall_excellence' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("hp"))
                    {
                        out.println("<p><img src='images\\hp.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(3)+ " M.R.P.:	₹ 26,979.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(4))+ " You Save:	₹ 5,009.00 (19%)");
                        out.println("<input type='checkbox' name='laptop' value='HP_14Q_CS0009TU_2018' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(2).contains("dell"))
                    {
                        out.println("<p><img src='images\\dell.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(3)+" Intel Core i3 7th Gen "+" M.R.P.:	₹ 42,419.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(4))+ " You Save:	₹ 12,606.00 (30%)");
                        out.println("<input type='checkbox' name='laptop' value='Dell_Inspiron' /></p> ");
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
