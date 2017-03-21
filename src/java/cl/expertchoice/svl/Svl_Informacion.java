package cl.expertchoice.svl;

import cl.expertchoice.xml.bnsInformacion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;

/**
 *
 * @author erick
 */
public class Svl_Informacion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession sesion = request.getSession();
//            Usuario usuario = (Usuario) sesion.getAttribute("sesion");

//            String rut = request.getParameter("rut");
//            String dv = request.getParameter("dv");
            String rut = "1";
            String dv = "1";
            bnsInformacion bn = new bnsInformacion();
            JSONObject jsonInformacion = bn.obtenerInformacion(rut + "-" + dv);
            if (jsonInformacion != null) {
                int rutP = Integer.parseInt(rut);
                request.setAttribute("datos", jsonInformacion);
//                if (rutP > 50000000) {
//                    toPage("/InformacionJuridico.jsp", request, response);
//                } else {
//                    toPage("/InformacionNatural.jsp", request, response);
//                }
                toPage("/transunion.jsp", request, response);
            } else {
                request.setAttribute("msg", "No se encuentran datos");
                toPage("/index.jsp", request, response);
            }

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
