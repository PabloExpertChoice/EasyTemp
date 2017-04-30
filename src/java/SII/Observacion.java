/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SII;

/**
 *Clase representativa de una observacion 
 * @author Clasudio Miranda
 */
public class Observacion {
    private String observacion;

    /**
     * Constructor sin parametros de la clase
     */
    public Observacion() {
    }

    /**
     * Constructor con parametros encargado de asignar valor a la variable de la clase 
     * @param observacion  String 
     */
    public Observacion(String observacion) {
        this.observacion = observacion;
    }

    

    /**
     * Metodo encargado de retornar un String con el valor de la variable observacion
     * @return 
     */
    public String getObservacion() {
        return observacion;
    }

    /**
     * Metodo encargado de asignar un String a la variable ovserbacion 
     * @param observacion 
     */
    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    
    @Override
    public String toString() {
        return "Observaci\u00f3n{" + "observacion=" + observacion + '}';
    }
    
    
}
