package cl.expertchoice.svl;

import cl.expertchoice.beans.BnSubsidiary;
import cl.expertchoice.clases.Status;
import cl.expertchoice.clases.Subsidiary;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cl.expertchoice.beans.BnEmail;
import cl.expertchoice.beans.BnUsuario;
import cl.expertchoice.clases.Perfil;
import cl.expertchoice.clases.Usuario;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONException;
import soporte.D;
import soporte.ENCR;

public class Svl_RegistroMeses extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            String accion = request.getParameter("accion");
            JsonObject json = null;
            if (accion != null) {
                switch (accion) {
                    case "crear-empresa": {
                        Subsidiary emp = new Subsidiary();
                        Usuario usu = new Usuario();

                        int rut = Integer.parseInt(request.getParameter("rut"));
                        String dv = request.getParameter("dv");
                        String nombre = request.getParameter("nombre");
                        String apellido = request.getParameter("apellido");
                        String email = request.getParameter("email");
                        String terminos = request.getParameter("terminos");

                        usu.setNombre(nombre);
                        usu.setApellidoPaterno(apellido);
                        usu.setCorreo(email);

                        BnUsuario bnUsu = new BnUsuario();
                        json = new JsonObject();
                        if (bnUsu.buscarPorCorreo(email) != null) {
                            json.addProperty("estado", D.EST_NORESULTADO);
                            json.addProperty("descripcion", "El correo <b>" + email + "</b> ya se encuentra registrado.");
                        } else if (new BnSubsidiary().buscarPorRut(rut) == null) {
                            json.addProperty("estado", D.EST_NORESULTADO);
                            json.addProperty("descripcion", "El empresa con el rut <b>" + rut + "-" + dv + "</b> ya se encuentra registrada.");
                        } else {
                            Subsidiary c = new BnSubsidiary().consultarWS(rut, dv);
                            if (c != null) {
                                emp.setNombre(c.getNombre() + " " + c.getApePaterno() + " " + c.getApeMaterno());
                                emp.setId(c.getId());

                                Status estado = new Status(1, null, null);
                                usu.setStatus(estado);

                                Perfil per = new Perfil(2, "");
                                usu.setPerfil(per);

                                usu.setSubsidiary(emp);
                                BnSubsidiary bnSub = new BnSubsidiary();
                                emp.setRut(rut);
                                emp.setDv(dv);
                                bnSub.crearEmpresa(emp, usu, rut, dv);
                                json.addProperty("estado", D.EST_OK);
                                json.addProperty("descripcion", "OK");
                            } else {
                                json.addProperty("estado", D.EST_NORESULTADO);
                                json.addProperty("descripcion", "Hubo un error al registrar la empresa. Porfavor intente mas tarde.");
                            }
                        }

                        response.getWriter().println(json);
                        break;
                    }

                    case "respuesta-crear-empresa": {
                        request.setAttribute("msgTipo", "1");
                        toPage("/easy_registro_ws_respuesta.jsp", request, response); //, this
                        break;
                    }

                    case "respuesta-crear-empresa-error": {
                        request.setAttribute("msgTipo", "2");
                        toPage("/easy_registro_ws_respuesta.jsp", request, response); //, this
                        break;
                    }

                    case "respuesta-cambio-password": {
                        request.setAttribute("msgTipo", "3");
                        toPage("/easy_registro_ws_respuesta.jsp", request, response); //, this
                        break;
                    }

                    case "respuesta-cambio-password-error": {
                        request.setAttribute("msgTipo", "4");
                        toPage("/easy_registro_ws_respuesta.jsp", request, response); //, this
                        break;
                    }
                    //codigo para usuario comun
                    case "crear-usuario-comun": {
                        Usuario usu = new Usuario();

                        String nombre = request.getParameter("nombre");
                        String apellidoPaterno = request.getParameter("apellidoPaterno");
                        String apellidoMaterno = request.getParameter("apellidoMaterno");
                        String email = request.getParameter("email");

                        usu.setNombre(nombre);
                        usu.setApellidoPaterno(apellidoPaterno);
                        usu.setApellidoMaterno(apellidoMaterno);
                        usu.setCorreo(email);

                        Usuario usuAdmin = (Usuario) request.getSession().getAttribute("sesion");
                        usu.setSubsidiary(usuAdmin.getSubsidiary());

                        BnUsuario bnUsu = new BnUsuario();
                        json = new JsonObject();
                        if (bnUsu.buscarPorCorreo(email) != null) {
                            json.addProperty("estado", D.EST_NORESULTADO);
                            json.addProperty("descripcion", "El correo <b>" + email + "</b> ya se encuentra registrado.");
                        } else {
                            //estado = creado
                            Status estado = new Status(1, null, null);
                            usu.setStatus(estado);
                            //perfil = analista, usuario comun
                            Perfil per = new Perfil(3, "");
                            usu.setPerfil(per);
                            //creo la contraseña temporal
                            String claveTemporal = D.getPassword();
                            //la encripto para la bbdd
                            String claveEnciptada = ENCR.toMD5(claveTemporal);
                            //guardo la contraseña en el usuario
                            usu.setPassword(claveEnciptada);
                            //crear el usuario
                            bnUsu.agregarUsuarioComun(usu);
                            //envia correo
                            BnEmail correo = new BnEmail();
                            correo.sendMailConfirmacionRegistro(usu.getCorreo(), claveTemporal);

                            json.addProperty("estado", D.EST_OK);
                            json.addProperty("descripcion", "Usuario Agregado");
                        }

                        response.getWriter().println(json);
                        break;
                    }
                }
            } else {
                toPage("/easy_registro_ws.jsp", request, response); //, this
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (JSONException ex) {
            Logger.getLogger(Svl_RegistroMeses.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
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
