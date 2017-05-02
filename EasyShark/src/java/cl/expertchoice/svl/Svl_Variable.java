package cl.expertchoice.svl;

import cl.expertchoice.beans.BnVariable;
import cl.expertchoice.clases.Variable;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;
import soporte.D;

public class Svl_Variable extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, JSONException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String accion = request.getParameter("accion");
            JSONObject json = new JSONObject();
            switch (accion) {
                case "listar": {
                    BnVariable bnVariable = new BnVariable();
                    ArrayList<Variable> arr = bnVariable.listarATB();
                    System.out.println(arr.toString());
                    if (arr.size() > 0) {
                        json.put("estado", D.EST_OK);
                        json.put("datos", arr);
                    } else {
                        json.put("estado", D.EST_NORESULTADO);
                        json.put("descripcion", "Sin datos");
                    }

                    response.getWriter().print(json);
                    break;
                }

                case "listar-atb": {
                    ArrayList<Variable> arr = new BnVariable().listarATB();
                    if (arr.size() > 0) {
                        json.put("estado", 200);
                        json.put("datos", arr);
                    } else {
                        json.put("estado", 405);
                        json.put("descripcion", "Sin datos");
                    }

                    response.getWriter().print(json);
                    break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Svl_Variable.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (JSONException ex) {
            Logger.getLogger(Svl_Variable.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (JSONException ex) {
            Logger.getLogger(Svl_Variable.class.getName()).log(Level.SEVERE, null, ex);
        }
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
