package cl.expertchoice.clases;

import java.util.ArrayList;

public class Usuario {

    private int id;
    private String nombre;
    private String apePaterno;
    private String apeMaterno;
    private String email;
    private String password;
    private Subsidiary subsidiary;
    private Status estado;
    private Perfil perfil;
    private ArrayList<Recurso> recursos;

    public Usuario() {
    }

    public Usuario(String email, String password) {
        this.email = email;
        this.password = password;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Subsidiary getSubsidiary() {
        return subsidiary;
    }

    public void setSubsidiary(Subsidiary subsidiary) {
        this.subsidiary = subsidiary;
    }

    public Status getEstado() {
        return estado;
    }

    public void setEstado(Status estado) {
        this.estado = estado;
    }

    public Perfil getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfil perfil) {
        this.perfil = perfil;
    }

    public ArrayList<Recurso> getRecursos() {
        return recursos;
    }

    public void setRecursos(ArrayList<Recurso> recursos) {
        this.recursos = recursos;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", nombre=" + nombre + ", apePaterno=" + apePaterno + ", apeMaterno=" + apeMaterno + ", email=" + email + ", password=" + password + ", subsidiary=" + subsidiary + ", estado=" + estado + ", perfil=" + perfil + ", recursos=" + recursos + '}';
    }
}
