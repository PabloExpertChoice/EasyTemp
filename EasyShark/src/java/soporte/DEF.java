/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.soporte;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.spec.PSource;

/**
 * Clase que contiene el metodo log.<br>
 * Ademas esta clase contiene identificadores de atributos utilizados en las
 * clases
 *
 * @author Claudio Miranda
 * @version 2015.10.08.V1
 */
public class DEF {

    public static final String MAIL_RA = "mvenegas@ecapital.cl";
    public static final String MAIL_SOPORTE = "mvenegas@ecapital.cl";

    public static final String RATTR_OFERTA = "raOferta";
    public static final String RATTR_ID_SOLICITUD = "raIdSoli";
    public static final String RATTR_ID_EMPRESA_OFERTA = "raIdEmpOfer";
    public static final String DONDE = "donde";

//<editor-fold  desc="Objetos alojados en la session">
    /**
     * Objeto de usuario
     */
    public static final String SFLAG_FACTURAS_VE = "FLAG_FACT_VE";

    public static final String SATTR_BN_PERMISO = "OBJ_BN_PERMISO";
    public static final String SATTR_RATING_TEF_ = "P_RATING_TEF";
    public static final String SATTR_SL_RESPALDOS = "SL_RESPALDOS";
    public static final String SATTR_SL_UNIDAD_TIEMPO = "SL_UNIDAD_TIEMPO";

    public static final String SATTR_USER = "usrObj";
    public static final String SATTR_USER_2 = "usrObj2";
    public static final String SATTR_BORRADOR = "usrObjO";
    public static final String SATTR_ID_SOLICITUD = "SOL_ID";
    public static final String SATTR_ID_EMPRESA_SOLICITUD = "SOL_ID_EMPRE";
    public static final String SATTR_ID_EMPRESA_INFO = "INFO_ID_EMPRE";
    public static final String SATTR_EMPRESA_INFO = "INFO_EMPRE";
    public static final String SATTR_SOLICITUD_ID = "ID SOLICITUD";
    public static final String SATTR_ID_EMPRESA_OFERTA = "OFE_ID_EMPRE";
    public static final String SATTR_SL_DEUDOR = "deuObj";
    public static final String SATTR_PARAMETROS = "parObj";
    public static final String SATTR_GEO = "geoObj";

    public static final String SATTR_CLI_CUENTAS = "cuentasObj";
    public static final String SATTR_CLI_CARPETAS = "carpetasObj";
    public static final String SATTR_CLI_BANCOS = "bancosObj";
    public static final String SATTR_CLI_VENTAS_PROMEDIO = "ventasObj";
    public static final String SATTR_CLI_CONTACTOS = "contactosObj";
    public static final String SATTR_CLI_DESCRIPCION_GIRO = "descGiroObj";

//</editor-fold>
//<editor-fold  desc="Nombres utilizados en request">
    /**
     * Nombre del parametro asignado a error
     */
    public static final String RATTR_ERROR = "codErr";

    public static final String DBTHOR = "http://sandbox.dbthor.com/elending-dev/"; //Desarrollo
//    public static final String DBTHOR = "http://sandbox.dbthor.com/elending-prod/";  //Producccion
    public static final String DBTHORPRUEBA = "http://52.207.189.250:8080/"; //Desarrollo

//</editor-fold>
//<editor-fold  desc="Codigos de error para el login">
    /**
     * Codigos de error usuario o contraseña invalido
     */
    public static final String COD_ERROR_USER_INV = "userInV";
    public static final String COD_ERROR_USER_BLOK = "userBLOK";
    /**
     * No conecta la base de datos
     */
    public static final String COD_ERROR_NO_CON = "noCon";
//</editor-fold>

//<editor-fold  desc="Paginas y servlet">
    public static final String PA_LOGIN = "/login.jsp";
    public static final String PA_LOGIN_ECAPITAL = "/login_ecapital.jsp";
    public static final String PA_CONFIRM_LOGIN = "/login_confirm.jsp";

    public static final String PA_HOME = "/home.jsp";
    public static final String PA_REST_CONS = "/login_cambio_clave.jsp";
    public static final String PA_SOLI_REST_CONS = "/login_rest_pass.jsp";
    public static final String PA_SOLI_REST_CONS_1 = "/login_rest_pass_1.jsp";
    public static final String PA_NEW_USER = "/login_new_user.jsp";
    public static final String PA_REGISTRO = "/registro.jsp";
    public static final String PA_REGISTROS = "/registros.jsp";
    public static final String PA_CLI_HOME = "/home_cli.jsp";
    public static final String PA_CLI_SOPORTE = "/home_cli_soporte.jsp";
    public static final String PA_CLI_OFER = "/cli_ofertas.jsp";

