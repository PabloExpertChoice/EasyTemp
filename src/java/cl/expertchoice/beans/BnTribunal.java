package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Tribunal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import soporte.D;

public class BnTribunal {

    public ArrayList<Tribunal> listar() throws SQLException {
        Connection conn = null;
        ArrayList<Tribunal> arr = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT ID_TRIBUNAL, NOMBRE FROM " + D.ESQUEMA + ".TRIBUNAL ";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            arr = new ArrayList<>();
            while (rs.next()) {
                arr.add(new Tribunal(rs.getInt("ID"), rs.getString("NOMBRE")));
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }

    public int recuperarId(String nombre) throws SQLException {
        Connection conn = null;
        int id = 0;
        try {
            nombre = nombre.replace((char) 176, (char) 186);

            conn = Conexion.getConexionEasy();
            String sql = "SELECT ID_TRIBUNAL \n"
                    + "FROM " + D.ESQUEMA + ".TRIBUNAL\n"
                    + "WHERE NOMBRE LIKE '" + nombre + "'";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ID_TRIBUNAL");
            }
        } finally {
            Conexion.Desconectar(conn);
        }
        return id;
    }
}
