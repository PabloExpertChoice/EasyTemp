package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Variable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BnVariable {  

    public ArrayList<Variable> listarATB() throws SQLException {
        ArrayList<Variable> arr = new ArrayList<>();
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT ID_VARIABLE, NOMBRE, VARIABLE AS DESCRIPCION, TIPO\n"
                    + "FROM easy.VARIABLE\n"
                    + "ORDER BY ID_VARIABLE ASC";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Variable v = new Variable(rs.getInt("ID_VARIABLE"), rs.getString("NOMBRE"), rs.getString("DESCRIPCION"), rs.getString("TIPO").charAt(0));
                arr.add(v);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }
}
