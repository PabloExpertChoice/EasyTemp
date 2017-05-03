package cl.expertchoice.clases;

import com.google.gson.JsonObject;

public class Subsidiary {

    private int id;
    private int rut;
    private String dv;
    private String nombre;
    private String apePaterno;
    private String apeMaterno;

    public Subsidiary() {
    }

    public Subsidiary(int rut, String dv) {
        this.rut = rut;
        this.dv = dv;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public String getDv() {
        return dv;
    }

    public void setDv(String dv) {
        this.dv = dv;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApePaterno() {
        return apePaterno;
    }

    public void setApePaterno(String apePaterno) {
        this.apePaterno = apePaterno;
    }

    public String getApeMaterno() {
        return apeMaterno;
    }

    public void setApeMaterno(String apeMaterno) {
        this.apeMaterno = apeMaterno;
    }
    
    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.rut);
        json.addProperty("nombre", this.dv);
        json.addProperty("nombre", this.nombre);
        json.addProperty("nombre", this.apePaterno);
        json.addProperty("nombre", this.apeMaterno);
        
        return json;
    }

    @Override
    public String toString() {
        return "Subsidiary{" + "id=" + id + ", rut=" + rut + ", dv=" + dv + ", nombre=" + nombre + ", apePaterno=" + apePaterno + ", apeMaterno=" + apeMaterno + '}';
    }
    
}
