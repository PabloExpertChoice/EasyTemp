package SII;

import cl.expertchoice.clases.Cliente;
import java.io.StringReader;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;
import org.netbeans.saas.RestResponse;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.netbeans.saas.root.Rootwe;
import soporte.DescomponerNombre;

public class WebServiceConsultas {

//    public Cliente consultaSii(int rut, String dv) {
//        String user = "test1234";
//        String pass = "test5678";
//        Cliente resp = null;
//        try {
//            RestResponse result = RootweSii.getXml(rut + "-" + dv, user, pass);
//            String xml = result.getDataAsString();
//            DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
//            InputSource is = new InputSource();
//            is.setCharacterStream(new StringReader(xml));
//            is.setEncoding("UTF-8");
//
//            Document doc = db.parse(is);
//            XPathFactory xPathfactory = XPathFactory.newInstance();
//            XPath xpath = xPathfactory.newXPath();
//            int status = Integer.parseInt(xpath.evaluate("//response/status/text()", doc));
//            if (status == 8 || status == 0 || status == 20) {
//                resp = new Cliente();
//                resp.setRut(rut);
//                resp.setDv(dv);
//                DescomponerNombre d = new DescomponerNombre(xpath.evaluate("//response/detalleConsulta/razon/text()", doc).trim());
//                d.descomponeNombreApellido();
//                resp.setNombre(d.getNOMBRES().trim());
//                resp.setApePaterno(d.getAPELLIDOP().trim());
//                resp.setApeMaterno(d.getAPELLIDOM().trim());
//
//                resp = new BnCliente().guardarCliente(resp);
//            }
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//
//        return resp;
//    }

    public Cliente consultarActividadComercial(int rut, String dv) {
        String user = "test1234";
        String pass = "test5678";
        Cliente resp = null;
        try {
            RestResponse result = Rootwe.getXmlSII(rut + "-" + dv, user, pass);
            String xml = result.getDataAsString();
            DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            InputSource is = new InputSource();
            is.setCharacterStream(new StringReader(xml));
            is.setEncoding("UTF-8");

            Document doc = db.parse(is);
            XPathFactory xPathfactory = XPathFactory.newInstance();
            XPath xpath = xPathfactory.newXPath();
            int status = Integer.parseInt(xpath.evaluate("//response/status/text()", doc));
            if (status == 8 || status == 0 || status == 20) {
                resp = new Cliente();
                resp.setRut(rut);
                resp.setDv(dv);
                DescomponerNombre d = new DescomponerNombre(xpath.evaluate("//response/detalleConsulta/razon/text()", doc).trim());
                resp.setNombre(d.getNOMBRES());
                resp.setApePaterno(d.getAPELLIDOP());
                resp.setApeMaterno(d.getAPELLIDOM());
                resp.setInicioActividades(xpath.evaluate("//response/detalleConsulta/inicioActividades/text()", doc));
                resp.setAutorizadoPagarMonedaExtrangera(xpath.evaluate("//response/detalleConsulta/autorizadoPagarMonedaExtrangera/text()", doc));
                resp.setEmpresaMenorTamano(xpath.evaluate("//response/detalleConsulta/empresaMenorTamano/text()", doc));
                int num = Integer.parseInt(xpath.evaluate("count(//response/detalleActividadEconomicas/actividad)", doc));
                int numObs = Integer.parseInt(xpath.evaluate("count(//response/detalleObservacion/observacion)", doc));
                int documentosTimbrados = Integer.parseInt(xpath.evaluate("count(//response/detalleDocTimbrados/doc)", doc));
                resp.setNumDocTimbrados(documentosTimbrados);

                ArrayList<ActividadEconomica> arr = new ArrayList<>();
                for (int i = 0; i < num; i++) {
                    ActividadEconomica actEco = new ActividadEconomica();
                    actEco.setActividad(xpath.evaluate("//response/detalleActividadEconomicas/actividad[" + i + "]/actividad", doc));
                    actEco.setAfctaIVA(xpath.evaluate("//response/detalleActividadEconomicas/actividad[" + i + "]/afctaIVA", doc));
                    actEco.setCategoria(xpath.evaluate("//response/detalleActividadEconomicas/actividad[" + i + "]/categoria", doc));
                    actEco.setCodigo(xpath.evaluate("//response/detalleActividadEconomicas/actividad[" + i + "]/codigo", doc));
                    arr.add(actEco);
                }
                resp.setActividadEconomica(arr);

                ArrayList<Observacion> arrObs = new ArrayList<>();
                for (int i = 0; i < numObs; i++) {
                    Observacion obs = new Observacion();
                    obs.setObservacion(xpath.evaluate("//response/detalleObservacion/observacion[" + i + "]/observacion", doc));
                    arrObs.add(obs);
                }
                resp.setObservaciones(arrObs);

//                resp = new BnCliente().guardarCliente(resp);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return resp;
    }

    /**
     * Buscar informacion del cliente en SII y en 24x7
     *
     * @param rut
     * @param dv
     * @return
     */
//    public Cliente consultaWSIdentificacion(int rut, String dv) {
//        Cliente resp = null;
//        try {
//            String uSER = "consultaMotor";
//            String pASS = "passMotor";
//
//            RestResponse result = Rootapplication.getXml(rut + "-" + dv, uSER, pASS);
//            String xml = result.getDataAsString();
//            DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
//            InputSource is = new InputSource();
//            is.setCharacterStream(new StringReader(xml));
//            is.setEncoding("UTF-8");
//
//            Document doc = db.parse(is);
//            XPathFactory xPathfactory = XPathFactory.newInstance();
//            XPath xpath = xPathfactory.newXPath();
//            int status = Integer.parseInt(xpath.evaluate("//response/status/text()", doc));
//            if (status == 0) {
//                Cliente c = new Cliente();
//                c.setRut(rut);
//                c.setDv(dv);
//                if (rut > 50000000) {
//                    c.setNombre(xpath.evaluate("//response/nombre/text()", doc).trim() + " " + xpath.evaluate("//response/ape_paterno/text()", doc).trim() + " " + xpath.evaluate("//response/ape_materno/text()", doc).trim());
//                } else {
//                    c.setNombre(xpath.evaluate("//response/nombre/text()", doc).trim());
//                    c.setApePaterno(xpath.evaluate("//response/ape_paterno/text()", doc).trim());
//                    c.setApeMaterno(xpath.evaluate("//response/ape_materno/text()", doc).trim());
//                }
//
//                if (c.getNombre().trim().length() > 0 && c.getApePaterno().trim().length() > 0) {
//                    c = new BnCliente().guardarCliente(c);
//                    if (c != null) {
//                        resp = c;
//                    }
//                }
//            }
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//
//        return resp;
//    }
}
