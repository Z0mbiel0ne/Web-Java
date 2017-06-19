/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import testBeans.Kundendaten;
import testBeans.NachrichtenListe;

/**
 *
 * @author Marcel
 */
@WebServlet("/GetData")
public class GetData extends HttpServlet {

    static NachrichtenListe liste = new NachrichtenListe();
    int counter = 1;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        switch (request.getParameter("action")) {
            case "all":
                all(request, response);
                break;
                
            case "form":
                form(request, response);
                break;
                
            case "lol":
                details(request, response);
                break;
        }
    }

    protected void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("NachrichtenListe", liste.getListe());
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
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

    private void form(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("Details.jsp");
        rd.include(request, response);
        Kundendaten data = new Kundendaten();
        data.setVorname(request.getParameter("vorname"));
        data.setNachname(request.getParameter("nachname"));
        data.setDatum(request.getParameter("datum"));
        data.setGrund(request.getParameter("grund"));
        data.setText(request.getParameter("text"));
        data.setID(counter);
        liste.add(data);
        counter++;
    }

    private void details(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Kundendaten k : liste.getListe()) {
            if (id == k.getID())
            {
                request.setAttribute("Kundendaten", k);
                break;
            }
        }
        RequestDispatcher rd = request.getRequestDispatcher("Details.jsp");
        rd.include(request, response);
        
    }

}
