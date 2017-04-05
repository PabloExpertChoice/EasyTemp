package org.netbeans.saas.root;

import java.io.IOException;
import org.netbeans.saas.RestConnection;
import org.netbeans.saas.RestResponse;

public class RootweSii {
    public RootweSii() {
    }

    private static void sleep(long millis) {
        try {
            Thread.sleep(millis);
        } catch (Throwable th) {
        }
    }

    /**
     * Web Servuce SII
     *
     * @param rut
     * @param user
     * @param pass
     * @return an instance of RestResponse
     */
    public static RestResponse getXml(String rut, String user, String pass) throws IOException {
        String[][] pathParams = new String[][]{};
        String[][] queryParams = new String[][]{{"rut", rut}, {"user", user}, {"pass", pass}};
        RestConnection conn = new RestConnection("http://54.202.128.106:8080/WS_SII/webresources/generic", pathParams, queryParams);
        sleep(1000);
        return conn.get(null);
    }

    /**
     * WS Poder judicial
     *
     * @param usuario
     * @param password
     * @param nombre
     * @param apePaterno
     * @param apeMaterno
     * @return an instance of RestResponse
     */
    public static RestResponse porNombre(String usuario, String password, String nombre, String apePaterno, String apeMaterno) throws IOException {
        String[][] pathParams = new String[][]{};
        String[][] queryParams = new String[][]{{"usuario", usuario}, {"password", password}, {"nombre", nombre}, {"apePaterno", apePaterno}, {"apeMaterno", apeMaterno}};
//        RestConnection conn = new RestConnection("http://54.202.128.106:8080/ws_pjud/webresources/buscarCausas/porNombre", pathParams, queryParams);
        RestConnection conn = new RestConnection("http://localhost:8080/ws_pjud/webresources/buscarCausas/porNombre", pathParams, queryParams);
        sleep(1000);
        return conn.get(null);
    }
}
