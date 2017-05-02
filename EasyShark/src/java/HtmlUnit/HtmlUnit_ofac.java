package HtmlUnit;

import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.DomNodeList;
import com.gargoylesoftware.htmlunit.html.HtmlForm;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlTable;
import com.gargoylesoftware.htmlunit.html.HtmlTableRow;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class HtmlUnit_ofac {

    WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
    private String nombre;

    public HtmlUnit_ofac() {
    }

    public HtmlUnit_ofac(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public WebClient getWebClient() {
        return webClient;
    }

    public void setWebClient(WebClient webClient) {
        this.webClient = webClient;
    }

    HtmlPage page;

    public JsonArray listarCoincidencias() {
        JsonArray jsonArr = new JsonArray();
        try {
            webClient.getOptions().setThrowExceptionOnFailingStatusCode(false);
            Logger logger = Logger.getLogger("");
            logger.setLevel(Level.OFF);
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
            webClient.getOptions().setJavaScriptEnabled(false);
            webClient.getOptions().setRedirectEnabled(true);
            page = webClient.getPage("http://sanctionssearch.ofac.treas.gov");
            HtmlForm form = page.getFormByName("aspnetForm");
            form.getInputByName("ctl00$MainContent$txtLastName").setValueAttribute(this.nombre);
            HtmlPage pageResp = form.getInputByName("ctl00$MainContent$btnSearch").click();
            HtmlTable tabla = (HtmlTable) pageResp.getElementById("gvSearchResults");
            DomNodeList filas = tabla.getElementsByTagName("tr");
            for (int i = 0; i < filas.getLength(); i++) {
                try {
                    JsonObject json = new JsonObject();
                    HtmlTableRow fila = (HtmlTableRow) filas.get(i);
                    String nom = fila.getElementsByTagName("td").get(0).getElementsByTagName("a").get(0).asText();
                    String direccion = fila.getElementsByTagName("td").get(1).asText();
                    String tipo = fila.getElementsByTagName("td").get(2).asText();
                    String programa = fila.getElementsByTagName("td").get(3).asText();
                    String lista = fila.getElementsByTagName("td").get(4).asText();
                    String score = fila.getElementsByTagName("td").get(5).asText();

                    json.addProperty("nombre", nom);
                    json.addProperty("direccion", direccion);
                    json.addProperty("tipo", tipo);
                    json.addProperty("programa", programa);
                    json.addProperty("lista", lista);
                    json.addProperty("score", score);

                    try {
                        String url = fila.getElementsByTagName("a").get(0).getAttribute("href");
                        String[] arr = url.split(",");
                        long id = Long.parseLong(arr[4].replace("\"", "").replace("Details.aspx?id=", "").trim());
                        json.addProperty("id", id);
                        HtmlPage pageDetalles = webClient.getPage("http://sanctionssearch.ofac.treas.gov/Details.aspx?id=" + id);

                        json.addProperty("fechaNacimiento", pageDetalles.getElementById("ctl00_MainContent_lblDOB").asText());

                        //Identificacion
                        HtmlTable tabla2 = (HtmlTable) pageDetalles.getElementById("ctl00_MainContent_gvIdentification");
                        DomNodeList filas2 = tabla2.getElementsByTagName("tr");
                        JsonArray arrIdentificacion = new JsonArray();
                        for (int j = 1; j < filas2.getLength(); j++) {
                            HtmlTableRow fila2 = (HtmlTableRow) filas2.get(j);
                            JsonObject identificacion = new JsonObject();
                            identificacion.addProperty("tipo", fila2.getElementsByTagName("td").get(0).asText().trim());
                            identificacion.addProperty("detalle", fila2.getElementsByTagName("td").get(1).asText().trim());
                            identificacion.addProperty("pais", fila2.getElementsByTagName("td").get(2).asText().trim());
                            identificacion.addProperty("fechaAsunto", fila2.getElementsByTagName("td").get(3).asText().trim());
                            identificacion.addProperty("fechaExpire", fila2.getElementsByTagName("td").get(4).asText().trim());
                            arrIdentificacion.add(identificacion);
                        }
                        json.add("identificacion", arrIdentificacion);

                        //Direcciones
                        HtmlTable tabla3 = (HtmlTable) pageDetalles.getElementById("ctl00_MainContent_pnlAddress").getElementsByTagName("table").get(0);
                        DomNodeList filas3 = tabla3.getElementsByTagName("tr");
                        JsonArray arrDirecciones = new JsonArray();
                        for (int j = 1; j < filas3.getLength(); j++) {
                            HtmlTableRow fila3 = (HtmlTableRow) filas3.get(j);
                            //Algunas filas estan en blanco
                            if (fila3.getElementsByTagName("td").get(0).asText().trim().length() > 0
                                    || fila3.getElementsByTagName("td").get(1).asText().trim().length() > 0
                                    || fila3.getElementsByTagName("td").get(2).asText().trim().length() > 0
                                    || fila3.getElementsByTagName("td").get(3).asText().trim().length() > 0
                                    || fila3.getElementsByTagName("td").get(4).asText().trim().length() > 0) {
                                JsonObject jsonDireccion = new JsonObject();
                                jsonDireccion.addProperty("direccion", fila3.getElementsByTagName("td").get(0).asText().trim());
                                jsonDireccion.addProperty("ciudad", fila3.getElementsByTagName("td").get(1).asText().trim());
                                jsonDireccion.addProperty("estado_provincia", fila3.getElementsByTagName("td").get(2).asText().trim());
                                jsonDireccion.addProperty("codigoPostal", fila3.getElementsByTagName("td").get(3).asText().trim());
                                jsonDireccion.addProperty("pais", fila3.getElementsByTagName("td").get(4).asText().trim());

                                arrDirecciones.add(jsonDireccion);
                            }
                        }
                        json.add("direcciones", arrDirecciones);
                    } catch (Exception ex) {

                    }

                    jsonArr.add(json);
                } catch (Exception ex) {
                }
            }
        } catch (IOException ex) {
        } catch (FailingHttpStatusCodeException ex) {
        } catch (Exception ex) {
        } finally {
            webClient.close();
        }
        return jsonArr;
    }
}
