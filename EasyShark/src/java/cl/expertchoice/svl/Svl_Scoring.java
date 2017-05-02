/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.svl;

import HtmlUnit.HtmlUnit_pjud2;
import cl.expertchoice.beans.BnScore;
import cl.expertchoice.clases.ConsultaScore;
import cl.expertchoice.metodo.Metodos;
import com.google.gson.JsonObject;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ignacio
 */
public class Svl_Scoring extends HttpServlet {

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
        try {
            String accion = request.getParameter("accion");            
            JsonObject json = new JsonObject();
            switch (accion) {
                case "scoring": {
                    int rut = Integer.parseInt(request.getParameter("rut"));
                    String dv = request.getParameter("dv");
                    JsonObject jsonCalculos = new JsonObject();
                    
                    int mesActual = BnScore.obtenerScoring(rut, dv, 0);
                    int mes2 = BnScore.obtenerScoring(rut, dv, 1);
                    int mes3 = BnScore.obtenerScoring(rut, dv, 2);
                    int mes4 = BnScore.obtenerScoring(rut, dv, 3);
                    
                    jsonCalculos.addProperty("mes1", mesActual);
                    jsonCalculos.addProperty("mes2", mes2);
                    jsonCalculos.addProperty("mes3", mes3);
                    jsonCalculos.addProperty("mes4", mes4);
                    
                    json.addProperty("estado", 200);
                    json.add("datos", jsonCalculos);
                    response.getWriter().print(json);
                    break;                
                }
                //Codigo A.M:
                case "ObtenerScore": {
                    
                    int score = Integer.parseInt(request.getParameter("score"));
                    JsonObject jsonCalculos = new JsonObject();
                    Metodos metodo = new Metodos();
                    String scoreText = metodo.ObtenerScore(score);
                    
                    jsonCalculos.addProperty("scoreText", scoreText);                    
                    json.addProperty("estado", 200);
                    json.add("datos", jsonCalculos);
                    response.getWriter().print(json);
                    
                    break;
                }
            }
        } catch (Exception ex) {
//            response.getWriter().print("{ \"estado\" : " + D.EST_ERROR + ", \"descripcion\" : \"" + ex + "\" }");
//            D.escribirLog(ex, "Svl_Cliente");
//            ex.printStackTrace();
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
