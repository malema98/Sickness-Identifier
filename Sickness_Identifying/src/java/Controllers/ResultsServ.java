package Controllers;

import Beans.MY_Connector;
import Beans.SymptomsBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;
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
 * @author CHRIS MALEMA
 */
public class ResultsServ extends HttpServlet
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String[] sypmtomate = request.getParameterValues("name");
		List list = Arrays.asList(sypmtomate);
		request.setAttribute("name", list);

        PreparedStatement ps;
        ResultSet rs;

        String query =" SELECT sicknesses.sickness_name, symptoms.name,causes.tuberculosis,treatment.tuberculosis FROM sicknesses,symptoms,causes,treatment WHERE symptoms.symptoms_id=2 and sicknesses.list_sickness= '1,2,3,4,5'  ";
        
        try
        {
          ps=MY_Connector.getConnection().prepareStatement(query);
          rs=ps.executeQuery(query);

        HttpSession hs=request.getSession(true);
        hs.setAttribute("Syp", rs);
       RequestDispatcher rd = request.getRequestDispatcher("Results.jsp");
       rd.forward(request, response);

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
