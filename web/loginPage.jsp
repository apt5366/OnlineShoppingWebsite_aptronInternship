<%-- 
    Document   : loginPage
    Created on : Jun 25, 2019, 6:29:37 PM
    Author     : ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellow">
        <h1> Login Page </h1>
        <form name="f1" action="CHECK_CREDENTIALS_SERVLET" >
            
            Enter username: 
            <input type="text" name="usern" value="" size="30"/>
            <br/>
            <br/>
            Enter Password:
            <input type="password" name="pass" value="" size="30"/>
            <br/><br/>
            <input type="submit" value="Submit" />
            
            
            
            
        </form>
    </body>
</html>
