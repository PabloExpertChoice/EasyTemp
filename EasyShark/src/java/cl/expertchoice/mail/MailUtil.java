package cl.expertchoice.mail;

/**
 * Clase que nos permite el envio de correos electronicos a cliente
 */
import cl.expertchoice.soporte.DEF;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/**
 *
 * Clase con los metodos nesesarios para el envio de un Mail
 *
 * @author Saul Jimenez
 * @version 2015.10.08.V1
 *
 */
public class MailUtil {

    public static void main(String[] args) throws MessagingException, AddressException, GeneralSecurityException, IOException {

        String mesage = "";
        ConfeccionMail c = new ConfeccionMail();
        mesage += c.getLinea("Se ha informado la transferencia de la solicitud N&deg;:" + 8);
        double valor = 14897477;
        mesage += c.getLinea("por el monto de  $" + valor);

        String[] mails = new String[2];
        mails[0] = "regaddo@gmail.com";
        mails[1] = "erodriguez@expertchoice.cl";
        MailUtil.sendEmail(mails, "Informe de transferencia test", c.getMail(mesage), Config_mail.MAIL_USER_INFO, Config_mail.MAIL_PASS_INFO);

    }

    /**
     * Metodo que Toma los parametros para el envio de un Mail sin archivos
     * adjuntos enviandolo en un thread secundario
     *
     * @param toAddresss Array de String con los Correos de los receptores del
     * Email
     * @param asunto Asunto del Email
     * @param message Cuerpo del Mensaje del Emaul
     * @param user String con usuario que envia correo
     * @param pass String con password del usuario que envia el correo
     * @return True en caso de poder enviar correctamente
     * @throws MessagingException Error en el mensaje
     * @throws AddressException Error en direcciones a enviar
     * @throws GeneralSecurityException Error en seguridad
     * @throws java.io.IOException Error
     */
    public static boolean sendEmailT(String toAddresss, String asunto, String message, String user, String pass) throws MessagingException, AddressException, GeneralSecurityException, IOException {
        Thread tread;
        tread = new Thread() {
            @Override
            public void run() {
                try {
                    String[] toAddress = {toAddresss};
                    boolean sendEmail;
                    sendEmail = sendEmail(toAddress, asunto, message, null, user, pass);
                } catch (MessagingException ex) {
//                    Logger.getLogger(svl_factoring.class.getName()).log(Level.SEVERE, null, ex);
                    DEF.log().log(Level.SEVERE, null, ex);
                } catch (GeneralSecurityException ex) {
//                    Logger.getLogger(svl_factoring.class.getName()).log(Level.SEVERE, null, ex);
                    DEF.log().log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                    Logger.getLogger(MailUtil.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        };
        tread.start();

        return true;
    }

    /**
     * Metodo que Toma los parametros para el envio de un Mail sin archivos
     * adjuntos enviandolo en un thread secundario
     *
     * @param toAddresss Array de String con los Correos de los receptores del
     * Email
     * @param asunto Asunto del Email
     * @param message Cuerpo del Mensaje del Emaul
     * @param user String con usuario que envia correo
     * @param pass String con password del usuario que envia el correo
     * @return True en caso de poder enviar correctamente
     * @throws MessagingException Error en el mensaje
     * @throws AddressException Error en direcciones a enviar
     * @throws GeneralSecurityException Error en seguridad
     * @throws java.io.IOException Error
     */
    public static boolean sendEmailT(String[] toAddress, String asunto, String message, String user, String pass) throws MessagingException, AddressException, GeneralSecurityException, IOException {
        Thread tread;
        tread = new Thread() {
            @Override
            public void run() {
                try {

                    boolean sendEmail;
                    sendEmail = sendEmail(toAddress, asunto, message, null, user, pass);
                } catch (MessagingException ex) {
//                    Logger.getLogger(svl_factoring.class.getName()).log(Level.SEVERE, null, ex);
                    DEF.log().log(Level.SEVERE, null, ex);
                } catch (GeneralSecurityException ex) {
//                    Logger.getLogger(svl_factoring.class.getName()).log(Level.SEVERE, null, ex);
                    DEF.log().log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                    Logger.getLogger(MailUtil.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        };
        tread.start();

        return true;
    }

    /**
     * Metodo que Toma los parametros para el envio de un Mail sin archivos
     * adjuntos
     *
     * @param toAddresss Array de String con los Correos de los receptores del
     * Email
     * @param asunto Asunto del Email
     * @param message Cuerpo del Mensaje del Emaul
     * @param user String con usuario que envia correo
     * @param pass String con password del usuario que envia el correo
     * @return True en caso de poder enviar correctamente
     * @throws MessagingException Error en el mensaje
     * @throws AddressException Error en direcciones a enviar
     * @throws GeneralSecurityException Error en seguridad
     * @throws java.io.IOException Error
     */
    public static boolean sendEmail(String toAddresss, String asunto, String message, String user, String pass) throws MessagingException, AddressException, GeneralSecurityException, IOException {
        String[] toAddress = {toAddresss};
        return sendEmail(toAddress, asunto, message, null, user, pass);
    }

    /**
     * Metodo que Toma los parametros para el envio de un Mail sin archivos
     * adjuntos
     *
     * @param toAddress_1 Array de String con los Correos de los receptores del
     * Email
     * @param asunto Asunto del Email
     * @param message Cuerpo del Mensaje del Emaul
     * @param user String con usuario que envia correo
     * @param pass String con password del usuario que envia el correo
     * @return True en caso de poder enviar correctamente
     * @throws MessagingException Error en el mensaje
     * @throws AddressException Error en direcciones a enviar
     * @throws GeneralSecurityException Error en seguridad
     * @throws java.io.IOException Error
     */
    public static boolean sendEmail(ArrayList<String> toAddress_1, String asunto, String message, String user, String pass) throws MessagingException, AddressException, GeneralSecurityException, IOException {
        String[] toAddress = toArString(toAddress_1);
        return sendEmail(toAddress, asunto, message, null, user, pass);
    }

    public static String[] toArString(ArrayList<String> toAddress_1) {
        String[] toAddress = new String[0];
        if (toAddress_1.size() != 0) {
            toAddress = new String[toAddress_1.size()];
            for (int i = 0; i < toAddress_1.size(); i++) {
                toAddress[i] = toAddress_1.get(i);
            }
        }
        return toAddress;
    }

    /**
     * Metodo que Toma los parametros para el envio de un Mail sin archivos
     * adjuntos
     *
     * @param toAddress Array de String con los Correos de los receptores del
     * Email
     * @param asunto Asunto del Email
     * @param message Cuerpo del Mensaje del Emaul
     * @param user String con usuario que envia correo
     * @param pass String con password del usuario que envia el correo
     * @return True en caso de poder enviar correctamente
     * @throws MessagingException Error en el mensaje
     * @throws AddressException Error en direcciones a enviar
     * @throws GeneralSecurityException Error en seguridad
     * @throws java.io.IOException Error
     */
    public static boolean sendEmail(String[] toAddress, String asunto, String message, String user, String pass) throws MessagingException, AddressException, GeneralSecurityException, IOException {
        return sendEmail(toAddress, asunto, message, null, user, pass);
    }

    /**
     * Metodo que Toma los parametros para el envio de un Mail
     *
     * @param toAddress Array de String con los Correos de los receptores del
     * Email
     * @param asunto Asunto del Email
     * @param message Cuerpo del Mensaje del Emaul
     * @param files Rutas de acceso que se utilizaran para el envio de un mail
     * Con archivo, si no se requiere se envia Null
     * @param USER_MAIL String con usuario que envia correo
     * @param PASS_MAIL String con password del usuario que envia el correo
     * @return True en caso de poder enviar correctamente
     * @throws MessagingException Error en el mensaje
     * @throws AddressException Error en direcciones a enviar
     * @throws GeneralSecurityException Error en seguridad
     */
    public static boolean sendEmail(String[] toAddress, String asunto, String message, String[] files, String USER_MAIL, String PASS_MAIL) throws AddressException,
            MessagingException,
            GeneralSecurityException,
            IOException {

        ArrayList<String> a = new ArrayList<>();
        for (String toAddres : toAddress) {
            if (validateEmail(toAddres)) {
                a.add(toAddres);
            }
        }

        toAddress = toArString(a);

        if (toAddress.length == 0) {
            System.err.println("No hay correos para enviar el mail");
            return false;
        }

        File f = new File(System.getProperty("user.home") + File.separator + "KEYS" + File.separator + "cacerts2");
        DEF.log().log(Level.INFO, "Archivo de cetificados existe ? {0} {1}", new Object[]{f.exists(), f.getAbsolutePath()});
        if (f.exists()) {
            DEF.log().log(Level.INFO, "Archivo de cetificados existe ? {0} {1}", new Object[]{f.exists(), f.getAbsolutePath()});
            System.setProperty("javax.net.ssl.trustStore", f.getAbsolutePath());
            System.setProperty("javax.net.ssl.trustStorePassword", "changeit");
        } else {
            InstallCert i = new InstallCert();
            i.instal(Config_mail.SERVIDOR,
                    System.getProperty("user.home") + File.separator + "KEYS" + File.separator + "cacerts2",
                    "changeit",
                    System.getProperty("user.home") + File.separator + "KEYS" + File.separator + "cacerts2");
            return sendEmail(toAddress, asunto, message, files, USER_MAIL, PASS_MAIL);

        }
        Properties prop = Config_mail.getProperties();
        Session session = Session.getInstance(prop);

        session.setDebug(false);

        // creates a new e-mail message
        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(USER_MAIL));

        for (String toAddres : toAddress) {
            DEF.log().log(Level.INFO, "Se enviara al mail {0}", toAddres);
            msg.addRecipients(Message.RecipientType.BCC, toAddres);
        }

//
//        msg.setRecipients(Message.RecipientType.TO, toAddress);
        //asunto del mensaje
        msg.setSubject(asunto, "utf-8");
        //fecha del mensaje
        msg.setSentDate(new Date());
        MimeMultipart multiParte = null;
        BodyPart texto = new MimeBodyPart();

        texto.setContent(message, Config_mail.TYPE);

        List<BodyPart> adjuntos = new LinkedList<>();//<-------creamos una lista de adjuntos
        // Se compone el adjunto con la imagen
        if (files != null) {
            for (int i = 0; i <= files.length - 1; i++) {
                BodyPart adjunto = new MimeBodyPart();
                File file = new File(files[i]);
                adjunto.setDataHandler(new DataHandler(new FileDataSource(file)));
                adjunto.setFileName(file.getName());
                adjuntos.add(adjunto);//<----------------añadimos el elemento a la lista
            }

            // Una MultiParte para agrupar texto e imagen.
            multiParte = new MimeMultipart();
            multiParte.addBodyPart(texto);
            Iterator it = adjuntos.iterator();//<------------la iteramos
            while (it.hasNext())//<----------------la recorremos
            {
                BodyPart attach = (BodyPart) it.next();//<------------obtenemos el objeto
                multiParte.addBodyPart(attach);//<-----------------finalmente lo añadimos al mensaje
            }
            multiParte.setSubType(Config_mail.SUBTYPE);
            msg.setContent(multiParte);
//            System.out.println("con archivos");
        } else {

            msg.setText(message, Config_mail.CHARSET, Config_mail.SUBTYPE);
//            System.out.println("sin archivos");
            msg.setHeader("Content-Transfer-Encoding", "base64");
            msg.setHeader("Content-Type", "text/html; charset=utf-8");
        }
        //texto del mensaje y lenguaje de escritura
        msg.setHeader("IdPortal", "4");
        msg.setHeader("IdTipoMail", "99");

        Transport t = session.getTransport(Config_mail.TRANSPORT);

        try {
            t.connect(USER_MAIL, PASS_MAIL);
            t.sendMessage(msg, msg.getAllRecipients());
            t.close();
        } catch (Exception SSLHE) {
            InstallCert i = new InstallCert();
            i.instal(Config_mail.SERVIDOR,
                    System.getProperty("user.home") + File.separator + "KEYS" + File.separator + "cacerts2",
                    "changeit",
                    System.getProperty("user.home") + File.separator + "KEYS" + File.separator + "cacerts2");
            return sendEmail(toAddress, asunto, message, files, USER_MAIL, PASS_MAIL);
        }
        return true;

    }

    /**
     * Metodo desactiva la veificacion SSL
     */
    private static void disableSslVerification() {
        try {
            // Create a trust manager that does not validate certificate chains
            TrustManager[] trustAllCerts = new TrustManager[]{new X509TrustManager() {
                @Override
                public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                    return null;
                }

                @Override
                public void checkClientTrusted(X509Certificate[] certs, String authType) {
                }

                @Override
                public void checkServerTrusted(X509Certificate[] certs, String authType) {
                }
            }
            };

            // Install the all-trusting trust manager
            SSLContext sc = SSLContext.getInstance("SSL");
            sc.init(null, trustAllCerts, new java.security.SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

            // Create all-trusting host name verifier
            HostnameVerifier allHostsValid = new HostnameVerifier() {
                @Override
                public boolean verify(String hostname, SSLSession session) {
                    return true;
                }
            };

            // Install the all-trusting host verifier
            HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
        } catch (NoSuchAlgorithmException | KeyManagementException e) {
            DEF.log().log(Level.SEVERE, e.toString(), e);
        }
    }

    /**
     * Variable comprueba que correo sea una expresion valida
     */
    private static final String PATTERN_EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    /**
     * Validate given email with regular expression.
     *
     * @param email email for validation
     * @return true valid email, otherwise false
     */
    public static boolean validateEmail(String email) {

        // Compiles the given regular expression into a pattern.
        Pattern pattern = Pattern.compile(PATTERN_EMAIL);

        // Match the given input against this pattern
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();

    }

}
