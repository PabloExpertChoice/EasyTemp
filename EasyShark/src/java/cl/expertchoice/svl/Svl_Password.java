package cl.expertchoice.svl;

import cl.expertchoice.beans.BnUsuario;
import cl.expertchoice.clases.Status;
import cl.expertchoice.clases.Usuario;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import soporte.D;
import soporte.ENCR;
import soporte.Encriptar;

/**
 *
 * @author jhonncard
 */
public class Svl_Password extends HttpServlet {

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
            BnUsuario bn = new BnUsuario();
            if (request.getParameter("code") != null) {
                switch (request.getParameter("code")) {
                    //se modifica la clave
                    case "cambiar-password": {
                        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
                        Usuario usu = bn.obtener(idUsuario);
                        if (usu != null) {
                            String password = ENCR.toMD5(request.getParameter("password"));
                            int id = new Integer(request.getParameter("idUsuario"));
                            Usuario u = new Usuario();
                            u.setId(id);
                            u.setPassword(password);
                            //cambia el estado a 5 = pendiente de confirmacion
                            //luego cuando el usuario cambie su contraseña pasa a tener un estado 2 = activo
                            u.setEstado(new Status(5, null, null));
                            bn.actualizarPassword(u);
                            bn.cambiarEstado(u);
                            JsonObject json = new JsonObject();
                            json.addProperty("estado", D.EST_OK);
                            out.println(json);
                        }
                        break;
                    }
                }
            } else {
                //se crea clave por primera vez
                if (request.getParameter("key") != null) {
                    String codigo = request.getParameter("key");
                    codigo = codigo.replace(" ", "+");
                    int idUsuario = 0;
                    try {
                        idUsuario = Integer.parseInt(Encriptar.desencriptar(codigo));
                    } catch (Exception ex) {
                    }

                    Usuario usu = bn.obtener(idUsuario);
                    if (usu != null) {
                        request.setAttribute("usuario", usu);
                    }

                    request.setAttribute("msgTipo", "2");
                    toPage("/easy_cambiar_password.jsp", request, response);
                } else {
                    response.sendRedirect("cmd");
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
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
