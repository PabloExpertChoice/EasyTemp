package cl.expertchoice.clases;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.util.ArrayList;

public class AdminRiskTier {

    private int id;
    private String nombre;
    private String fechaCreacion;
    private TipoAdminRiskTier tipo;
    private ArrayList<DetalleAdminRiskTier> detalle;

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

    public String getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public TipoAdminRiskTier getTipo() {
        return tipo;
    }

    public void setTipo(TipoAdminRiskTier tipo) {
        this.tipo = tipo;
    }

    public ArrayList<DetalleAdminRiskTier> getDetalle() {
        return detalle;
    }

    public void setDetalle(ArrayList<DetalleAdminRiskTier> detalle) {
        this.detalle = detalle;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.nombre);
        json.addProperty("fechaCreacion", this.fechaCreacion);
        json.add("detalle", new Gson().toJsonTree(this.detalle));
        return json;
    }
}
