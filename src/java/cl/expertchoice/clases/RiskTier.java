package cl.expertchoice.clases;

import com.google.gson.JsonObject;
import java.math.BigInteger;

public class RiskTier {

    private BigInteger id;
    private String nombre;
    private boolean activo;

    public RiskTier() {
    }

    public RiskTier(BigInteger id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.nombre);
        json.addProperty("activo", this.activo);
        return json;
    }
}
