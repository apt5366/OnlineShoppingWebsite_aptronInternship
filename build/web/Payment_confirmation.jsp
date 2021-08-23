<%-- 
    Document   : Payment_confirmation
    Created on : Jun 28, 2019, 12:28:32 AM
    Author     : ayush
--%>

<%@page import="java.sql.*"%>
<%@page import="com.core.DBConnection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <body bgcolor="GreenYellow">
          
          
          
          
          
        <font size='15'><center>Customer Bill</center></font>
            
        <p align="right">
            <a href="payment_confirmation_Servlet"> Back to Main Menu</a> &emsp;
         
     </p>
            
     <h3>Thank you for shopping with us!
            Don't forget to print this receipt.</h3>
            
        <font size='6'>
        
        <%!
            
            int net_amt=0;
            
            %>
            
            
            
            
        
<%
            String user=session.getAttribute("items").toString();
            session.setAttribute("items", user);
            out.println("<br/>"+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;User id: &ensp;"+user);
            
            Date dNow=new Date();
        SimpleDateFormat ft= new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss ");
        //System.out.println("Current date: "+ft.format(dNow));
            
            
            out.println("&emsp;&emsp;&emsp;&emsp;&emsp;Bill Date: "+ft.format(dNow));
                    out.println("<br/><br/>");
%>

</font>

<%
    
    
try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select sum(price) from shortlisted_products where userid='"+user+"'");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                        net_amt = rs.getInt(1);
                }
                
              }
            catch(Exception e)
            {
                //response.sendRedirect("errorPage.jsp");
                out.println("SQL exception is "+e);
            }  






%>

        
        
<%
             try{
                Connection conn=DBConnection.getConnect();
                PreparedStatement preStmt=conn.prepareStatement("select * from shortlisted_products where userid='"+user+"'");
                
                
                
                ResultSet rs=preStmt.executeQuery();
                
                while(rs.next())
                {
                    if(rs.getString(3).contains("redmi"))
                    {
                        out.println("<p><img src='images\\redmi.jpg' border=6 width=120 height=160 align='left' />");
                        out.println(rs.getString(4)+" (Black, 4GB RAM, 64GB Storage) \n"+ "<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        " Deal Price:	₹ "+Integer.toString(rs.getInt(5)));
    
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("moto"))
                    {
                        out.println("<p><img src='images\\moto_e_5.jpg' border=6 width=120 height=160 align='left'>");
                        out.println(rs.getString(4)+" (Black, 3GB RAM, 32GB Storage) \n"+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5)));
               
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("samsung"))
                    {
                        out.println("<img src='images\\samsung_m_20.jpg' border=6 width=120 height=160 align='left'>");
                        out.println(rs.getString(4)+" (Charcoal Black, 4+64GB) \n"+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5)));
             
                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("iphone"))
                    {
                        out.println("<img src='images\\iphone_X.jpg' border=6 width=120 height=160   align='left'>");
                        out.println(rs.getString(4)+" (64GB, Black) "+ "<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5)));

                        out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    //--------------------------------------------------------//
                    
                    if(rs.getString(3).contains("lenovo"))
                    {
                        out.println("<p><img src='images\\lenovo.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+" 330 Intel Core i5 "+ "<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+ Integer.toString(rs.getInt(5)) );
                        //out.println("<input type='checkbox' name='laptop' value='lenovo_ideapad' /></p> ");
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("iBall"))
                    {
                        out.println("<p><img src='images\\iball.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+"M.R.P.:	₹ 12,999.00 \n" + "<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+ Integer.toString(rs.getInt(5)));
    
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("hp"))
                    {
                        out.println("<p><img src='images\\hp.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+ Integer.toString(rs.getInt(5)));
      
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("dell"))
                    {
                        out.println("<p><img src='images\\dell.jpg' border=6 width=160 height=120 align='left' />");
                        out.println(rs.getString(4)+" Intel Core i3 7th Gen "+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+ Integer.toString(rs.getInt(5)));
                        
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    //--------------------------------------------------------//
                    
                    if(rs.getString(3).contains("boat"))
                    {
                        out.println("<p><img src='images\\boat.jpg' border=6 width=180 height=120 align='left' />");
                        out.println(rs.getString(4)+" Bluetooth Speaker "+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5)));
                        
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("iball"))
                    {
                        out.println("<p><img src='images\\iBall_1.jpg' border=6 width=150 height=120 align='left' />");
                        out.println(rs.getString(4)+" Computer Multimedia Speakers "+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5)));
               
                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("jbl"))
                    {
                        out.println("<p><img src='images\\jbl.jpg' border=6 width=150 height=120 align='left' />");
                        out.println(rs.getString(4)+" Wireless Bluetooth Speaker"+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5))+" Deal Price:	₹ 1,599.00");

                        out.println("<br/><br/><br/><br/><br/><br/><br/>");
                    }
                    
                    
                    if(rs.getString(3).contains("phillips"))
                    {
                        out.println("<p><img src='images\\phillips.jpg' border=6 width=90 height=120  align='left' />");
                        out.println(rs.getString(4)+" Wireless "+"<br/>"+"Product ID: " +rs.getInt(1)+"<br/>"+
                        "Price:	₹ "+Integer.toString(rs.getInt(5)));

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

         
         <p align="right">
<%
    out.println("<font size='6'>Net Total:  &ensp;"+net_amt+" </font>");
    
    %>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         </p>
    <br/><br/>
        
    
      
    </body>
</html>
