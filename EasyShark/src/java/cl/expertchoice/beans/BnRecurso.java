package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Perfil;
import cl.expertchoice.clases.Recurso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BnRecurso {

    public ArrayList<Recurso> obtenerPorPerfil(Perfil perfil) throws SQLException {
        Connection conn = null;
        ArrayList<Recurso> arr = new ArrayList<>();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT REC.ID_RECURSO, REC.URL, REC.TITULO, REC.ICONO \n"
                    + "FROM easy.PERFIL_has_RECURSO AS PER_REC\n"
                    + "INNER JOIN easy.RECURSO AS REC\n"
                    + "ON PER_REC.ID_RECURSO = REC.ID_RECURSO\n"
                    + "WHERE PER_REC.PERFIL_id = ?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, perfil.getId());
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Recurso r = new Recurso(rs.getInt("REC.ID_RECURSO"), rs.getString("REC.TITULO"), rs.getString("REC.ICONO"), rs.getString("REC.URL"));
                arr.add(r);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }
}
