/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.clases;

import java.util.Date;

/**
 *
 * @author jgalleguillos
 */
public class Contratacion {
    Long Id_contratacion;
    Long Id_tipocontratacion;
    Long Id_usuario;
    Date Fecha_aceptacion;
    Date Fecha_modificacion;
    int Estado;

    public Contratacion() {
    }
    
    

    public Contratacion(Long Id_contratacion, Long Id_tipocontratacion, Long Id_usuario, Date Fecha_aceptacion, Date Fecha_modificacion, int Estado) {
        this.Id_contratacion = Id_contratacion;
        this.Id_tipocontratacion = Id_tipocontratacion;
        this.Id_usuario = Id_usuario;
        this.Fecha_aceptacion = Fecha_aceptacion;
        this.Fecha_modificacion = Fecha_modificacion;
        this.Estado = Estado;
    }

    public Long getId_contratacion() {
        return Id_contratacion;
    }

    public void setId_contratacion(Long Id_contratacion) {
        this.Id_contratacion = Id_contratacion;
    }

    public Long getId_tipocontratacion() {
        return Id_tipocontratacion;
    }

    public void setId_tipocontratacion(Long Id_tipocontratacion) {
        this.Id_tipocontratacion = Id_tipocontratacion;
    }

    public Long getId_usuario() {
        return Id_usuario;
    }

    public void setId_usuario(Long Id_usuario) {
        this.Id_usuario = Id_usuario;
    }

    public Date getFecha_aceptacion() {
        return Fecha_aceptacion;
    }

    public void setFecha_aceptacion(Date Fecha_aceptacion) {
        this.Fecha_aceptacion = Fecha_aceptacion;
    }

    public Date getFecha_modificacion() {
        return Fecha_modificacion;
    }

    public void setFecha_modificacion(Date Fecha_modificacion) {
        this.Fecha_modificacion = Fecha_modificacion;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }  

    @Override
    public String toString() {
        return "Contratacion{" + "Id_contratacion=" + Id_contratacion + ", Id_tipocontratacion=" + Id_tipocontratacion + ", Id_usuario=" + Id_usuario + ", Fecha_aceptacion=" + Fecha_aceptacion + ", Fecha_modificacion=" + Fecha_modificacion + ", Estado=" + Estado + '}';
    }
    
}
