/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.carInventoryApp;

import java.time.LocalDate;

/**
 *
 * @author kendrabooker
 */
public class Buyer {
    
    private String firstName, lastName, address, vin, phoneNumber;
    private int purchasePrice, payment, totalPaid, downPayment;
    private LocalDate createDate = LocalDate.now();
    
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getPhoneNumber() {
        return this.phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String getVin() {
        return this.vin;
    }
    
    public void setVin(String vin) {
        this.vin = vin;
    }
    
    public Integer getPurchasePrice() {
        return this.purchasePrice;
    }
    
    public void setPurchasePrice(int purchasePrice) {
        this.purchasePrice = purchasePrice;
    }
    
    public Integer getPaymentHistory() {
        return this.payment;
    }
    
    public void setPaymentHistory(int payment) {
        this.payment = payment;
    }
    
    public Integer getTotalPaid() {
        return this.totalPaid;
    }
    
    public void setTotalPaid(int totalPaid) {
        this.totalPaid = totalPaid;
    }
    
    public Integer getDownPayment() {
        return this.downPayment;
    }
    
    public void setDownPayment(int downPayment) {
        this.downPayment = downPayment;
    }
    
    public LocalDate getCreateDate() {
        return this.createDate;
    }
    
    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
    }
    
}
