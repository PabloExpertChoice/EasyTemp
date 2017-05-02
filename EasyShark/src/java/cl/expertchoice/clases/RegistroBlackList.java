/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.clases;

import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author jgalleguillos
 */
public class RegistroBlackList {
    Long id_blacklist;   
    Long id_empresa;
    String comentario;
    int estado;
    Timestamp fecha;
    Long id_usuario;
    int rut;
    
    public RegistroBlackList() {
    }

    public RegistroBlackList(Long id_empresa, String comentario, int estado, Timestamp fecha, Long id_usuario, int rut) {
        this.id_empresa = id_empresa;
        this.comentario = comentario;
        this.estado = estado;
        this.fecha = fecha;
        this.id_usuario = id_usuario;
        this.rut = rut;
    }

    
    public Long getId_blacklist() {
        return id_blacklist;
    }

    public void setId_blacklist(Long id_blacklist) {
        this.id_blacklist = id_blacklist;
    }

    public Long getId_empresa() {
        return id_empresa;
    }

    public void setId_empresa(Long id_empresa) {
        this.id_empresa = id_empresa;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public Timestamp getFecha() {
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public Long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    
    
    
    
           
    
    
    
    
}
