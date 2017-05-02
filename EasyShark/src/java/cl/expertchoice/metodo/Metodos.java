/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.metodo;

/**
 *
 * @author ignacio
 */
public class Metodos {
    public static String ObtenerClasificacion(String clasificacion){
        String detalle = "No se encuentra clasificado";
        
        switch(clasificacion){
            case "A":
                detalle = "Empresa sin documentos impagos vigentes ni anotaciones relevantes.";
                break;
            case "B":
                detalle = "Empresa con algún documto impago vigente, no reciente";
                break;
            case "C":
                detalle = "Empresa con más de algún documento impago vigente, ninguno de los cuales es muy reciente o anotaciones negativas, o presenta información en el Boletín Laboral.";
                break;
            case "D":
                detalle = "Empresa con varios documentos impagos vigentes, vencimiento reciente o de altos montos; o presenta información en el Boletín Laboral.";
                break;
            case "E":
                detalle = "Empresa con numerosos acreedores y/o documentos impagos vigentes por altos montos o de vencimiento reciente; o presenta información en Boletín Laboral.";
                break;
            case "F":
                detalle = "Empresa con antecedentes de documentos impagos vigentes, inusualmente altos o recientes; o presenta información en el Boletín Laboral.";
                break;
            case "G":
                detalle = "Empresa con antecedentes muy recientes o excepcionalmente altos en documentos acreedores y/o montos; o presenta información en el Boletín Laboral.";
                break;
            case "SC":
                detalle = "Empresa presenta situaciones, antecedentes o datos que no permiten su clasificación.";
                break;
        }
        
        return detalle;
    }
    
    public static String ObtenerScore(int score){
        String detalle = "No se encuentra puntaje";
        
        if(score < 1000 && score >= 796){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 22.4%";
        }
        if(score <= 795 && score >= 608){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 31.4%";
        }
        if(score <= 607 && score >= 442){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 58.7%";
        }
        if(score <= 441 && score >= 232){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 78.8%";
        }
        if(score <= 231 && score >= 118){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 90.6%";
        }
        if(score <= 117 && score >= 32){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 96.0%";
        }
        if(score <= 31 && score >= 1){
            detalle = "Esta persona cuenta con una probabilidad de no pago de un 98.9%";
        }
        if(score == 0){
            detalle = "Esta persona no registra un score";
        }
        return detalle;
    }
}
