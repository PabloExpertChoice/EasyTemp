package cl.expertchoice.clases;

import java.math.BigInteger;

public class CausaJudicial {

    private BigInteger id;
    private String rol;
    private String fecha;
    private String caratulado;
    private Tribunal tribunal;
    private String documentoDemanda;
    private BigInteger idConsultado;

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCaratulado() {
        return caratulado;
    }

    public void setCaratulado(String caratulado) {
        this.caratulado = caratulado;
    }

    public Tribunal getTribunal() {
        return tribunal;
    }

    public void setTribunal(Tribunal tribunal) {
        this.tribunal = tribunal;
    }

    public String getDocumentoDemanda() {
        return documentoDemanda;
    }

    public void setDocumentoDemanda(String documentoDemanda) {
        this.documentoDemanda = documentoDemanda;
    }

    public BigInteger getIdConsultado() {
        return idConsultado;
    }

    public void setIdConsultado(BigInteger idConsultado) {
        this.idConsultado = idConsultado;
    }
}
