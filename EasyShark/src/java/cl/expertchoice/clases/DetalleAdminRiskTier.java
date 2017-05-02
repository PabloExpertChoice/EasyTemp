package cl.expertchoice.clases;

import com.google.gson.JsonObject;

public class DetalleAdminRiskTier {

    private int id;
    private int idAdminRiskTier;
    private int idRiskTier;
    private String valor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdAdminRiskTier() {
        return idAdminRiskTier;
    }

    public void setIdAdminRiskTier(int idAdminRiskTier) {
        this.idAdminRiskTier = idAdminRiskTier;
    }

    public int getIdRiskTier() {
        return idRiskTier;
    }

    public void setIdRiskTier(int idRiskTier) {
        this.idRiskTier = idRiskTier;
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
        json.addProperty("idAdminRiskTier", this.idAdminRiskTier);
        json.addProperty("idRiskTier", this.idRiskTier);
        json.addProperty("valor", this.valor);
        return json;
    }
}
