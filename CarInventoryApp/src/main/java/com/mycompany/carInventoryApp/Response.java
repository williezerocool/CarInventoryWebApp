/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.carInventoryApp;

/**
 *
 * @author kendrabooker
 */
public class Response {
    
    private boolean success;
    private String message;
   
    public boolean isSuccess() {
        return success;
    }
    
    public void setSuccess(boolean success) {
        this.success = success;
    }
   
    public String getMessage() {
        return message;
    }
   
    public void setMessage(String message) {
        this.message = message;
    }
    
}
