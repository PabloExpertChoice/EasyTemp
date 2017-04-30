/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.clases;

/**
 *
 * @author erick
 */
public class Usuario {
    private Empresa empresa;
    private String user_emp;
    private String pass_emp;
    private String nom_user;

    public Usuario(Empresa empresa, String user_emp, String pass_emp, String nom_user) {
        this.empresa = empresa;
        this.user_emp = user_emp;
        this.pass_emp = pass_emp;
        this.nom_user = nom_user;
    }

//    public Usuario(String nom_empresa, String pass_emp, String nom_user, String user_emp) {
//        this.nom_empresa = nom_empresa;
//        this.pass_emp = pass_emp;
//        this.nom_user = nom_user;
//        this.user_emp = user_emp;
//    }

    public Usuario() {
        
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

//    /**
//     * @return the nom_empresa
//     */
//    public String getNom_empresa() {
//        return nom_empresa;
//    }
//
//    /**
//     * @param nom_empresa the nom_empresa to set
//     */
//    public void setNom_empresa(String nom_empresa) {
//        this.nom_empresa = nom_empresa;
//    }

    /**
     * @return the pass_emp
     */
    public String getPass_emp() {
        return pass_emp;
    }

    /**
     * @param pass_emp the pass_emp to set
     */
    public void setPass_emp(String pass_emp) {
        this.pass_emp = pass_emp;
    }

    /**
     * @return the nom_user
     */
    public String getNom_user() {
        return nom_user;
    }

    /**
     * @param nom_user the nom_user to set
     */
    public void setNom_user(String nom_user) {
        this.nom_user = nom_user;
    }

    /**
     * @return the user_emp
     */
    public String getUser_emp() {
        return user_emp;
    }

    /**
     * @param user_emp the user_emp to set
     */
    public void setUser_emp(String user_emp) {
        this.user_emp = user_emp;
    }
    
}
