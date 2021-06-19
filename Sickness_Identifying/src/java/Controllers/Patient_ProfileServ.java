/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.LoginBean;
import Beans.MY_Connector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NDIVHO MUKWEVHO
 */
@WebServlet(name = "GuestServ", urlPatterns = {"/GuestServ"})
public class Patient_ProfileServ extends HttpServlet {

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
        
        HttpSession LoginSession = request.getSession();
        LoginBean lBean = (LoginBean)LoginSession.getAttribute("LogSession");
        
        PrintWriter p = response.getWriter();
        
        try{ 

            
            Statement st;
            st=MY_Connector.getConnection().createStatement();
            
            ResultSet LoginRset = null;
            
            String sql = "select * from users where USERNAME = '"+lBean.getUsername()+ "' AND PASSWORD = '"+lBean.getPassword()+"' ";
            
            LoginRset = st.executeQuery(sql);
            if(LoginRset.next()){
                HttpSession ms = request.getSession();
                ms.setAttribute("LogRset", LoginRset);
                RequestDispatcher rd = request.getRequestDispatcher("PatientPage.jsp");
                rd.forward(request, response);
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
