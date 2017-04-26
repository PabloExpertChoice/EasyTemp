/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.svl;

import cl.expertchoice.beans.BnAdminRiskTier;
import cl.expertchoice.beans.BnRiskTier;
import cl.expertchoice.clases.AdminRiskTier;
import cl.expertchoice.clases.RiskTier;
import cl.expertchoice.clases.TablaRiskIndicator;
import cl.expertchoice.clases.ValorTablaCore;
import cl.expertchoice.clases.Variable;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cl.expertchoice.beans.BnTablaRiskIndicator;
import cl.expertchoice.beans.BnValorTablaCore;
import cl.expertchoice.clases.DetalleAdminRiskTier;
import com.google.gson.JsonArray;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import soporte.D;

/**
 *
 * @author ignacio
 */
@WebServlet(name = "Svl_RiskTier", urlPatterns = {"/Svl_RiskTier"})
public class Svl_RiskTier extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String accion = request.getParameter("accion");
            JsonObject json = new JsonObject();

            switch (accion) {
                case "listar": {
                    ArrayList<RiskTier> arr = new BnRiskTier().listar();
                    //ArrayList<RiskTier> arr = null;

                    if (arr != null) {
                        json.addProperty("estado", D.EST_OK);
                        json.add("datos", new Gson().toJsonTree(arr));
                    } else {
                        json.addProperty("estado", D.EST_NORESULTADO);
                        json.addProperty("descripcion", "Sin datos");
                    }

                    response.getWriter().print(json);
                    break;
                }

                case "listar-riskindicator": {
                    ArrayList<TablaRiskIndicator> arr = new BnTablaRiskIndicator().listar2();
                    ArrayList<ValorTablaCore> vtc = new BnValorTablaCore().listar();
                    if (arr != null) {
                        json.addProperty("estado", D.EST_OK);
                        json.add("datos", new Gson().toJsonTree(arr));
                        json.add("def", new Gson().toJsonTree(vtc));
//                        json.add("def", vtc);
                    } else {
                        json.addProperty("estado", D.EST_NORESULTADO);
                        json.addProperty("descripcion", "Sin datos");
                    }

                    response.getWriter().print(json);
                    break;          
                }

                case "guardar-risktier": {
                    JSONObject jsonRiskTier = new JSONObject(request.getParameter("obRiskTier"));
                    int idTipoRiskTier = jsonRiskTier.getInt("tipoRiskTier");
                    int numFilas = jsonRiskTier.getInt("filas");
                    int numCols = jsonRiskTier.getInt("columnas");
                    int idOrigenX = jsonRiskTier.getJSONObject("variableX").getInt("id");
                    int idOrigenY = jsonRiskTier.getJSONObject("variableY").getInt("id");
                    JSONArray origenX = jsonRiskTier.getJSONObject("variableX").getJSONArray("datos");
                    JSONArray origenY = jsonRiskTier.getJSONObject("variableY").getJSONArray("datos");
                    JSONArray jsonClasificacion = jsonRiskTier.getJSONArray("datos");
                    TablaRiskIndicator riskIndicator = new TablaRiskIndicator(BigInteger.ZERO, new Variable(idOrigenX, null), new Variable(idOrigenY, null), numFilas, numCols);
                    json = new JsonObject();
                    if (new BnTablaRiskIndicator().guardarRiskInidcator(riskIndicator, origenX, origenY, jsonClasificacion, idTipoRiskTier)) {
                        json.addProperty("estado", D.EST_OK);
                        json.add("datos", new JsonObject());
                    } else {
                        json.addProperty("estado", D.EST_NORESULTADO);
                        json.addProperty("descripcion", "Error al guardar Risk Tier");
                    }
                    response.getWriter().print(json);
                    break;
                    
                }
                
                case "listar-admin-risktier": {
                    json = new JsonObject();
                    ArrayList<AdminRiskTier> arr = new BnAdminRiskTier().listar();
                    if (arr.size() > 0) {
                        json.addProperty("estado", D.EST_OK);
                        json.add("datos", new Gson().toJsonTree(arr));
                    } else {
                        json.addProperty("estado", D.EST_NORESULTADO);
                        json.addProperty("descripcion", "Sin datos");
                    }
                    response.getWriter().print(json);
                    break;
                }

                case "update-detalle-admin": {
                    JSONArray jsonData = new JSONArray(request.getParameter("detalles"));
                    for (int i = 0; i < jsonData.length(); i++) {
                        JSONObject ob = jsonData.getJSONObject(i);
                        new BnAdminRiskTier().actualizar(ob.getString("valor"), ob.getInt("idDetalleAdminRiskTier"));
                    }

                    json = new JsonObject();
                    json.addProperty("estado", D.EST_OK);
                    response.getWriter().print(json);
                    break;
                }

                case "listar-detalle-admin-risktier": {
                    json = new JsonObject();
                    int idAdminRiskTier = Integer.parseInt(request.getParameter("idAdminRiskTier"));
                    ArrayList<DetalleAdminRiskTier> arr = new BnAdminRiskTier().listarDetalles(idAdminRiskTier);
                    if (arr.size() > 0) {
                        json.addProperty("estado", D.EST_OK);
                        json.add("datos", new Gson().toJsonTree(arr));
                    } else {
                        json.addProperty("estado", D.EST_NORESULTADO);
                        json.addProperty("descripcion", "Error al listar Risk Tier");
                    }
                    response.getWriter().print(json);
                    break;
                }

                case "listar-depuracion-renta": {
                    json = new JsonObject();
//                    ArrayList<DepuracionRenta> arr = new BnDepuracionRenta().listar();
//                    if (arr.size() > 0) {
//                        json.addProperty("estado", D.EST_OK);
//                        json.add("datos", new Gson().toJsonTree(arr));
//                    } else {
//                        json.addProperty("estado", D.EST_NORESULTADO);
//                        json.addProperty("descripcion", "No data");
//                    }
//                    response.getWriter().print(json);
                    break;
                }

                case "guardar-depuracion-renta": {
                    json = new JsonObject();
//                    ArrayList<DepuracionRenta> arr = new ArrayList<>();
//
//                    DepuracionRenta dr = new DepuracionRenta();
//                    dr.setId(Integer.parseInt(request.getParameter("id_deuda_cred_hipotecario")));
//                    dr.setPorcentajeRenta(request.getParameter("deuda_cred_hipotecario"));
//                    arr.add(dr);
//
//                    dr = new DepuracionRenta();
//                    dr.setId(Integer.parseInt(request.getParameter("id_deuda_comercial")));
//                    dr.setPorcentajeRenta(request.getParameter("deuda_comercial"));
//                    arr.add(dr);
//
//                    dr = new DepuracionRenta();
//                    dr.setId(Integer.parseInt(request.getParameter("id_deuda_credito_consumo")));
//                    dr.setPorcentajeRenta(request.getParameter("deuda_credito_consumo"));
//                    arr.add(dr);
//
//                    boolean flag = new BnDepuracionRenta().actualizar(arr);
//                    if (flag) {
//                        json.addProperty("estado", D.EST_OK);
//                    } else {
//                        json.addProperty("estado", D.EST_NORESULTADO);
//                        json.addProperty("descripcion", "Error al guardar datos");
//                    }
//
//                    response.getWriter().print(json);
                    break;
                }

                case "arbol-risk-tier": {
                    json = new JsonObject();
                    JsonArray resp = new BnRiskTier().listarArbol2();

                    if (resp != null) {
                        json.addProperty("estado", D.EST_OK);
                        json.add("datos", resp);
                    } else {
                        json.addProperty("estado", D.EST_NORESULTADO);
                        json.addProperty("descripcion", "Sin datos");
                    }

                    response.getWriter().print(json);
                    break;
                }
            }
        } catch (JSONException ex) {
            Logger.getLogger(Svl_RiskTier.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(Svl_RiskTier.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(Svl_RiskTier.class.getName()).log(Level.SEVERE, null, ex);
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
