package cl.expertchoice.clases;

import com.google.gson.JsonObject;
import java.math.BigInteger;
import java.util.ArrayList;

public class CabeceraTablaCore {

    private BigInteger id;
    private BigInteger idRiskIndicator;
    private String eje;
    private String valor;

    public CabeceraTablaCore() {
    }

    public CabeceraTablaCore(BigInteger id, BigInteger idRiskIndicator, String eje, String valor) {
        this.id = id;
        this.idRiskIndicator = idRiskIndicator;
        this.eje = eje;
        this.valor = valor;
    }

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public BigInteger getIdRiskIndicator() {
        return idRiskIndicator;
    }

    public void setIdRiskIndicator(BigInteger idRiskIndicator) {
        this.idRiskIndicator = idRiskIndicator;
    }

    public String getEje() {
        return eje;
    }

    public void setEje(String eje) {
        this.eje = eje;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("idRiskIndicator", this.idRiskIndicator);
        json.addProperty("eje", this.eje);
        json.addProperty("valor", this.valor);
        return json;
    }
}
