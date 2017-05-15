/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcel
 */
@WebServlet("/GetData")
public class GetData extends HttpServlet {
Kundenliste kl = new Kundenliste();
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Rückgabe</title>");            
            out.println("</head>");
            out.println("<body>");
            String vorname = request.getParameter("vorname");
            String nachname = request.getParameter("nachname");
            String datum = request.getParameter("datum");
            String grund = request.getParameter("grund");
            out.print(request.getParameter("text"));
            out.print(request.getParameter("vorname"));
            out.print(request.getParameter("nachname"));
            out.print(request.getParameter("datum"));
            out.print(request.getParameter("grund"));
            String text = request.getParameter("text");
            Kontaktdaten kd = new Kontaktdaten(vorname, nachname, datum, grund, text);
            kl.add(kd);
            
            for (Kontaktdaten ks : kl) {
                System.out.println(ks.getVorname() + " " + ks.getNachname() + " " + ks.getDatum() + " " + ks.getGrund() + " " + ks.getText());
            }
            System.out.println(kd.getVorname() + " " + kd.getNachname() + " " + kd.getDatum() + " " + kd.getGrund() + " " + kd.getText());
            out.println("</body>");
            out.println("</html>");
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
