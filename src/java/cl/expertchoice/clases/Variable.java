package cl.expertchoice.clases;

import com.google.gson.JsonObject;

public class Variable {

    private int id;
    private String nombre;

    public Variable() {
    }

    public Variable(int id, String detalle) {
        this.id = id;
        this.nombre = detalle;
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
