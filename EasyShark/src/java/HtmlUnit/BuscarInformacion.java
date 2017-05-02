package HtmlUnit;

import cl.expertchoice.clases.Subsidiary;
import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlForm;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlTable;
import com.google.gson.Gson;
import java.util.logging.Level;
import java.util.logging.Logger;
import soporte.DescomponerNombre;

public class BuscarInformacion {

    public Subsidiary buscarPersona(int rut, String dv) {
        Subsidiary sub = null;
        try {
            WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
            Logger logger = Logger.getLogger("");
            logger.setLevel(Level.OFF);
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
            webClient.getOptions().setRedirectEnabled(false);
            HtmlPage page = webClient.getPage("https://chile.rutificador.com/");
            HtmlForm form = (HtmlForm) page.getElementById("form1");
            form.getInputByName("entrada").setValueAttribute(rut + "-" + dv);
            form.getElementsByTagName("input").get(2).click();
            boolean tries = true;
            while (tries) {
                synchronized (page) {
                    page.wait(1000); //wait
                }
                try {
                    page.getElementById("results").getElementsByTagName("a").get(0).getTextContent();
                    tries = false;
                } catch (Exception ex) {
                }
            }

            String nombreCompleto = page.getElementById("results").getElementsByTagName("a").get(0).getTextContent();
            DescomponerNombre d = null;
            if (nombreCompleto.split(" ").length == 4) {
                String[] nom = nombreCompleto.split(" ");
                d = new DescomponerNombre(nom[2] + " " + nom[3] + " " + nom[0] + " " + nom[1]);
                d.descomponeNombreApellido();
            }
            sub = new Subsidiary();
            sub.setNombre(d.getNOMBRES().trim());
            sub.setApePaterno(d.getAPELLIDOP().trim());
            sub.setApeMaterno(d.getAPELLIDOM().trim());
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return sub;
    }

    public Subsidiary buscarEmpresa(int rut, String dv) {
        Subsidiary sub = null;
        try {
            WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
            Logger logger = Logger.getLogger("");
            logger.setLevel(Level.OFF);
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
            webClient.getOptions().setRedirectEnabled(false);
            HtmlPage page = webClient.getPage("https://zeus.sii.cl/cvc_cgi/nar/nar_ingrut");
            HtmlForm form = (HtmlForm) page.getFormByName("form1");
            form.getInputByName("RUT").setValueAttribute(rut + "");
            form.getInputByName("DV").setValueAttribute(dv.toUpperCase());
            HtmlPage pageRe = (HtmlPage) form.getInputByName("ACEPTAR").click();
            HtmlTable resultados = (HtmlTable) pageRe.getElementsByTagName("table").get(2);
            String razonSocial = resultados.getElementsByTagName("td").get(0).getTextContent();

            sub = new Subsidiary();
            sub.setRut(rut);
            sub.setDv(dv);
            sub.setNombre(razonSocial);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return sub;
    }
}
