/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.MY_Connector;
import Beans.RegisterBean;
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
public class User_RegisterServ extends HttpServlet {

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
        //String name=request.getParameter("name");
      String username=request.getParameter("regUname");
      String password=request.getParameter("regPword");
      String email=request.getParameter("email");
      int contacts=Integer.parseInt(request.getParameter("contacts"));

      RegisterBean register=new RegisterBean();
      //register.setName(name);
      register.setUsername(username);
      register.setPasssowrd(password);
      register.setEmail(email);
      register.setCellphone(contacts);
      
      RegisterBean[] regBean=new RegisterBean[3];
      regBean[0]=register;
      
      HttpSession hs=request.getSession(true);
      hs.setAttribute("RG", regBean);
      RequestDispatcher rd=request.getRequestDispatcher("output.jsp");
      rd.forward(request, response);
      
     PreparedStatement ps;
     String query="INSERT INTO `users`(`username`, `password`, `email`, `contacts`, `usertype`) VALUES ( ?,?,?,?,'patient');";

     try
     {
      ps=MY_Connector.getConnection().prepareStatement(query);
     ps.setString(1, username);
     ps.setString(2, password);
     ps.setString(3, email);
     ps.setInt(4, contacts);
     
     
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
