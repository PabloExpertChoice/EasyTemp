package cl.expertchoice.beans;

import SQL.Conexion;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import cl.expertchoice.clases.CabeceraTablaCore;
import cl.expertchoice.clases.RiskTier;
import cl.expertchoice.clases.ValorTablaCore;
import soporte.D;
import com.mysql.jdbc.Statement;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BnValorTablaCore {

    public ValorTablaCore insertar(CabeceraTablaCore cX, CabeceraTablaCore cY, RiskTier risk) throws SQLException {
        ValorTablaCore c = null;
        Connection conn = null;

        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".VALOR_TABLA_CORE\n"
                    + "(X, Y, ID_RISKTIER)\n"
                    + "VALUES(?, ?, ?)";

            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, cX.getId().toString());
            pst.setString(2, cY.getId().toString());
            pst.setString(3, risk.getId().toString());
            if (pst.executeUpdate() > 0) {
                ResultSet rs = pst.getGeneratedKeys();
                rs.next();
                c = new ValorTablaCore();
                c.setId(new BigInteger(rs.getString(1)));
                c.setIdRiskTier(risk.getId());
                c.setX(cX);
                c.setY(cY);
            }

        } finally {
            Conexion.Desconectar(conn);
        }
        return c;
    }

    public ArrayList<ValorTablaCore> listar() throws SQLException {
        ArrayList<ValorTablaCore> c = new ArrayList<>();
        Connection conn = null;

        try {
            conn = Conexion.getConexionEasy();
//            String sql = "SELECT X, Y, ID_RISKTIER\n"
//                    + "FROM " + D.ESQUEMA_ONE + ".VALOR_TABLA_CORE";
            String sql = "SELECT A.X, A.Y, A.ID_RISKTIER, TABRI.ID_TIPOADMINRISKTIER\n"
                    + "FROM " + D.ESQUEMA + ".VALOR_TABLA_CORE AS A\n"
                    + "INNER JOIN " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS B\n"
                    + "ON A.X = B.ID_TABLACORE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS C\n"
                    + "ON A.Y = C.ID_TABLACORE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS TABRI\n"
                    + "ON B.ID_TABLARISKINDICATOR = TABRI.ID_TABLARISKINDICATOR\n"
                    + "INNER JOIN " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS TABRI2\n"
                    + "ON C.ID_TABLARISKINDICATOR = TABRI2.ID_TABLARISKINDICATOR";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                ValorTablaCore t = new ValorTablaCore();
                t.setX(new CabeceraTablaCore(BigInteger.ZERO, new BigInteger(rs.getString("X")), null, null));
                t.setY(new CabeceraTablaCore(BigInteger.ZERO, new BigInteger(rs.getString("Y")), null, null));
                t.setIdRiskTier(new BigInteger(rs.getString("ID_RISKTIER")));
                c.add(t);
            }
        } finally {
            Conexion.Desconectar(conn);
        }
        return c;
    }
}
