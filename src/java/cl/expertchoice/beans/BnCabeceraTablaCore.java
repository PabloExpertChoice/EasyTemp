package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.CabeceraTablaCore;
import cl.expertchoice.clases.TablaRiskIndicator;
import soporte.D;
import com.mysql.jdbc.Statement;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BnCabeceraTablaCore {

    public CabeceraTablaCore insertar(TablaRiskIndicator riskIndicator, CabeceraTablaCore cabeceraTabla) throws SQLException {
        CabeceraTablaCore flag = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO CABECERA_TABLA_CORE\n"
                    + "(ID_TABLARISKINDICATOR, EJE, VALOR)\n"
                    + "VALUES(?, ?, ?)";

            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, riskIndicator.getId().toString());
            pst.setString(2, cabeceraTabla.getEje());
            pst.setString(3, cabeceraTabla.getValor());
            if (pst.executeUpdate() > 0) {
                ResultSet rs = pst.getGeneratedKeys();
                rs.next();
                flag = new CabeceraTablaCore();
                flag = cabeceraTabla;
                flag.setId(new BigInteger(rs.getString(1)));
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return flag;
    }

    public ArrayList<CabeceraTablaCore> listar(Connection conn, TablaRiskIndicator riskIndicator) throws SQLException {
        ArrayList<CabeceraTablaCore> arr = new ArrayList<>();        
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT ID_TABLACORE, ID_TABLARISKINDICATOR, EJE, VALOR\n"
                    + "FROM CABECERA_TABLA_CORE\n"
                    + "WHERE ID_TABLARISKINDICATOR = ?";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, riskIndicator.getId().toString());
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                CabeceraTablaCore c = new CabeceraTablaCore();
                c.setId(new BigInteger(rs.getString("ID_TABLACORE")));
                c.setIdRiskIndicator(new BigInteger(rs.getString("ID_TABLARISKINDICATOR")));
                c.setEje(rs.getString("EJE"));
                c.setValor(rs.getString("VALOR"));
                arr.add(c);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }

}
