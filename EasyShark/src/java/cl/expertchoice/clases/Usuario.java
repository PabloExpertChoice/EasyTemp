/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.clases;

import soporte.ENCR;
import com.google.gson.JsonObject;
import java.math.BigInteger;

public class Usuario {

    private BigInteger id;
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String correo;
    private String password;
    private Perfil perfil;
    private Subsidiary subsidiary;
    private Status status;

    public Usuario() {
    }

    public Usuario(BigInteger id) {
        this.id = id;
    }

    public Usuario(String correo, String password) {
        this.correo = correo;
        this.password = password;
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

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPasswordMD5(String password) {
        this.password = ENCR.toMD5(password);
    }

    public Perfil getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfil perfil) {
        this.perfil = perfil;
    }

    public Subsidiary getSubsidiary() {
        return subsidiary;
    }

    public void setSubsidiary(Subsidiary subsidiary) {
        this.subsidiary = subsidiary;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public JsonObject toJson() {
        JsonObject json = new JsonObject();
        json.addProperty("id", this.id);
        json.addProperty("nombre", this.nombre);
        json.addProperty("apellidoPaterno", this.apellidoPaterno);
        json.addProperty("apellidoMaterno", this.apellidoMaterno);
        json.addProperty("correo", this.correo);
        json.add("perfil", this.perfil.toJson());
        json.add("subsidiary", this.subsidiary.toJson());
        json.add("status", this.status.toJson());

        return json;
    }
}    

