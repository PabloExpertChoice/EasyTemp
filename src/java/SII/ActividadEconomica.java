/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SII;

/**
 * Clase encargada de representar una actividad economica
 *
 * @author Claudio Miranda
 */
public class ActividadEconomica {

    private String actividad;
    private String codigo;
    private String categoria;
    private String AfctaIVA;

    /**
     * Constructor sin parametros de la clase
     */
    public ActividadEconomica() {
    }

    /**
     * Constructor encargado de recibir los parametros para inicalizar las
     * variables de la clase
     *
     * @param actividad String
     * @param codigo String
     * @param categoria String
     * @param AfctaIVA String
     */
    public ActividadEconomica(String actividad, String codigo, String categoria, String AfctaIVA) {
        this.actividad = actividad;
        this.codigo = codigo;
        this.categoria = categoria;
        this.AfctaIVA = AfctaIVA;

    }

    /**
     * Retorna un String con el valor de la variable actividad
     *
     * @return String
     */
    public String getActividad() {
        return actividad;
    }

    /**
     * Asigna un String a la variable actividad
     *
     * @param actividad String
     */
    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    /**
     * Retorna un String con el valor de la variable codigo
     *
     * @return String
     */
    public String getCodigo() {
        return codigo;
    }

    /**
     * Asigna un String a la variable codigo
     *
     * @param codigo String
     */
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    /**
     * Retorna un String con el valor de la variable categoria
     *
     * @return String
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * Asigna un String a la variable categoria
     *
     * @param categoria String
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     *Retorna un String con el valor de la variable AfctaIVA
     * @return String
     */
    public String getAfctaIVA() {
        return AfctaIVA;
    }

    /**
     * Asigna un String a la variable AfctaIVA
     * @param AfctaIVA String
     */
    public void setAfctaIVA(String AfctaIVA) {
        this.AfctaIVA = AfctaIVA;
    }
    

    @Override
    public String toString() {
        return "ActividadEconomica{" + "actividad=" + actividad + ", codigo=" + codigo + ", categoria=" + categoria + ", AfctaIVA=" + AfctaIVA + '}';
    }

    
}
