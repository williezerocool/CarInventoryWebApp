/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.carInventoryApp;

import java.sql.SQLException;
import java.util.List;
import com.mycompany.carinventoryappDB.*;

/**
 *
 * @author kendrabooker
 */
public class CarInventoryApp {
    
    private UI ui = new UI();
    private CarInventoryDBDataStore carDB;
    
    public CarInventoryApp() throws SQLException {
  
        this.carDB = new CarInventoryDBDataStore();
    }
    
    public void run() throws SQLException {

        ui.displayWelcome();

        int selection = UI.MIN_MENU_ITEM;
        while (selection >= UI.MIN_MENU_ITEM && selection < UI.MAX_MENU_ITEM) {

            selection = ui.getMenuSelection();

            switch (selection) {
                case UI.MENU_LIST:
                    ListCars();
                    break;
                case UI.MENU_ADD:
                    addCar();
                    break;
                case UI.MENU_SELL:
                    sellCar();
                    break;
                case UI.MENU_REMOVE:
                    remove();
                    break;
                case UI.MENU_EDIT:
                    editCarDetails();
                    break;
                case UI.MENU_SEARCH:
                    carSearch();
                    break;
            }
        }

        ui.displayGoodbye();
    }
    
    private void ListCars() throws SQLException {
        
        List<Car> list = carDB.listData();
        
        ui.displayCars(list);
    }
    
    private void addCar() {
        
        Car car = ui.createCar();
        
        Response result = carDB.addData(car);
       
        ui.displayResponse(result);
     }
    
    private void sellCar() {
      
        Buyer buyer = new Buyer();
        
        buyer.setVin(ui.getBuyersVin());
        buyer.setFirstName(ui.getBuyersFirstName());
        buyer.setLastName(ui.getBuyersLastName());
        buyer.setPhoneNumber(ui.getBuyersPhoneNumber());
        buyer.setPurchasePrice(ui.getBuyersPurchasePrice());
        buyer.setTotalPaid(ui.getBuyerstotalPaid());
        
        Response result = carDB.sell(buyer);
        
        ui.displayResponse(result);
       
    }
    
    private void remove() {
       
       String vin = ui.getCarVin();
       
       Response result = carDB.removeData(vin);
       
       ui.displayResponse(result);
    }
    
    private void editCarDetails(){
       
        String vin = ui.getCarVin();
        String editArea = ui.editArea();
        String edit = ui.edit();
        
        Response result = carDB.editingData(vin, editArea, edit);
        
        ui.displayResponse(result); 
        
    }
    
    private void carSearch() {
       
        String vin = ui.getCarVin();
        
        List<Car> searchResult = carDB.searchDB(vin);
        
        ui.displayCars(searchResult);
    }
    
}
