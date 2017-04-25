package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.RegistroBlackList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import soporte.D;

public class BnBlackList {

    public boolean insertarBlackList(int id_empresa, String comentario, int estado, int id_usuario, int rut) throws SQLException {
        Connection conn = null;
        boolean flag = false;
        try {
            conn = Conexion.getConexionEasy();

            String sql = "INSERT INTO " + D.ESQUEMA + ".LC_BLACKLIST\n"
                    + "( ID_EMPRESA, COMENTARIO, ESTADO, FECHA, ID_USUARIO, RUT)\n"
                    + "VALUES( ?, ?, ?, CURRENT_TIMESTAMP, ?, ?);";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id_empresa);
            pst.setString(2, comentario);
            pst.setInt(3, estado);
            pst.setInt(4, id_usuario);
            pst.setInt(5, rut);
            if (pst.executeUpdate() > 0) {
                flag = true;
            }
            pst.close();
        } finally {
            Conexion.Desconectar(conn);
        }
        return flag;
    }

    public ArrayList<RegistroBlackList> verBlackListxRut(int rut) throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<RegistroBlackList> lista = new ArrayList<RegistroBlackList>();
        String sql = "SELECT ID_BLACKLIST, ID_EMPRESA, COMENTARIO, ESTADO, FECHA, ID_USUARIO, RUT\n"
                + "FROM easy.LC_BLACKLIST WHERE RUT = ? ORDER BY FECHA;";
        conn = Conexion.getConexionEasy();
        pst = conn.prepareStatement(sql);

        pst.setInt(1, rut);
        rs = pst.executeQuery();
        while (rs.next()) {
            RegistroBlackList registro = new RegistroBlackList();
            registro.setId_blacklist(rs.getLong("ID_BLACKLIST"));
            registro.setId_empresa(rs.getLong("ID_EMPRESA"));
            registro.setComentario(rs.getString("COMENTARIO"));
            registro.setEstado(rs.getInt("ESTADO"));
            registro.setFecha(rs.getTimestamp("FECHA"));
            registro.setId_usuario(rs.getLong("ID_USUARIO"));
            registro.setRut(rs.getInt("RUT"));
            lista.add(registro);
        }
        pst.close();
        Conexion.Desconectar(conn);
        return lista;
    }
}
