/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.carinventoryappDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.mycompany.carInventoryApp.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kendrabooker
 */
public class CarInventoryDBDataStore {
    
    private Connection conn;
    
    public CarInventoryDBDataStore() throws SQLException {
        DBConnection c = new DBConnection();
        conn = c.getConnection();
    }
    
    public List<Car> listData() throws SQLException {
        
        List<Car> list = new ArrayList<>();
        Response result = new Response();
        
        
        try {
        
            Statement stmt = conn.createStatement();
            
            String sql = "SELECT * FROM car";
            ResultSet rs = stmt.executeQuery(sql);
              
            while(rs.next()) {
            
               Car car = new Car();
               car.setVin(rs.getString(1));
               car.setCarMake(rs.getString(2));
               car.setCarModel(rs.getString(3));
               car.setYear(rs.getString(4));
               
               list.add(car);
               
            }
            
            
        }catch (SQLException ex) {
        
            result.setMessage(ex.getSQLState());
            System.out.print(result);
        }
        
        return list;
        
    }
    
    public Response addData(Car car) {
    
        Response result = new Response();
       
        try {
            
            PreparedStatement statement = conn.prepareStatement("INSERT INTO car (vin, make, model, year, details) VALUES(?, ?, ?, ?, ?)");
            
            statement.setString(1,car.getVin());
            statement.setString(2, car.getCarMake());
            statement.setString(3, car.getCarModel());
            statement.setString(4, car.getYear());
            statement.setString(5, car.getVehicleDetails());
        
            statement.execute();
            result.setMessage("Database upload sucessful!!!!");
            
        }catch(SQLException ex) {
            result.setMessage(ex.getSQLState());
        }
        
        return result;
    }
    
    public Response sell(Buyer buyer) {
        
        Response result = new Response();
        
        try {
        
            String sql = "INSERT INTO buyer "
                    + "(vin, first_name, last_name, address, phone_number, Purchase_price, total_paid)"  +
                    " VALUES(?, ?, ?, ?, ?, ?, ?)";
           
            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, buyer.getVin());
            stmt.setString(2, buyer.getFirstName());
            stmt.setString(3, buyer.getLastName());
            stmt.setString(4, buyer.getAddress());
            stmt.setString(5, buyer.getPhoneNumber());
            stmt.setInt(6, buyer.getPurchasePrice());
            stmt.setInt(7, buyer.getTotalPaid());
            
            stmt.execute();
            
        } catch(SQLException ex) {
        
            result.setMessage(ex.getMessage() );
        }
        
        return result;
    
      }
    
    public Response removeData(String vin) {
   
       Response result = new Response();
       
       try {
           
           PreparedStatement stmt = conn.prepareStatement("DELETE FROM car WHERE vin = ?");
           
           stmt.setString(1, vin);
           
           stmt.execute();
           
           result.setMessage("Data removed");
           
       }catch(SQLException ex) {
       
           result.setMessage(ex.getSQLState());
           
       }
       
       return result;
   }
    
    public Response editingData(String vin, String editArea, String edit) {
   
       Response result = new Response();
       
       
       
       try{
           
           PreparedStatement stmt = conn.prepareStatement("UPDATE car SET " + editArea + " = ? WHERE vin = ? ");
       
           stmt.setString(1, edit);
           stmt.setString(2, vin);
           
           stmt.execute();
           
           result.setMessage("Data updated!!!");
       }catch(SQLException ex) {
           
       
           System.out.print(ex.getSQLState());
       }
       
       return result;
       
   }
   
   public List<Car> searchDB(String vin) {
       
       List<Car> car = new ArrayList<>();
   
       try{
           
           PreparedStatement stmt = conn.prepareStatement("SELECT make, model, year, vin, details FROM car WHERE vin = ?");
           
           stmt.setString(1, vin);
           
           ResultSet rs =  stmt.executeQuery();
           
           while(rs.next()) {
           
               Car result = new Car();
               result.setVin(rs.getString(1));
               result.setCarMake(rs.getString(2));
               result.setCarModel(rs.getString(3));
               result.setYear(rs.getString(4));
               result.setVehicleDetails(rs.getString(5));
                
               car.add(result);
           }
       }catch(SQLException ex ) {
       
           System.out.print(ex.getSQLState());
       }
       
       return car;
   }
    
}
