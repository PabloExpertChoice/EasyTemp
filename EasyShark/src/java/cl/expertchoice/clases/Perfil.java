package cl.expertchoice.clases;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.util.ArrayList;

public class Perfil {

    private int id;
    private String nombre;

    public Perfil() {
    }

    public Perfil(int id, String nombre) {
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
