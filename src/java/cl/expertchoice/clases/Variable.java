package cl.expertchoice.clases;

import org.json.JSONException;
import org.json.JSONObject;

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

    public JSONObject toJson() throws JSONException {
        JSONObject json = new JSONObject();
        json.put("id", this.id);
        json.put("nombre", this.nombre);
        return json;
    }
}
