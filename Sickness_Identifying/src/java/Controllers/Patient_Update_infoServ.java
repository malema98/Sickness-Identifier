/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.MY_Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MALEMA CHRIS
 */
public class Patient_Update_infoServ extends HttpServlet {

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
        PrintWriter out=response.getWriter();
         String uname="";
         String password="";
         String email="";
         String contact ="";
     if(request.getParameter("update")!=null)
     {
        uname=request.getParameter("uname");
        password=request.getParameter("pass");
        email=request.getParameter("email");
        contact=request.getParameter("contact");
     }
     Statement ps;
       
        ResultSet rs;
        String sql = "update users set username='"+uname+"', password='"+password+"',email='"+email+"', contacts='"+contact+"' where username='"+uname+"'";
        try
        {
          ps=MY_Connector.getConnection().createStatement();
          rs=ps.executeQuery(sql);
         // RequestDispatcher rd = request.getRequestDispatcher("Patient_Profile.jsp");
          //rd.forward(request, response);
           out.println("<!DOCTYPE html>");
                     out.println("<html>");
                     out.println("<head>");
                     out.println("<title>Login</title>");            
                     out.println("</head>");
                     out.println("<body>");
                     out.println("<h1> Password and Email of "+ uname +" is Successfully Updated </h1>");
                     out.println("</body>");
                     out.println("</html>");

        }
        catch(Exception ex)
        {
            Logger.getLogger(SymptoServ.class.getName()).log(Level.SEVERE, null, ex);
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
