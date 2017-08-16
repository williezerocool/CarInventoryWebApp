/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.carinventoryappDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kendrabooker
 */
public class DBConnection {

    private Connection conn;

    public DBConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_Inventory?autoReconnect=true&useSSL=false", "root", "williemysql");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_Inventory?serverTimezone=UTC", "root", "williemysql");
    }

    public Connection getConnection() {
        return conn;
    }
}
