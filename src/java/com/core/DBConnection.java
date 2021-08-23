/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.core;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ayush
 */
public class DBConnection {
 
    static Connection conn=null;
    public static Connection getConnect() throws SQLException
    {
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage_asst","root","Ayush@12345");
            return conn;
        }
        catch(Exception e)
        {
            System.out.println("SQL exception is "+e.getMessage());
        }
        
        return conn;
    }
}
