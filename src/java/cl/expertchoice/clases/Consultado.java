package cl.expertchoice.clases;

import java.math.BigInteger;
import java.util.ArrayList;

public class Consultado {

    private BigInteger id;
    private String fecha;
    private int rut_cliente;
    private ArrayList<CausaJudicial> causasJudiciales;

    public Consultado() {
    }

    public Consultado(BigInteger id, String fecha, int rut_cliente) {
        this.id = id;
        this.fecha = fecha;
        this.rut_cliente = rut_cliente;
    }

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getRut_cliente() {
        return rut_cliente;
    }

    public void setRut_cliente(int rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public ArrayList<CausaJudicial> getCausasJudiciales() {
        return causasJudiciales;
    }

    public void setCausasJudiciales(ArrayList<CausaJudicial> causasJudiciales) {
        this.causasJudiciales = causasJudiciales;
    }
}
