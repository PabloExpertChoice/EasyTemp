/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Empresa;
import cl.expertchoice.clases.Usuario;
import soporte.ENCR;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author erick
 */
public class bnsLogin {

    /**
     * valida sesion resibe los parametros siguientes parametros y consulta al
     * base de datos si existe el usuario
     *
     * @param user
     * @param pass
     * @return Uusuario()
     * @throws SQLException
     */
    public Usuario iniciarSesion(String user, String pass) throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        Usuario usuario = null;
        String sql = "SELECT Id, nom_empresa, nom_user, user_emp\n"
                + "FROM CuentaEmpresa \n"
                + "WHERE user_emp = '" + user + "' \n"
                + "AND pass_emp = '" + ENCR.toMD5(pass) + "'";
        conn = Conexion.getConexion();
        pst = conn.prepareStatement(sql);

        rs = pst.executeQuery();

        while (rs.next()) {
            usuario = new Usuario();
            usuario.setEmpresa(new Empresa(rs.getInt("Id"), rs.getString("nom_empresa")));
            usuario.setNom_user(rs.getString("nom_user"));
            usuario.setUser_emp(user);
            usuario.setPass_emp(pass);
            System.out.println(usuario.toString());
        }
        Conexion.Desconectar(conn);
        return usuario;
    }

    //metodo main para probar si el login debuelve datos    
    public static void main(String[] args) {
        bnsLogin log = new bnsLogin();
        try {
            log.iniciarSesion("ws.user", "ws.123456");
        } catch (SQLException ex) {
            Logger.getLogger(bnsLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
