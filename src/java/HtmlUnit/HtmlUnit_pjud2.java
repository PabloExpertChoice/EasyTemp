package HtmlUnit;

import cl.expertchoice.beans.BnCausaJudicial;
import cl.expertchoice.clases.CausaJudicial;
import cl.expertchoice.clases.Consultado;
import cl.expertchoice.clases.Tribunal;
import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.DomNodeList;
import com.gargoylesoftware.htmlunit.html.HtmlForm;
import com.gargoylesoftware.htmlunit.html.HtmlListItem;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlTable;
import com.gargoylesoftware.htmlunit.html.HtmlTableDataCell;
import com.gargoylesoftware.htmlunit.html.HtmlTableRow;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import SQL.Conexion;

public class HtmlUnit_pjud2 extends Thread {

    private String nombre;
    private String apePaterno;
    private String apeMaterno;
    private int rut;
    private String dv;
    private String docDemanda;
    private String tipoDocDemanda;
    private ArrayList<CausaJudicial> arrCausasJ = new ArrayList<>();

    HtmlPage page;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApePaterno() {
        return apePaterno;
    }

    public void setApePaterno(String apePaterno) {
        this.apePaterno = apePaterno;
    }

    public String getApeMaterno() {
        return apeMaterno;
    }

    public void setApeMaterno(String apeMaterno) {
        this.apeMaterno = apeMaterno;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public String getDv() {
        return dv;
    }

    public void setDv(String dv) {
        this.dv = dv;
    }

    public String getDocDemanda() {
        return docDemanda;
    }

    public void setDocDemanda(String docDemanda) {
        this.docDemanda = docDemanda;
    }

    public String getTipoDocDemanda() {
        return tipoDocDemanda;
    }

    public void setTipoDocDemanda(String tipoDocDemanda) {
        this.tipoDocDemanda = tipoDocDemanda;
    }

    public HtmlPage getPage() {
        return page;
    }

    public void setPage(HtmlPage page) {
        this.page = page;
    }

    public ArrayList<CausaJudicial> getArrCausasJ() {
        return arrCausasJ;
    }

    public void setArrCausasJ(ArrayList<CausaJudicial> arrCausasJ) {
        this.arrCausasJ = arrCausasJ;
    }

    @Override
    public void run() {
        try {
            Consultado conInsert = new Consultado();
            conInsert.setRut_cliente(this.rut);
            conInsert.setCausasJudiciales(arrCausasJ);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

//    public static void main(String[] args) {
//        HtmlUnit_pjud2 v = new HtmlUnit_pjud2();
//        v.setRut(13300593);
//        v.setDv("5");
//        v.setNombre("Juan Carlos");
//        v.setApePaterno("Ahumada");
//        v.setApeMaterno("Peña");
//        System.out.println("//////////////////////////////////////////////////////////////////////////////////////");
////        ArrayList<String> st = new ArrayList<String>();
////        st.add("ANGELICA");
////        st.add("MARIA");
////        st.add("LOPEZ");
////        for (int i = 0; i < st.size(); i++) {
////            System.out.println(st.get(i));
////        }
//        JsonObject buscarCausas = v.buscarCausas(new JsonObject());
//        System.out.println(buscarCausas);
//        System.out.println();
//        System.out.println("//////////////////////////////////////////////////////////////////////////////////////");
//        v.setRut(76178360);
//        v.setDv("2");
//        System.out.println("//////////////////////////////////////////////////////////////////////////////////////");
////        ArrayList<String> st = new ArrayList<String>();
////        st.add("ANGELICA");
////        st.add("MARIA");
////        st.add("LOPEZ");
////        for (int i = 0; i < st.size(); i++) {
////            System.out.println(st.get(i));
////        }
//        JsonObject buscarCausas2 = v.buscarCausas(buscarCausas);
//        System.out.println(buscarCausas2);
//        System.out.println();
//        System.out.println("//////////////////////////////////////////////////////////////////////////////////////");
//    }

//    public static String[] corregir(String[] nombres) {
//        System.out.println("Entrando a ortografia");
//        try {
//            WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
//            Logger logger = Logger.getLogger("");
//            logger.setLevel(Level.OFF);
//            webClient.getOptions().setThrowExceptionOnScriptError(false);
//            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
//            webClient.getOptions().setRedirectEnabled(false);
//            HtmlPage page = webClient.getPage("http://lenguaje.com/herramientas/ortografo.html");
//            for (int j = 0; j < nombres.length; j++) {
//                HtmlForm form = (HtmlForm) page.getFormByName("corpus_capture");
//                form.getTextAreaByName("edition_field").setText(nombres[j]);
//                HtmlPage page2 = form.getElementsByTagName("button").get(0).click();
//                try {
//                    HtmlForm form2 = (HtmlForm) page2.getFormByName("spelling");
//                    DomNodeList filas = form2.getElementsByTagName("ul").get(0).getElementsByTagName("li");
//
//                    for (int i = 0; i < filas.getLength(); i++) {
//                        HtmlListItem item = (HtmlListItem) filas.get(i);
//                        String nom = item.getTextContent().trim();
//                        if (nom.length() == nombres[j].length()) {
//                            String s = Normalizer.normalize(nom, Normalizer.Form.NFD);
//                            s = s.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
//                            if (s.equalsIgnoreCase(nombres[j])) {
//                                nombres[j] = nom;
//                                break;
//                            }
//                        }
//                    }
//                } catch (Exception ex) {
//                }
//            }
//
//        } catch (Exception ex) {
//        }
//
//        return nombres;
//    }
    private static String corregir(String nombre) {
        System.out.println("Entrando a ortografia con " + nombre);
        try {
            WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
            Logger logger = Logger.getLogger("");
            logger.setLevel(Level.OFF);
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
            webClient.getOptions().setRedirectEnabled(false);
            HtmlPage page = webClient.getPage("http://lenguaje.com/herramientas/ortografo.html");
            HtmlForm form = (HtmlForm) page.getFormByName("corpus_capture");
            form.getTextAreaByName("edition_field").setText(nombre);
            HtmlPage page2 = form.getElementsByTagName("button").get(0).click();
            try {
                HtmlForm form2 = (HtmlForm) page2.getFormByName("spelling");
                DomNodeList filas = form2.getElementsByTagName("ul").get(0).getElementsByTagName("li");

                for (int i = 0; i < filas.getLength(); i++) {
                    HtmlListItem item = (HtmlListItem) filas.get(i);
                    String nom = item.getTextContent().trim();
                    if (nom.length() == nombre.length()) {
                        String s = Normalizer.normalize(nom, Normalizer.Form.NFD);
                        s = s.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
                        if (s.equalsIgnoreCase(nombre)) {
                            nombre = nom;
                            break;
                        }
                    }
                }
            } catch (Exception ex) {
            }

        } catch (Exception ex) {
        }
        return nombre;
    }

    private static String subBuscarNombre(String nombre1){
        String[] nombres = nombre1.toUpperCase().trim().split(" ");
        String name="";
        for (int a = 0; a < nombres.length; a++) {
            System.out.println("Buscando en FILTRO Palabra: " + nombres[a]);
            String n = buscarNombre(nombres[a]);
            if (n == null || n.equalsIgnoreCase(nombres[a])) {
                System.out.println("No se encontro en BD.../nReturn: " + n);
                String nn = corregir(nombres[a]);
                if(nn==null || nn.equalsIgnoreCase(nombres[a])){
                    System.out.println("No encontrado en ORTOGRAFIA.../nReturn: " + nn);
                    name = name + (nombres[a].toUpperCase() + " ");
                }else{
                    System.out.println("Encontrado en ORTOGRAFIA.../nReturn: " + nn);
                    name = name + (nn.toUpperCase() + " ");
//                    insertarNombre(nn);
                }           
                insertarNombre(nn);
            } else {
                System.out.println("Encontrado en BD.../nReturn: " + n);
                name = name + (n.toUpperCase() + " ");
            }
        }
        return name.trim().toUpperCase();
    }
    public Boolean buscarNombre() {
        System.out.println("Entrando a BD.easy.LC_FILTRO_NOMBRES");
        String name2 = subBuscarNombre(this.nombre.trim());
        String ap_1 = subBuscarNombre(this.apePaterno.trim());
        String ap_2 = subBuscarNombre(this.apeMaterno.trim());
        Boolean flag = false;
        if(!name2.trim().toUpperCase().equalsIgnoreCase(this.nombre.trim().toUpperCase())){
            this.nombre=name2;
            flag=true;
        }
        if(!ap_1.trim().toUpperCase().equalsIgnoreCase(this.apePaterno.trim().toUpperCase())){
            this.apePaterno=ap_1;
            flag=true;
        }
        if(!ap_2.trim().toUpperCase().equalsIgnoreCase(this.apeMaterno.trim().toUpperCase())){
            this.apeMaterno=ap_2;
            flag=true;
        }
        return flag;
    }

    private static String buscarNombre(String nombre) {
        try {
            String sql = "SELECT NOMBRE \n"
                    + "FROM easy.LC_FILTRO_NOMBRES WHERE NOMBRE LIKE  ? ;";
            Connection conn = Conexion.getConexionEasy();
            PreparedStatement pst = conn.prepareStatement(sql);
            String nom = null;
            pst.setString(1, nombre);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                nom = rs.getString(1);
            }
            pst.close();
            Conexion.Desconectar(conn);
            return nom;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    private static void insertarNombre(String nombre) {
        System.out.println("Insertando "+nombre+" en los FILTROS");
        Connection conn = null;
        boolean flag = false;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO easy.LC_FILTRO_NOMBRES (NOMBRE) VALUES (?)";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, nombre.toUpperCase());
            if (pst.executeUpdate() > 0) {
                flag = true;
            }
            pst.close();
        } catch (SQLException ex) {
            Logger.getLogger(HtmlUnit_pjud2.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public JsonObject buscarCausas(JsonObject jsonResp) {
        System.out.println("Buscando Causas en PODERJUDICIAL....");
        WebClient webClient = new WebClient(BrowserVersion.FIREFOX_45);
        //JsonObject jsonResp = new JsonObject();
        JsonArray jsonArr = new JsonArray();

        try {
//            //Buscar causas en BBDDD
//            Consultado consultado = new BnCausaJudicial().consultarRut(rut, dv);
//            if (consultado != null) {
//                if (consultado.getCausasJudiciales().isEmpty()) {
//                    jsonResp.addProperty("estado", 405);
//                    jsonResp.addProperty("descripcion", "El cliente no posee causas judiciales");
//                } else {
//                    jsonResp.addProperty("estado", 200);
//                    jsonResp.add("causasJudiciales", new Gson().toJsonTree(consultado.getCausasJudiciales()));
//                }
//            } else {
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            Logger logger = Logger.getLogger("");
            logger.setLevel(Level.OFF);
            webClient.getOptions().setThrowExceptionOnScriptError(false);
            webClient.getOptions().setPrintContentOnFailingStatusCode(false);
            webClient.getOptions().setRedirectEnabled(false);
            HtmlPage page = webClient.getPage("http://civil.poderjudicial.cl/CIVILPORWEB/");
            HtmlPage body = (HtmlPage) page.getFrames().get(2).getEnclosedPage();

            if (rut > 50000000) {
                body.getElementById("tdTres").click();
            } else {
                body.getElementById("tdCuatro").click();
            }
            HtmlForm form = body.getForms().get(0);

            if (this.rut >= 50000000) {
                form.getInputByName("RUT_Consulta").setValueAttribute(this.rut + "");
                form.getInputByName("RUT_DvConsulta").setValueAttribute(this.dv.trim().toUpperCase());
            } else {
                form.getInputByName("NOM_Consulta").setValueAttribute(this.nombre);
                form.getInputByName("APE_Paterno").setValueAttribute(this.apePaterno);
                form.getInputByName("APE_Materno").setValueAttribute(this.apeMaterno);
            }
            HtmlPage datos = form.getElementsByTagName("a").get(0).click();

            //Resultados
            HtmlTable resultados = (HtmlTable) datos.getElementById("contentCellsAddTabla");
            DomNodeList filas = resultados.getElementsByTagName("tr");
//                ArrayList<CausaJudicial> arrCausasJ = new ArrayList<>();
            for (int i = 0; i < filas.getLength(); i++) {
                JsonObject json = new JsonObject();
                HtmlTableRow row = (HtmlTableRow) filas.get(i);
                String rol = row.getElementsByTagName("td").get(0).asText().trim();
                String fecha = row.getElementsByTagName("td").get(1).asText().trim();
                String caratulado = row.getElementsByTagName("td").get(2).asText().trim();
                String tribunal = row.getElementsByTagName("td").get(3).asText().trim();

                //Detalles
                HtmlPage pageDetalles = row.getElementsByTagName("td").get(0).getElementsByTagName("a").get(0).click();
                HtmlTable tablaDetalles = (HtmlTable) pageDetalles.getElementsByTagName("table").get(2);
                HtmlTableDataCell td = (HtmlTableDataCell) tablaDetalles.getElementsByTagName("tr").get(3).getElementsByTagName("td").get(1);
                String url = td.getElementsByTagName("img").get(0).getAttribute("onclick");
                url = url.trim();
                url = url.replace("ShowPDFCabecera('", "");
                url = url.substring(0, url.length() - 2);
                url = "http://civil.poderjudicial.cl/" + url;

                HtmlTable tablaLitigantes = (HtmlTable) pageDetalles.getElementById("Litigantes").getElementsByTagName("table").get(1);
                DomNodeList filasLitigantes = tablaLitigantes.getElementsByTagName("tr");
                boolean isDemandado = false;
                for (int j = 0; j < filasLitigantes.getLength(); j++) {
                    HtmlTableRow row2 = (HtmlTableRow) filasLitigantes.get(j);
                    String participante = row2.getElementsByTagName("td").get(0).getTextContent().trim();
                    String rut2 = row2.getElementsByTagName("td").get(1).getTextContent();
                    String rut3 = this.rut + "-" + this.dv;
                    String nombre2 = row2.getElementsByTagName("td").get(3).getTextContent().trim();
                    if (participante.equalsIgnoreCase("DDO.") && rut2.equalsIgnoreCase(rut3)) {
                        isDemandado = true;
                        System.out.println("Participante: " + participante + ", RUT: " + rut2 + ", Nombre: " + nombre2);
                    }
                }
                if (isDemandado == true) {
                    json.addProperty("rol", rol);
                    json.addProperty("fecha", fecha);
                    json.addProperty("caratulado", caratulado);
                    json.addProperty("tribunal", tribunal);
                    json.addProperty("documentoDemanda", url);
                    jsonArr.add(json);

                    try {
                        CausaJudicial cauJ = new CausaJudicial();
                        cauJ.setRol(rol);
                        String[] arFec = fecha.split("/");
                        cauJ.setFecha(arFec[2] + "-" + arFec[1] + "-" + arFec[0]);
                        cauJ.setCaratulado(caratulado);
                        cauJ.setTribunal(new Tribunal(0, tribunal));
                        cauJ.setDocumentoDemanda(url);
                        arrCausasJ.add(cauJ);
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }

            }

            if (jsonArr.size() > 0) {
                
                jsonResp.addProperty("estado", 200);
                jsonResp.add("causasJudiciales", new Gson().toJsonTree(arrCausasJ));
            } else {
                jsonResp.addProperty("estado", 405);
                jsonResp.addProperty("descripcion", "El cliente no posee causas judiciales");
            }
            System.out.println("Saliendo de PODERJUDICIAL...");
//            }

        } catch (IOException ex) {
            ex.printStackTrace();
        } catch (FailingHttpStatusCodeException ex) {
            ex.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            webClient.close();
        }
        return jsonResp;
    }

    public void guardarDatosEnBBDD() {

    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("nombre", this.nombre);
        json.addProperty("apePaterno", this.apePaterno);
        json.addProperty("apeMaterno", this.apeMaterno);
        json.addProperty("rut", this.rut);
        json.addProperty("dv", this.dv);
        json.addProperty("docDemanda", this.docDemanda);
        json.addProperty("tipoDocDemanda", this.tipoDocDemanda);

        return json;
    }
}
