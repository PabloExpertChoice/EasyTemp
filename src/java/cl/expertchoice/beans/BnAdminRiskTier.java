package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.AdminRiskTier;
import cl.expertchoice.clases.DetalleAdminRiskTier;
import cl.expertchoice.clases.TipoAdminRiskTier;
import soporte.D;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BnAdminRiskTier {

    public ArrayList<AdminRiskTier> listar() throws SQLException {
        ArrayList<AdminRiskTier> arr = new ArrayList<>();
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT ADMRT.ID_ADMINRISKTIER, ADMRT.NOMBRE, \n"
                    + "DATE_FORMAT(ADMRT.FECHA_CREACION, '%d-%m-%Y') AS FECHA_CREACION,\n"
                    + "TIPOADMRT.ID_TIPOADMINRISKTIER, TIPOADMRT.NOMBRE\n"
                    + "FROM ONE.ADMINRISKTIER AS ADMRT\n"
                    + "INNER JOIN ONE.TIPO_ADMINRISKTIER AS TIPOADMRT\n"
                    + "ON ADMRT.ID_TIPOADMINRISKTIER = TIPOADMRT.ID_TIPOADMINRISKTIER";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                AdminRiskTier c = new AdminRiskTier();
                c.setId(rs.getInt("ID_ADMINRISKTIER"));
                c.setNombre(rs.getString("NOMBRE"));
                c.setFechaCreacion(rs.getString("FECHA_CREACION"));
                c.setTipo(new TipoAdminRiskTier(rs.getInt("TIPOADMRT.ID_TIPOADMINRISKTIER"), rs.getString("TIPOADMRT.NOMBRE")));
                arr.add(c);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }
//
//    public boolean actualizar(String valor, int idDetalleAdminRiskTier) throws SQLException {
//        Connection conn = null;
//        boolean flag = true;
//
//        try {
//            conn = Conexion.crearConexion(true);
//            String sql = "UPDATE " + D.ESQUEMA_ONE + ".DETALLE_ADMINRISKTIER\n"
//                    + "SET VALOR = ?\n"
//                    + "WHERE ID_DETALLE_ADMINRISKTIER = ?";
//
//            PreparedStatement pst = conn.prepareStatement(sql);
//            pst.setString(1, valor);
//            pst.setInt(2, idDetalleAdminRiskTier);
//            if (pst.executeUpdate() > 0) {
//                flag = true;
//            }
//        } finally {
//            Conexion.Desconectar(conn, true);
//        }
//
//        return flag;
//    }
//
//    public ArrayList<DetalleAdminRiskTier> listarDetalles(int idAdminRiskTier) throws SQLException {
//        ArrayList<DetalleAdminRiskTier> arr = new ArrayList<>();
//        Connection conn = null;
//        try {
//            conn = Conexion.crearConexion(true);
//            String sql = "SELECT ID_DETALLE_ADMINRISKTIER, ID_ADMINRISKTIER, ID_RISKTIER, VALOR\n"
//                    + "FROM " + D.ESQUEMA_ONE + ".DETALLE_ADMINRISKTIER\n"
//                    + "WHERE ID_ADMINRISKTIER = " + idAdminRiskTier;
//            PreparedStatement pst = conn.prepareStatement(sql);
//            ResultSet rs = pst.executeQuery();
//            while (rs.next()) {
//                DetalleAdminRiskTier dt = new DetalleAdminRiskTier();
//                dt.setId(rs.getInt("ID_DETALLE_ADMINRISKTIER"));
//                dt.setIdRiskTier(rs.getInt("ID_RISKTIER"));
//                dt.setValor(rs.getString("VALOR"));
//                arr.add(dt);
//            }
//        } finally {
//            Conexion.Desconectar(conn, true);
//        }
//
//        return arr;
//    }
}
