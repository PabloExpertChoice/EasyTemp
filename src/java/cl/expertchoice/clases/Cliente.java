package cl.expertchoice.clases;

import SII.ActividadEconomica;
import SII.Observacion;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.math.BigInteger;
import java.util.ArrayList;

public class Cliente {

    private BigInteger id;
    private String tipoCliente;
    private String nombre;
    private String apePaterno;
    private String apeMaterno;
    private int rut = 0;
    private String dv;
    private String direccion;
    private String region;
    private String inicioActividades;
    private String autorizadoPagarMonedaExtrangera;
    private String empresaMenorTamano;
    private int numDocTimbrados;
    private int numObs;
    private ArrayList<Observacion> observaciones;
//    private Quiebra quiebra;
    private ArrayList<ActividadEconomica> actividadEconomica;

    public Cliente() {
    }

    public Cliente(int rut, String dv) {
        this.rut = rut;
        this.dv = dv;
    }

    public Cliente(String nombre, String apePaterno, String apeMaterno, int rut, String dv) {
        this.nombre = nombre;
        this.apePaterno = apePaterno;
        this.apeMaterno = apeMaterno;
        this.rut = rut;
        this.dv = dv;
    }

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public String getTipoCliente() {
        return tipoCliente;
    }

    public void setTipoCliente(String tipoCliente) {
        this.tipoCliente = tipoCliente;
    }

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

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

//    public Quiebra getQuiebra() {
//        return quiebra;
//    }
//
//    public void setQuiebra(Quiebra quiebra) {
//        this.quiebra = quiebra;
//    }

    public String getInicioActividades() {
        return inicioActividades;
    }

    public void setInicioActividades(String inicioActividades) {
        this.inicioActividades = inicioActividades;
    }

    public ArrayList<ActividadEconomica> getActividadEconomica() {
        return actividadEconomica;
    }

    public void setActividadEconomica(ArrayList<ActividadEconomica> actividadEconomica) {
        this.actividadEconomica = actividadEconomica;
    }

    public String getAutorizadoPagarMonedaExtrangera() {
        return autorizadoPagarMonedaExtrangera;
    }

    public void setAutorizadoPagarMonedaExtrangera(String autorizadoPagarMonedaExtrangera) {
        this.autorizadoPagarMonedaExtrangera = autorizadoPagarMonedaExtrangera;
    }

    public String getEmpresaMenorTamano() {
        return empresaMenorTamano;
    }

    public void setEmpresaMenorTamano(String empresaMenorTamano) {
        this.empresaMenorTamano = empresaMenorTamano;
    }

    public ArrayList<Observacion> getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(ArrayList<Observacion> observaciones) {
        this.observaciones = observaciones;
    }

    public int getNumDocTimbrados() {
        return numDocTimbrados;
    }

    public void setNumDocTimbrados(int numDocTimbrados) {
        this.numDocTimbrados = numDocTimbrados;
    }

    public int getNumObs() {
        return numObs;
    }

    public void setNumObs(int numObs) {
        this.numObs = numObs;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.nombre);
        json.addProperty("apePaterno", this.apePaterno);
        json.addProperty("apeMaterno", this.apeMaterno);
        json.addProperty("rut", this.rut);
        json.addProperty("dv", this.dv);
        json.addProperty("direccion", this.direccion);
        json.addProperty("region", this.region);
        json.addProperty("inicioActividades", this.inicioActividades);
        json.addProperty("autorizadoPagarMonedaExtrangera", this.autorizadoPagarMonedaExtrangera);
        json.addProperty("empresaMenorTamano", this.empresaMenorTamano);
        json.addProperty("numDocTimbrados", this.numDocTimbrados);
        json.addProperty("numObs", this.numObs);
//        if (this.quiebra != null) {
//            json.add("quiebra", this.quiebra.toJson());
//        }

        if (this.actividadEconomica != null) {
            json.add("actividadEconomica", new Gson().toJsonTree(this.actividadEconomica));
        }

        if (this.observaciones != null) {
            json.add("observaciones", new Gson().toJsonTree(this.observaciones));
        }

        return json;
    }
}
