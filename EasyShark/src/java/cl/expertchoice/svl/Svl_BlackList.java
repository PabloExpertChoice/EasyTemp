/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.svl;

import cl.expertchoice.beans.BnBlackList;
import cl.expertchoice.clases.RegistroBlackList;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jgalleguillos
 */
public class Svl_BlackList extends HttpServlet {

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
            String accion = request.getParameter("accion");
            switch (accion) {
                case "setBlackList": {
                        String id_empresa = request.getParameter("id_empresa");
                        String comentarioBL = request.getParameter("comentario");
                        String estadoBL = request.getParameter("estado");
                        String rut = request.getParameter("rut");
                        BnBlackList bn = new BnBlackList();  
                        Boolean insertado = bn.insertarBlackList(Integer.parseInt(id_empresa),
                                comentarioBL, Integer.parseInt(estadoBL), 10234567, Integer.parseInt(rut));
                        out.print(insertado);
                        break; 
                }
                case "verBlackList": {
                        String rut = request.getParameter("rut");
                        BnBlackList bn = new BnBlackList();  
                        ArrayList<RegistroBlackList> list= bn.verBlackListxRut(Integer.parseInt(rut));
                        String json = new Gson().toJson(list);
                        out.print(json);                        
                        break; 
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Svl_BlackList.class.getName()).log(Level.SEVERE, null, ex);
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
    private void toPage(String page, HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            getServletContext().getRequestDispatcher(page).forward(request, response);
        } catch (IOException ioe) {
            ioe.printStackTrace(System.err);
        }
    }

}
