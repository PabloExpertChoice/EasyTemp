package cl.expertchoice.clases;

import com.google.gson.JsonObject;
import java.math.BigInteger;

public class Quiebra {

    private BigInteger id;
    private String fechaDeclaratoria;
    private String fechaPublicacion;
    private String tribunal;
    private String rolCausa;
    private String sindico;

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public String getFechaDeclaratoria() {
        return fechaDeclaratoria;
    }

    public void setFechaDeclaratoria(String fechaDeclaratoria) {
        this.fechaDeclaratoria = fechaDeclaratoria;
    }

    public String getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(String fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public String getTribunal() {
        return tribunal;
    }

    public void setTribunal(String tribunal) {
        this.tribunal = tribunal;
    }

    public String getRolCausa() {
        return rolCausa;
    }

    public void setRolCausa(String rolCausa) {
        this.rolCausa = rolCausa;
    }

    public String getSindico() {
        return sindico;
    }

    public void setSindico(String sindico) {
        this.sindico = sindico;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("fechaDeclaratoria", this.fechaDeclaratoria);
        json.addProperty("fechaPublicacion", this.fechaPublicacion);
        json.addProperty("tribunal", this.tribunal);
        json.addProperty("rolCausa", this.rolCausa);
        json.addProperty("sindico", this.sindico);
        return json;
    }
}