    public static final String PA_FACTORING_HOME = "/home_finan.jsp";
    public static final String PA_FACTORING_ADMIN_USER = "/factoring_admin_user.jsp";
    public static final String PA_FACTORING_ADMIN_PARAMETROS = "/factoring_admin_parametros.jsp";
    public static final String PA_FACTORING_GERENTE_REPORTE = "/factoring_gerente_reporte.jsp";

    public static final String PA_TF_SOPORTE = "/home_soporte.jsp";
    public static final String PA_LOG = "/LOG.jsp";

    public static final String PA_TEF_ADMIN = "/home_admin_tef.jsp";
    public static final String PA_TEF_BACK_LIST = "/admin_tef_black_list.jsp";
    public static final String PA_TEF_ADMIN_CLIENTE = "/admin_tef_clientes.jsp";
    public static final String PA_TEF_ADMIN_FACTORING = "/admin_tef_factoring.jsp";
    public static final String PA_TEF_ADMIN_LEGAL = "/admin_tef_legal.jsp";
    public static final String PA_TEF_ADMIN_LEGAL_CLIENTE = "/admin_tef_legal_cliente.jsp";

    public static final int EST_APRO_SOL_PENDIENTE = 1;
    public static final int EST_APRO_SOL_APROBADO = 2;
    public static final int EST_APRO_SOL_APROBADO_PENDIENTE = 4;
    public static final int EST_APRO_SOL_RECHAZADO = 3;
    public static final int EST_DEPOSITO_PENDIENTE = 1;
    public static final int EST_DEPOSITO_PAGADO = 2;

//</editor-fold>
    public static String getMAIL_SOPORTE() {
        return MAIL_SOPORTE;
    }

    private static final String ORIGINAL
            = "ÁáÉéÍíÓóÚúÑñÜü";
    private static final String REPLACEMENT
            = "AaEeIiOoUuNnUu";

//<editor-fold  desc="Definicion y metodos de log">    
    /**
     * Logger general de la aplicación.
     */
    private static String loggerId = "Ecapital";
    private static Logger log = null;

    /**
     * Entrega la referencia al log de la aplicación.
     *
     * @return una istancia de {@link Logger}
     */
    public static Logger log() {
        if (log == null) {
            log = Logger.getLogger(loggerId);
            return log;
        } else {
            return log;
        }

    }

    /**
     * Metodo que imprime en log con forma de info
     *
     * @param mensaje String
     */
    public static void info(String mensaje) {
        log().log(Level.INFO, mensaje);
    }

    /**
     * Metodo que imprime en log con forma de info
     *
     * @param mensaje String
     * @param obj Objetc
     */
    public static void info(String mensaje, Object obj) {
        log().log(Level.INFO, mensaje, obj);
    }

    /**
     * Metodo que imprime en log con forma de info
     *
     * @param mensaje String
     * @param obj Objet[]
     */
    public static void info(String mensaje, Object[] obj) {
        log().log(Level.INFO, mensaje, obj);
    }

    /**
     * Metodo que imprime en log con forma de info
     *
     * @param mensaje String
     * @param obj Object type {@link Throwable}
     */
    public static void info(String mensaje, Throwable obj) {
        log().log(Level.INFO, mensaje, obj);
    }

    /**
     * Metodo que imprime en log con forma de SEVERE
     *
     * @param mensaje String
     */
    public static void severe(String mensaje) {
        log().log(Level.SEVERE, mensaje);
    }

    /**
     * Metodo que imprime en log con forma de SEVERE
     *
     * @param mensaje String
     * @param obj Object
     */
    public static void severe(String mensaje, Object obj) {
        log().log(Level.SEVERE, mensaje, obj);
    }

    /**
     * Metodo que imprime en log con forma de SEVERE
     *
     * @param mensaje String
     * @param obj Object[]
     */
    public static void severe(String mensaje, Object[] obj) {
        log().log(Level.SEVERE, mensaje, obj);
    }

    /**
     * Metodo que imprime en log con forma de SEVERE
     *
     * @param mensaje String
     * @param obj Obtect type {@link Throwable}
     */
    public static void severe(String mensaje, Throwable obj) {
        log().log(Level.SEVERE, mensaje, obj);
    }

//</editor-fold>
}
