package cl.expertchoice.clases;

import com.google.gson.JsonObject;

public class TipoAdminRiskTier {

    private int id;
    private String nombre;

    public TipoAdminRiskTier() {
    }

    public TipoAdminRiskTier(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.nombre);
        return json;
    }
}
