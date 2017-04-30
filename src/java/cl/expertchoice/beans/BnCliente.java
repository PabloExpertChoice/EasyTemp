package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Quiebra;
import soporte.D;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BnCliente {

    public Quiebra consultarQuiebra(int rut) throws SQLException {
        Quiebra quiebra = null;
        Connection conn = null;

        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT QUI.ID_QUIEBRA, DATE_FORMAT(QUI.FECHA_DECLARATORIA, '%d-%m-%Y') AS FECHA_DECLARATORIA , \n"
                    + "DATE_FORMAT(QUI.FEC_PUBLICACION, '%d-%m-%Y') AS FEC_PUBLICACION, QUI.TRIBUNAL,QUI.ROL_CAUSA, QUI.SINDICO \n"
                    + "FROM "+D.ESQUEMA+".QUIEBRA AS QUI\n"
                    + "WHERE QUI.RUT = ? ";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, rut);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                quiebra = new Quiebra();
                quiebra.setId(new BigInteger(rs.getString("ID_QUIEBRA")));
                quiebra.setFechaDeclaratoria(rs.getString("FECHA_DECLARATORIA"));
                quiebra.setFechaPublicacion(rs.getString("FEC_PUBLICACION"));
                quiebra.setTribunal(rs.getString("TRIBUNAL"));
                quiebra.setRolCausa(rs.getString("ROL_CAUSA"));
                quiebra.setSindico(rs.getString("SINDICO"));
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return quiebra;
    }
}
