package HtmlUnit;

import cl.expertchoice.clases.Subsidiary;
import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BuscarInformacion {
    
    public static void main(String[] args) {
        buscarPersona();
    }
    
    public static Subsidiary buscarPersona() {
        Subsidiary sub = null;
        try {
            WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
            Logger logger = Logger.getLogger("");
            logger.setLevel(Level.OFF);
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
            webClient.getOptions().setRedirectEnabled(false);
            HtmlPage page = webClient.getPage("https://chile.rutificador.com/");
            System.out.println(page.getWebResponse().getContentAsString());
        } catch (Exception ex) {
            
        }
        
        return sub;
    }
}
