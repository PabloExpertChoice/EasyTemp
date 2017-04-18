package cl.expertchoice.clases;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.math.BigInteger;
import java.util.ArrayList;

public class TablaRiskIndicator {

    private BigInteger id;
    private Variable origenX;
    private Variable origenY;
    private int numFilas;
    private int numColumnas;
    private TipoAdminRiskTier tipoAdminRiskTier;
    private ArrayList<CabeceraTablaCore> caberasTablaCore;

    public TablaRiskIndicator() {
    }

    public TablaRiskIndicator(BigInteger id, Variable origenX, Variable origenY, int numFilas, int numColumnas) {
        this.id = id;
        this.origenX = origenX;
        this.origenY = origenY;
        this.numFilas = numFilas;
        this.numColumnas = numColumnas;
    }

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public Variable getOrigenX() {
        return origenX;
    }

    public void setOrigenX(Variable origenX) {
        this.origenX = origenX;
    }

    public Variable getOrigenY() {
        return origenY;
    }

    public void setOrigenY(Variable origenY) {
        this.origenY = origenY;
    }

    public int getNumFilas() {
        return numFilas;
    }

    public void setNumFilas(int numFilas) {
        this.numFilas = numFilas;
    }

    public int getNumColumnas() {
        return numColumnas;
    }

    public void setNumColumnas(int numColumnas) {
        this.numColumnas = numColumnas;
    }

    public TipoAdminRiskTier getTipoAdminRiskTier() {
        return tipoAdminRiskTier;
    }

    public void setTipoAdminRiskTier(TipoAdminRiskTier tipoAdminRiskTier) {
        this.tipoAdminRiskTier = tipoAdminRiskTier;
    }

    public ArrayList<CabeceraTablaCore> getCaberasTablaCore() {
        return caberasTablaCore;
    }

    public void setCaberasTablaCore(ArrayList<CabeceraTablaCore> caberasTablaCore) {
        this.caberasTablaCore = caberasTablaCore;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.add("origenX", this.origenX.toJson());
        json.add("origenY", this.origenY.toJson());
        json.addProperty("numFilas", this.numFilas);
        json.addProperty("numColumnas", this.numColumnas);
        json.add("caberasTablaCore", new Gson().toJsonTree(this.caberasTablaCore));
        return json;
    }
}
