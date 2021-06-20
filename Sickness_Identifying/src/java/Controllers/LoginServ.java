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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CHRIS MALEMA
 */
public class LoginServ extends HttpServlet {

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
        String uname=request.getParameter("uname");
        String pword=request.getParameter("pword");
        String options=request.getParameter("Option");
        
        LoginBean login=new LoginBean();
        login.setUsername(uname);
        login.setPassword(pword);
        
        LoginBean[] log=new LoginBean[3];
        log[0]=login;
        
        HttpSession hs=request.getSession(true);
        hs.setAttribute("LG", log);
        
        PreparedStatement ps;
        PreparedStatement ps1;
        ResultSet rs;
        ResultSet rs1;
        //SQL query for trieving username and password from mySQL database
        String sql="SELECT * FROM `users` WHERE `username`=? and `password`=?";
        
        try
        {
          ps=MY_Connector.getConnection().prepareStatement(sql);
          
          ps.setString(1, uname);
          ps.setString(2, pword);
          
          rs=ps.executeQuery();
          
          if(rs.next())
          {
               HttpSession ms = request.getSession();
                ms.setAttribute("LogRset", rs);
                try
                {
                    
                String query ="SELECT users.username, users.contacts,users.email,bookings.book_ID,bookings.gender,bookings.appoinment_date,bookings.appoinment_time FROM users,bookings WHERE users.username=? ORDER BY bookings.appoinment_date;";
                ps1=MY_Connector.getConnection().prepareStatement(query);
                ps1.setString(1, uname);
                rs1=ps1.executeQuery();
                 if(rs1.next())
                {
                 HttpSession ms1=request.getSession();
                 ms.setAttribute("LogRset", rs1);
                }
                }
                catch(Exception ex)
                {
                    Logger.getLogger(User_RegisterServ.class.getName()).log(Level.SEVERE, null, ex);
                }

           String s1=rs.getString("usertype");
           if(options.equalsIgnoreCase("Patient") && (s1.equalsIgnoreCase("patient")))
           {
            response.sendRedirect("PatientPage.jsp");
           }
           else
           if(options.equalsIgnoreCase("Doctor") && (s1.equalsIgnoreCase("doctor")))
           {
                 
             response.sendRedirect("Doctor_view_AppServ");
           }
   
           else
           {
            out.println("username/passowrd Incorrect");
           }
          }
          
        }
        catch(Exception ex)
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
