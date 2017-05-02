/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Perfil;
import cl.expertchoice.clases.Status;
import cl.expertchoice.clases.Subsidiary;
import cl.expertchoice.clases.Usuario;
import soporte.ENCR;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import soporte.D;


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
        BnSubsidiary bnEmp = new BnSubsidiary();
        String sql = "SELECT nomb, apellpat, apellmat, subsidiary_id, status_id, perfil_id\n"
                + "FROM "+D.ESQUEMA+".USER \n"
                + "WHERE email = '" + user + "' \n"
                + "AND clave = '" + ENCR.toMD5(pass) + "'";
        conn = Conexion.getConexionEasy();
        pst = conn.prepareStatement(sql);

        rs = pst.executeQuery();


        if (rs.next()) {
            usuario = new Usuario();
            //cada usuario tiene solo una subsidiaria
            Subsidiary emp = bnEmp.listar(rs.getInt("subsidiary_id"));
            usuario.setNombre(rs.getString("nomb"));
            usuario.setCorreo(user);
            usuario.setApellidoPaterno(rs.getString("apellpat"));
            
            //por que se setea status?
            Status status = new Status(0, user, user);
            usuario.setStatus(status);
            
            usuario.setSubsidiary(emp);
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
