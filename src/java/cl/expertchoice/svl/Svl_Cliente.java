package cl.expertchoice.svl;

import HtmlUnit.HtmlUnit_pjud2;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.math.BigInteger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Svl_Cliente extends HttpServlet {

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
                case "getDatosPJUD": {
                    int rut = Integer.parseInt(request.getParameter("rut"));
                    String dv = request.getParameter("dv");
                    String nombre = request.getParameter("nombre") != null ? request.getParameter("nombre") : "";
                    String apePaterno = request.getParameter("apePaterno") != null ? request.getParameter("apePaterno") : "";
                    String apeMaterno = request.getParameter("apeMaterno") != null ? request.getParameter("apeMaterno") : "";

                    HtmlUnit_pjud2 pjud = new HtmlUnit_pjud2();
                    pjud.setRut(rut);
                    pjud.setDv(dv);
                    pjud.setNombre(nombre.trim().toUpperCase());
                    pjud.setApePaterno(apePaterno.trim().toUpperCase());
                    pjud.setApeMaterno(apeMaterno.trim().toUpperCase());
                    json = pjud.buscarCausas();
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

    public static double round(double value, int places) {
        if (places < 0) {
            throw new IllegalArgumentException();
        }

        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }

    public static long getMin(long[] inputArray) {
        long minValue = inputArray[0];
        for (int i = 1; i < inputArray.length; i++) {
            if (inputArray[i] < minValue) {
                minValue = inputArray[i];
            }
        }
        return minValue;
    }

    /**
     * Realiza el redirect a la página del contexto indicada. Ésta debe tener el
     * formato <code>/pagina</code>.
     *
     * @param page
     * @param request
     * @param response
     * @throws ServletException
     */
    private void toPage(String page, HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            getServletContext().getRequestDispatcher(page).forward(request, response);
        } catch (IOException ioe) {
//            D.log().severe("Error en depacho a página '" + page + "': " + ioe.toString());
//            ioe.printStackTrace(System.err);
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
