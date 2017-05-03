package cl.expertchoice.svl;

import cl.expertchoice.beans.BnEmail;
import cl.expertchoice.beans.BnSubsidiary;
import cl.expertchoice.beans.BnUsuario;
import cl.expertchoice.clases.Perfil;
import cl.expertchoice.clases.Status;
import cl.expertchoice.clases.Subsidiary;
import cl.expertchoice.clases.Usuario;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import soporte.D;
import soporte.ENCR;

/**
 *
 * @author jhonncard
 */
public class Svl_Usuarios extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            String accion = request.getParameter("accion");
            JsonObject json = null;
            if (accion != null) {
                switch (accion) {
                    case "crear-empresa": {
                        Subsidiary nuevaEmpresa = new Subsidiary();
                        Usuario usu = new Usuario();

                        int rutEmpresa = Integer.parseInt(request.getParameter("rut"));
                        String dvEmpresa = request.getParameter("dv");
                        String nombreUsuAdmin = request.getParameter("nombre");
                        String apePaternoUsuAdmin = request.getParameter("apellido");
                        String emailUsuAdmin = request.getParameter("email");
                        String terminos = request.getParameter("terminos");

                        //seteo los parametos del usuario Administrador
                        usu.setNombre(nombreUsuAdmin);
                        usu.setApePaterno(apePaternoUsuAdmin);
                        usu.setEmail(emailUsuAdmin);

                        BnUsuario bnUsu = new BnUsuario();
                        json = new JsonObject();

                        //validar si existe el correo
                        if (bnUsu.buscarPorCorreo(emailUsuAdmin) != null) {
                            json.addProperty("estado", D.EST_NORESULTADO);
                            json.addProperty("descripcion", "El correo <b>" + emailUsuAdmin + "</b> ya se encuentra registrado.");
                            //validar si existe la empresa
                        } else if (new BnSubsidiary().buscarPorRut(rutEmpresa) != null) {
                            json.addProperty("estado", D.EST_NORESULTADO);
                            json.addProperty("descripcion", "El empresa con el rut <b>" + rutEmpresa + "-" + dvEmpresa + "</b> ya se encuentra registrada.");
                        } else {
                            //se busca la empresa en las bbdd
                            Subsidiary Empresa = new BnSubsidiary().consultarWS(rutEmpresa, dvEmpresa);
                            if (Empresa != null) {
                                //si no es nula se setean sus parametos independiente de que sea una persona o una empresa
                                nuevaEmpresa.setNombre(Empresa.getNombre());
                                nuevaEmpresa.setApePaterno(Empresa.getApePaterno());
                                nuevaEmpresa.setApeMaterno(Empresa.getApeMaterno());
                                nuevaEmpresa.setId(Empresa.getId());
                                nuevaEmpresa.setRut(rutEmpresa);
                                nuevaEmpresa.setDv(dvEmpresa);

                                //estado por defecto 1 = creado
                                Status estado = new Status(1, null, null);
                                usu.setEstado(estado);

                                //perfin 2 Administrador
                                Perfil per = new Perfil(2, "");
                                usu.setPerfil(per);

                                usu.setSubsidiary(nuevaEmpresa);
                                BnSubsidiary bnSub = new BnSubsidiary();

                                bnSub.crearEmpresa(nuevaEmpresa, usu);
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
                        usu.setApePaterno(apellidoPaterno);
                        usu.setApeMaterno(apellidoMaterno);
                        usu.setEmail(email);

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
                            usu.setEstado(estado);
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
                            correo.sendMailConfirmacionRegistro(usu.getEmail(), claveTemporal);

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
