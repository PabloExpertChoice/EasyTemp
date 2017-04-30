package cl.expertchoice.clases;

//import com.google.gson.JsonObject;

import com.google.gson.JsonObject;


public class Variable {

    private int id;
    private String nombre;
    private String variable;
    private char tipo;

    public Variable() {
    }

    public Variable(int id, String detalle) {
        this.id = id;
        this.nombre = detalle;
    }
    
    public Variable(int id, String detalle, String variable, char tipo) {
        this.id = id;
        this.nombre = detalle;
        this.variable = variable;
        this.tipo = tipo;
    }
    
    //Id:
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    //Nombre
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    //Variable
    public String getVariable() {
        return variable;
    }

    public void setVariable(String variable) {
        this.variable = variable;
    }
    
    //Tipo:
    public char getTipo() {
        return tipo;
    }

    public void setTipo(char tipo) {
        this.tipo = tipo;
    }  

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.nombre);
        json.addProperty("variable", this.variable);
        json.addProperty("tipo", this.tipo);
        return json;
    }
}
