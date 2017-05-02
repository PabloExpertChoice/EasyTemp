/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.clases;

import java.math.BigInteger;
import java.sql.Timestamp;

/**
 *
 * @author jgalleguillos
 */
public class Files {
    
    private BigInteger id_file;
    private String nombre;
    private String url ;
    private int tipo ;
    private Timestamp fechaCarga;
    private String fechaCargaS;
    private String fechaCargaSF;

    public Files() {
    }

    
    
    public Files(BigInteger id_file) {
        this.id_file = id_file;
    }

    public Files(BigInteger id_file, String nombre, String url) {
        this.id_file = id_file;
        this.nombre = nombre;
        this.url = url;
    }

    public BigInteger getId_file() {
        return id_file;
    }

    public void setId_file(BigInteger id_file) {
        this.id_file = id_file;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public Timestamp getFechaCarga() {
        return fechaCarga;
    }

    public void setFechaCarga(Timestamp fechaCarga) {
        this.fechaCarga = fechaCarga;
    }

    public String getFechaCargaS() {
        return fechaCargaS;
    }

    public void setFechaCargaS(String fechaCargaS) {
        this.fechaCargaS = fechaCargaS;
    }

    public String getFechaCargaSF() {
        return fechaCargaSF;
    }

    public void setFechaCargaSF(String fechaCargaSF) {
        this.fechaCargaSF = fechaCargaSF;
    }
   
    @Override
    public String toString() {
        return "File{" + "id_file=" + id_file + ", nombre=" + nombre + ", url=" + url + '}';
    }
}
