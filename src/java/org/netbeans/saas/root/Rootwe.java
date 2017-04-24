/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.netbeans.saas.root;

import java.io.IOException;
import org.netbeans.saas.RestConnection;
import org.netbeans.saas.RestResponse;

/**
 * Rootwe Service
 *
 * @author erick
 */
public class Rootwe {

    /**
     * Creates a new instance of Rootwe
     */
    public Rootwe() {
    }

    private static void sleep(long millis) {
        try {
            Thread.sleep(millis);
        } catch (Throwable th) {
        }
    }

    /**
     *
     * @param user
     * @param pass
     * @param rUT
     * @param numSerie
     * @param modo
     * @param misc
     * @param reescribe
     * @return an instance of RestResponse
     */
    public static RestResponse getXml(String user, String pass, String rUT, String numSerie, String modo, String misc, String reescribe) throws IOException {
        String[][] pathParams = new String[][]{};
        String[][] queryParams = new String[][]{{"User", user}, {"Pass", pass}, {"RUT", rUT}, {"Num_Serie", numSerie}, {"Modo", modo}, {"Misc", misc}, {"reescribe", reescribe}};
        RestConnection conn = new RestConnection("http://54.202.128.106:8080/WebServiceTransUnion/webresources/generic", pathParams, queryParams);
        //RestConnection conn = new RestConnection("http://localhost:8081/WebServiceTransUnion/webresources/generic", pathParams, queryParams);
        sleep(1000);
        return conn.get(null);
    }
    
    
    
    public static RestResponse getXmlSII(String rut, String user, String pass) throws IOException {
        String[][] pathParams = new String[][]{};
        String[][] queryParams = new String[][]{{"rut", rut}, {"user", user}, {"pass", pass}};
        RestConnection conn = new RestConnection("http://54.202.128.106:8080/WS_SII/webresources/generic", pathParams, queryParams);
        sleep(1000);
        return conn.get(null);
    }
    /**
     * Web Servuce IDENTIFICACION
     *
     * @param rut
     * @param user
     * @param pass
     * @return an instance of RestResponse
     */
    public static RestResponse getXmlIdentificacion(String rut, String user, String pass) throws IOException {
        String[][] pathParams = new String[][]{};
        String[][] queryParams = new String[][]{{"RUT", rut}, {"USER", user}, {"PASS", pass}};
        RestConnection conn = new RestConnection("http://54.202.128.106:8080/WS_Identificacion/Metod/getXML", pathParams, queryParams);
        sleep(1000);
        return conn.get(null);
    }
}
