/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.mail;

import java.util.Properties;

/**
 * Clase que contiene las configuraciones para enviar un email mediante la api
 * de javaMail
 *
 * @author Claudio Miranda
 * @version 2015.10.08.V1
 */
public class Config_mail {


    public static String MAIL_USER_INFO = "demo@expertchoice.cl";
    public static String MAIL_PASS_INFO = "Quaker1877*";

//    public static String MAIL_USER_INFO = "infotefinancio";
//    public static String MAIL_PASS_INFO = "4yr7.Ztr2";
    /**
     *
     */
    public static String SERVIDOR = "email.expertchoice.cl";//"smtp.googlemail.com";
    /**
     *
     */
    public static String PUERTO = "587";
    /**
     *
     */
    public static String TRANSPORT = "smtp";
    /**
     *
     */
    public static String CHARSET = "ISO-8859-1";
    /**
     *
     */
    public static String SUBTYPE = "html";
    /**
     *
     */
    public static String TYPE = "text/html; charset=utf-8";

    /**
     * Propiedades nesesarias para la configuracion de javaMail
     */
    public static String[][] PROPIEDADES = {
        // Nombre del host de correo, es smtp.gmail.com
        // Nombre del host de correo, es smtp.gmail.com
        // Nombre del host de correo, es smtp.gmail.com
        // Nombre del host de correo, es smtp.gmail.com
        {"mail.smtp.host", SERVIDOR},
        // TLS si está disponible
        {"mail.smtp.starttls.enable", "true"},
        // Puerto de gmail para envio de correos
        {"mail.smtp.port", PUERTO},
        // Nombre del usuario
//        {"mail.smtp.user", MAIL_USER_SOPORTE},
        // Si requiere o no usuario y password para conectarse.
        {"mail.smtp.auth", "true"},
        {"mail.smtp.debug", "true"}//,
//        {"mail.smtp.socketFactory.port", PUERTO},
//        {"mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"},
//        {"mail.smtp.socketFactory.fallback", "false"}
    };

    /**
     * Metodo retorna un String con el usuario del correo a utilizar
     *
     * @return una instancia estatica e un String
     */
//    public static String getUSER() {
//        return MAIL_USER_SOPORTE;
//    }

    /**
     * Metodo reporta el Pass del mail a utilizar
     *
     * @return una instancia estatica e un String
     */
//    public static String getSECRET() {
//        return MAIL_PASS_SOPORTE;
//    }

    /**
     * Metodo retorna un String con el CHARTSET a utilizar en el mail
     *
     * @return una instancia estatica e un String
     */
    public static String getCHARSET() {
        return CHARSET;
    }

    /**
     * Metodo retorna un String con el SUBTYPE a utilizar en el mail
     *
     * @return una instancia estatica e un String
     */
    public static String getSUBTYPE() {
        return SUBTYPE;
    }

    /**
     **Metodo retorna un String[][] con el las propiedades a utilizar en el
     * mail
     *
     * @return una instancia estatica e un String [][]
     */
    public static String[][] getPROPIEDADES() {
        return PROPIEDADES;
    }

    /**
     * Metodo asigna un string a la variable estatica de USER
     *
     * @param USER String
     */
//    public static void setUSER(String USER) {
//        Config_mail.MAIL_USER_SOPORTE = USER;
//    }

    /**
     * Metodo asigna un string a la variable estatica de SECRET
     *
     * @param SECRET String
     */
//    public static void setSECRET(String SECRET) {
//        Config_mail.MAIL_PASS_SOPORTE = SECRET;
//    }

    /**
     * Metodo asigna un string a la variable estatica de CHARSET
     *
     * @param CHARSET String
     */
    public static void setCHARSET(String CHARSET) {
        Config_mail.CHARSET = CHARSET;
    }

    /**
     * Metodo asigna un string a la variable estatica de SUBTYPE
     *
     * @param SUBTYPE String
     */
    public static void setSUBTYPE(String SUBTYPE) {
        Config_mail.SUBTYPE = SUBTYPE;
    }

    /**
     * Metodo asigna un string[][] a la variable estatica de PROPIEDADES
     *
     * @param PROPIEDADES String[][]
     */
    public static void setPROPIEDADES(String[][] PROPIEDADES) {
        Config_mail.PROPIEDADES = PROPIEDADES;
    }

    /**
     * Metodo donde se recuperan las propiedades nesesarias para el envio de
     * email.
     *
     * @return un objeto de tipo Properties
     */
    public static Properties getProperties() {
        Properties properties = new Properties();

        for (String[] properti1 : PROPIEDADES) {
            for (int j = 1; j < properti1.length; j++) {
                properties.setProperty(properti1[0], properti1[j]);
            }
        }
        return properties;
    }

}
