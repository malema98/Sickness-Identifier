/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.BookingBean;
import Beans.MY_Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author CHRIS MALEMA
 */
public class Appointment_BookingServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String street=request.getParameter("street");
        String city=request.getParameter("city");
        String province=request.getParameter("province");
        String postal_code=request.getParameter("postalcode");
        String app_date=request.getParameter("date");
        String app_time=request.getParameter("time");
        String email=request.getParameter("email");
        String contacts=request.getParameter("contacts");
        
        BookingBean book=new  BookingBean();
        book.setName(name);
        book.setAppointment_date(app_date);
        book.setCity(city);
        book.setContacts(contacts);
        book.setEmail(email);
        book.setProvince(province);
        book.setStreet(street);
        book.setTime(app_time);
        book.setGender(gender);
        book.setPostal_code(postal_code);
        
        BookingBean[] appBook=new BookingBean[3];
        appBook[0]=book;
        
        HttpSession hs=request.getSession(true);
        hs.setAttribute("BB", appBook);
                
        RequestDispatcher rd=request.getRequestDispatcher("Booking_Details_Confirm.jsp");
        rd.forward(request, response);
        PreparedStatement ps;
     String query="INSERT INTO `bookings`(`gender`, `street`, `city`, `province`, `postal_code`, `appoinment_date`, `appoinment_time`,`user_ID`) VALUES (?,?,?,?,?,?,?,4)";
     try
     {
      ps=MY_Connector.getConnection().prepareStatement(query);
     ps.setString(1, gender);
     ps.setString(2, street);
     ps.setString(3, city);
     ps.setString(4, province);
     ps.setString(5, postal_code);
     ps.setString(6, app_date);
     ps.setString(7, app_time);

     
     try 
       {
       if(ps.executeUpdate() !=0)
         {
                            JOptionPane.showMessageDialog(null, "Successfully Registered");
          }
          else
          {
                            JOptionPane.showMessageDialog(null, "ERROR : Check your information");
           }
         }
        catch(Exception ex)
        {
          ex.printStackTrace();
        }
     }
     catch (SQLException ex)
     {
       Logger.getLogger(User_RegisterServ.class.getName()).log(Level.SEVERE, null, ex);
     }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
