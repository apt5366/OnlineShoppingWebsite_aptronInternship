<%-- 
    Document   : reg_errorPage
    Created on : Jun 25, 2019, 7:16:55 PM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#85F322">
        <h1>Register Page</h1>
        <form name="form1" action="register_Servlet">

Enter First name:   
<input type="text" size="30" name="text1"> <br><br>
Enter Last Name:
<input type="text" size="30" name="text2"> <br><br>
Enter email id:
<input type="text" size="30" name="t1"> <br><br>
Enter Mobile No.:
<input type="text" size="30" name="t2"> <br><br>


<br>

Enter username: 
<input type="text" size="30" name="t3"> <br><br>	
Enter Password:
<input type="password" size="30" name="t4"><br>
<br>
Retype Password:
<input type="password" size="30" name="t5">



<br> 
<font size="10" color="red">Registration Failed. Please check your entries. </font>
<br><br><center>
<input type="submit" value="Submit" name="s1">
<input type="reset" value="Clear fields" name="s2"></center>

    </body>
</html>
