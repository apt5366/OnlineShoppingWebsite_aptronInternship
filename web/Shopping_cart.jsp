<%-- 
    Document   : Shopping_cart
    Created on : Jun 26, 2019, 12:16:23 AM
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
    <body bgcolor="#C39BD3">
        
        <font size='15'><center>Shopping Cart</center></font>
            <marquee><h1>Shop for Products and Win huge discounts!</h1></marquee><br/>
            <h1>Here's a list of items you have shown interest in...</h1><br/>
        
        
        
            <form action="delete_entries_Servlet">
        
        <%
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            

             try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select * from shortlisted_products where userid='"+user+"'");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                    if(rs.getString(3).contains("redmi"))
                    {
                        out.println("<p><img src='images\\redmi.jpg' border=6 width=120 height=160 align='left' />");
                        out.println(rs.getString(4)+" (Black, 4GB RAM, 64GB Storage) \n"+ "M.R.P.:	₹ 13,499.00 \n" +
                        "Deal Price:	₹ "+Integer.toString(rs.getInt(5))+" You Save:	₹ 3,500.00 (26%)" );
                        out.println("<input type='checkbox' name='mobile' value='Redmi' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("moto"))
                    {
                        out.println("<p><img src='images\\moto_e_5.jpg' border=6 width=120 height=160 align='left'>");
                        out.println(rs.getString(4)+" (Black, 3GB RAM, 32GB Storage) \n"+"M.R.P.:	₹ 12,999.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+"You Save:	₹ 5,150.00 (40%)");
                        out.println("<input type='checkbox' name='mobile' value='Moto' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("samsung"))
                    {
                        out.println("<img src='images\\samsung_m_20.jpg' border=6 width=120 height=160 align='left'>");
                        out.println(rs.getString(4)+" (Charcoal Black, 4+64GB) \n"+"M.R.P.:	₹ 13,390.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+"You Save:	₹ 1,400.00 (10%)");
                        out.println("<input type='checkbox' name='mobile' value='Samsung' /> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("iphone"))
                    {
                        out.println("<img src='images\\iphone_X.jpg' border=6 width=120 height=160   align='left'>");
                        out.println(rs.getString(4)+" (64GB, Black) "+ "\n"+"M.R.P.:	₹ 76,900.00 " +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+"You Save:	₹ 17,000.00 (22%)");
                        out.println("<input type='checkbox' name='mobile' value='iphone' /> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    //--------------------------------------------------------//
                    
                    if(rs.getString(3).contains("lenovo"))
                    {
                        out.println("<p><img src='images\\lenovo.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+" 330 Intel Core i5 "+ "M.R.P.:	₹ 61,490.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(5))+ "You Save:	₹ 20,500.00 (33%)");
                        out.println("<input type='checkbox' name='laptop' value='lenovo_ideapad' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("iBall"))
                    {
                        out.println("<p><img src='images\\iball.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+"M.R.P.:	₹ 12,999.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(5))+" You Save:	₹ 3,656.00 (28%)" );
                       out.println("<input type='checkbox' name='laptop' value='iBall_excellence' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("hp"))
                    {
                        out.println("<p><img src='images\\hp.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+ " M.R.P.:	₹ 26,979.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(5))+ " You Save:	₹ 5,009.00 (19%)");
                        out.println("<input type='checkbox' name='laptop' value='HP_14Q_CS0009TU_2018' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("dell"))
                    {
                        out.println("<p><img src='images\\dell.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+" Intel Core i3 7th Gen "+" M.R.P.:	₹ 42,419.00 \n" +
                        "Price:	₹ "+ Integer.toString(rs.getInt(5))+ " You Save:	₹ 12,606.00 (30%)");
                        out.println("<input type='checkbox' name='laptop' value='Dell_Inspiron' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    //--------------------------------------------------------//
                    
                    if(rs.getString(3).contains("boat"))
                    {
                        out.println("<p><img src='images\\boat.jpg' border=6 width=180 height=120 align='left' />");
                        out.println(rs.getString(4)+" Bluetooth Speaker "+"M.R.P.:	₹ 6,990.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+" You Save:	₹ 4,141.00 (59%)");
                        out.println("<input type='checkbox' name='speaker' value='Boat_Stone_1000' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("iball"))
                    {
                        out.println("<p><img src='images\\iBall_1.jpg' border=6 width=150 height=120 align='left' />");
                        out.println(rs.getString(4)+" Computer Multimedia Speakers "+" M.R.P.:	₹ 945.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+" You Save:	₹ 546.00 (58%)");
                        out.println("<input type='checkbox' name='speaker' value='iBall_Decor_9_2' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("jbl"))
                    {
                        out.println("<p><img src='images\\jbl.jpg' border=6 width=150 height=120 align='left' />");
                        out.println(rs.getString(4)+" Wireless Bluetooth Speaker"+" M.R.P.:	₹ 2,699.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+" Deal Price:	₹ 1,599.00"+" You Save:	₹ 1,100.00 (41%)");
                       out.println("<input type='checkbox' name='speaker' value='JBL_GO_Portable' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("phillips"))
                    {
                        out.println("<p><img src='images\\phillips.jpg' border=6 width=90 height=120  align='left' />");
                        out.println(rs.getString(4)+" Wireless "+" M.R.P.:	₹ 1,999.00 \n" +
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+" You Save:	₹ 1,000.00 (50%)");
                        out.println("<input type='checkbox' name='speaker' value='Philips_BT50B_Portable' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    //---------------------------------------------------------//
                }
                
              }
            catch(Exception e)
            {
                //response.sendRedirect("errorPage.jsp");
                out.println("SQL exception is "+e);
            }

         %>   
        
         <center><input type="submit" value="Remove selected items from shopping cart" name="b" />
            </form>
         
                <br/><br/>
                <form action="successPage.jsp">
            <input type="submit" value="Back to Main Menu" name="a" /></center>

            <br/><Br/><br/><br/>
            </form>
        
        
    </body>
</html>
