/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import com.mycompany.carInventoryApp.Car;
import com.mycompany.carinventoryappDB.CarInventoryDBDataStore;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "addServlet", urlPatterns = {"/addServlet"})
public class addVehicleToDBServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            String vin = request.getParameter("vin");
            String make = request.getParameter("make");
            String model = request.getParameter("model");
            String year = request.getParameter("year");
            String details = request.getParameter("details");
            
            CarInventoryDBDataStore db = new CarInventoryDBDataStore();
            Car car = new Car();
            car.setVin(vin);
            car.setCarMake(make);
            car.setCarModel(model);
            car.setYear(year);
            car.setVehicleDetails(details);
            db.addData(car);
            
        } catch (SQLException ex) {
            Logger.getLogger(addVehicleToDBServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
