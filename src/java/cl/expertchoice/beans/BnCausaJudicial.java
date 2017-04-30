package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.CausaJudicial;
import cl.expertchoice.clases.Consultado;
import cl.expertchoice.clases.Tribunal;
import com.mysql.jdbc.Statement;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import soporte.D;

public class BnCausaJudicial {

    public Consultado guardarCausas(Consultado consultadoInsert) throws SQLException {
        Connection conn = null;
        Consultado consultado = null;

        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".CONSULTADO_PJUD\n"
                    + "(FECHA, RUT_CLIENTE)\n"
                    + "VALUES(CURRENT_TIMESTAMP, ?) ";

            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, consultadoInsert.getRut_cliente());
            if (pst.executeUpdate() > 0) {
                consultado = new Consultado();
                ResultSet keys = pst.getGeneratedKeys();
                keys.next();
                consultado.setId(new BigInteger(keys.getString(1)));
                consultado.setFecha(new Date().toString());

                for (CausaJudicial x : consultadoInsert.getCausasJudiciales()) {
                    sql = "INSERT INTO " + D.ESQUEMA + ".CAUSAJUDICIAL\n"
                            + "(ROL, FECHA, CARATULADO, ID_TRIBUNAL, ID_CONSULTADOPJUD, URL_DOCUMENTO)\n"
                            + "VALUES(?, ?, ?, ?, ?, ?)";
                    pst = conn.prepareStatement(sql);
                    pst.setString(1, x.getRol());
                    pst.setString(2, x.getFecha());
                    pst.setString(3, x.getCaratulado());
                    pst.setInt(4, new BnTribunal().recuperarId(x.getTribunal().getNombre()));
                    pst.setString(5, keys.getString(1));
                    pst.setString(6, x.getDocumentoDemanda());
                    if (pst.executeUpdate() > 0) {
                    }
                }
            }
            pst.close();
        } finally {
            Conexion.Desconectar(conn);
        }

        return consultado;
    }

    public Consultado consultarRut(int rut, String dv) throws SQLException {
        Connection conn = null;
        Consultado consultado = null;

        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT CONS.ID_CONSULTADOPJUD, CONS.FECHA, CONS.RUT_CLIENTE\n"
                    + "FROM easy.CONSULTADO_PJUD AS CONS\n"
                    + "WHERE CONS.RUT_CLIENTE = ? ";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, rut);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                consultado = new Consultado();
                consultado.setId(new BigInteger(rs.getString("CONS.ID_CONSULTADOPJUD")));
                consultado.setFecha(rs.getString("CONS.FECHA"));
                consultado.setRut_cliente(rs.getInt("CONS.RUT_CLIENTE"));

                sql = "SELECT CAUSA.ID_CAUSAJUDICIAL, CAUSA.ROL, CAUSA.FECHA, CAUSA.CARATULADO,\n"
                        + "TRIB.ID_TRIBUNAL, TRIB.NOMBRE, CAUSA.URL_DOCUMENTO \n"
                        + "FROM .CAUSAJUDICIAL CAUSA\n"
                        + "INNER JOIN .CONSULTADO_PJUD AS CONS\n"
                        + "ON CAUSA.ID_CONSULTADOPJUD = CONS.ID_CONSULTADOPJUD\n"
                        + "INNER JOIN .TRIBUNAL AS TRIB\n"
                        + "ON CAUSA.ID_TRIBUNAL = TRIB.ID_TRIBUNAL\n"
                        + "WHERE CONS.ID_CONSULTADOPJUD = ? ";

                pst = conn.prepareStatement(sql);
                pst.setString(1, rs.getString("CONS.ID_CONSULTADOPJUD"));
                ResultSet rs2 = pst.executeQuery();
                ArrayList<CausaJudicial> arrCausas = new ArrayList<>();
                while (rs2.next()) {
                    CausaJudicial causa = new CausaJudicial();
                    causa.setId(new BigInteger(rs2.getString("ID_CAUSAJUDICIAL")));
                    causa.setRol(rs2.getString("ROL"));
                    causa.setFecha(rs2.getString("FECHA"));
                    causa.setCaratulado(rs2.getString("CARATULADO"));
                    causa.setTribunal(new Tribunal(rs2.getInt("ID_TRIBUNAL"), rs2.getString("TRIB.NOMBRE")));
                    causa.setDocumentoDemanda(rs2.getString("CAUSA.URL_DOCUMENTO"));
                    arrCausas.add(causa);
                }

                consultado.setCausasJudiciales(arrCausas);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return consultado;
    }
}
