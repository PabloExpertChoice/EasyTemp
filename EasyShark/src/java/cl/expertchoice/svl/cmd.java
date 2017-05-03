package cl.expertchoice.svl;

import cl.expertchoice.clases.Recurso;
import cl.expertchoice.clases.Usuario;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import soporte.D;

@WebServlet(name = "cmd", urlPatterns = {"/cmd"})
public class cmd extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Usuario usu_session = D.getUsuarioSesion(request);
        if (D.isSesionActiva(request)) {
            if (request.getParameter("recurso") != null) {
                String url = "";
                for (Recurso x : usu_session.getRecursos()) {
                    if (x.getId() == Integer.parseInt(request.getParameter("recurso"))) {
                        url = x.getUrl();
                        break;
                    }
                }
                D.toPage(url, request, response, this);
            } else if (request.getParameter("code") != null) {
                String in_code = request.getParameter("code");
                switch (in_code) {
                    case "inicio": {
                        D.toPage("/index.jsp", request, response, this);
                        break;
                    }
                    case "risktier_config": {
                        D.toPage("/risktier_config.jsp", request, response, this);
                        break;
                    }
                    case "risktier_tree": {
                        D.toPage("/risktier_tree.jsp", request, response, this);
                        break;
                    }
                    default: {
                        D.toPage("/index.jsp", request, response, this);
                        break;
                    }
                }
            } else {
                String url_home = D.getUsuarioSesion(request).getRecursos().get(0).getUrl();
                D.toPage(url_home, request, response, this);
            }
        } else {
            D.toPage(D.PAGE_LOGIN, request, response, this);
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
            Logger.getLogger(cmd.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(cmd.class.getName()).log(Level.SEVERE, null, ex);
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
