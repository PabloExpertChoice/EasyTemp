package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.CabeceraTablaCore;
import cl.expertchoice.clases.RiskTier;
import cl.expertchoice.clases.TablaRiskIndicator;
import cl.expertchoice.clases.Variable;
import soporte.D;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import cl.expertchoice.clases.TipoAdminRiskTier;
import org.json.JSONArray;
import org.json.JSONException;

public class BnTablaRiskIndicator {

    public TablaRiskIndicator insertar(TablaRiskIndicator riskIndi, int idTipoRiskTier) throws SQLException {
        TablaRiskIndicator riskIndicator = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".TABLA_RISK_INDICATOR\n"
                    + "(ORIGEN_X, ORIGEN_Y, NUM_FILAS, NUM_COLUMNAS, ID_TIPOADMINRISKTIER)\n"
                    + "VALUES(?, ?, ?, ?, ?) ";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, riskIndi.getOrigenX().getId());
            pst.setInt(2, riskIndi.getOrigenY().getId());
            pst.setInt(3, riskIndi.getNumFilas());
            pst.setInt(4, riskIndi.getNumColumnas());
            pst.setInt(5, idTipoRiskTier);
            if (pst.executeUpdate() > 0) {
                ResultSet rs = pst.getGeneratedKeys();
                rs.next();
                riskIndicator = new TablaRiskIndicator();
                riskIndicator = riskIndi;
                riskIndicator.setId(new BigInteger(rs.getString(1)));
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return riskIndicator;
    }

    public ArrayList<TablaRiskIndicator> listar2() throws SQLException {
        ArrayList<TablaRiskIndicator> arr = new ArrayList<>();
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT A.ID_TABLARISKINDICATOR, B.ID_VARIABLE AS ID_ORIGENX, B.VARIABLE AS NOM_ORIGENX, C.ID_VARIABLE AS ID_ORIGENY, \n"
                    + "C.VARIABLE AS NOM_ORIGENY,A.NUM_FILAS, A.NUM_COLUMNAS,\n"
                    + "A.ID_TIPOADMINRISKTIER\n"
                    + "FROM " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS A\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS B\n"
                    + "ON A.ORIGEN_X = B.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS C\n"
                    + "ON A.ORIGEN_Y = C.ID_VARIABLE";

            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                TablaRiskIndicator riskIndicator = new TablaRiskIndicator();
                riskIndicator.setId(new BigInteger(rs.getString("ID_TABLARISKINDICATOR")));
                riskIndicator.setOrigenX(new Variable(rs.getInt("ID_ORIGENX"), rs.getString("NOM_ORIGENX")));
                riskIndicator.setOrigenY(new Variable(rs.getInt("ID_ORIGENY"), rs.getString("NOM_ORIGENY")));
                riskIndicator.setNumFilas(rs.getInt("NUM_FILAS"));
                riskIndicator.setNumColumnas(rs.getInt("NUM_COLUMNAS"));
                riskIndicator.setTipoAdminRiskTier(new TipoAdminRiskTier(rs.getInt("A.ID_TIPOADMINRISKTIER"), ""));
                ArrayList<CabeceraTablaCore> arrCabeceras = new BnCabeceraTablaCore().listar(conn, riskIndicator);
                riskIndicator.setCaberasTablaCore(arrCabeceras);
                arr.add(riskIndicator);

            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }

    public TablaRiskIndicator listar() throws SQLException {
        TablaRiskIndicator riskIndicator = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT A.ID_TABLARISKINDICATOR, B.ID_VARIABLE AS ID_ORIGENX, B.NOMBRE AS NOM_ORIGENX, C.ID_VARIABLE AS ID_ORIGENY, \n"
                    + "C.NOMBRE AS NOM_ORIGENY,A.NUM_FILAS, A.NUM_COLUMNAS,\n"
                    + "A.ID_TIPOADMINRISKTIER\n"
                    + "FROM " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS A\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS B\n"
                    + "ON A.ORIGEN_X = B.ID_VARIABLE\n"
                    + "INNER JOIN .VARIABLE AS C\n"
                    + "ON A.ORIGEN_Y = C.ID_VARIABLE";

//            String sql = "SELECT A.ID_TABLARISKINDICATOR, B.ID_VARIABLE AS ID_ORIGENX, B.NOMBRE AS NOM_ORIGENX, \n"
//                    + "C.ID_VARIABLE AS ID_ORIGENY, C.NOMBRE AS NOM_ORIGENY,A.NUM_FILAS, A.NUM_COLUMNAS,\n"
//                    + "TIPO_ADMRT.ID_TIPOADMINRISKTIER , TIPO_ADMRT.NOMBRE\n"
//                    + "FROM " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS A\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS B\n"
//                    + "ON A.ORIGEN_X = B.ID_VARIABLE\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS C\n"
//                    + "ON A.ORIGEN_Y = C.ID_VARIABLE\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS D\n"
//                    + "ON D.ID_TABLARISKINDICATOR = A.ID_TABLARISKINDICATOR\n"
//                    + "INNER  JOIN " + D.ESQUEMA + ".VALOR_TABLA_CORE AS E\n"
//                    + "ON D.ID_TABLACORE = E.X\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".RISKTIER AS RT\n"
//                    + "ON E.ID_RISKTIER = RT.ID_RISKTIER\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".DETALLE_ADMINRISKTIER AS DET_ADMINRT\n"
//                    + "ON DET_ADMINRT.ID_RISKTIER = RT.ID_RISKTIER\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".ADMINRISKTIER AS ADMRT\n"
//                    + "ON DET_ADMINRT.ID_ADMINRISKTIER = ADMRT.ID_ADMINRISKTIER\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".TIPO_ADMINRISKTIER AS TIPO_ADMRT\n"
//                    + "ON ADMRT.ID_TIPOADMINRISKTIER = TIPO_ADMRT.ID_TIPOADMINRISKTIER\n"
//                    + "GROUP BY TIPO_ADMRT.ID_TIPOADMINRISKTIER ";
////                    + "LIMIT 1";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                riskIndicator = new TablaRiskIndicator();
                riskIndicator.setId(new BigInteger(rs.getString("ID_TABLARISKINDICATOR")));
                riskIndicator.setOrigenX(new Variable(rs.getInt("ID_ORIGENX"), rs.getString("NOM_ORIGENX")));
                riskIndicator.setOrigenY(new Variable(rs.getInt("ID_ORIGENY"), rs.getString("NOM_ORIGENY")));
                riskIndicator.setNumFilas(rs.getInt("NUM_FILAS"));
                riskIndicator.setNumColumnas(rs.getInt("NUM_COLUMNAS"));
                riskIndicator.setTipoAdminRiskTier(new TipoAdminRiskTier(rs.getInt("TIPO_ADMRT.ID_TIPOADMINRISKTIER"), rs.getString("TIPO_ADMRT.NOMBRE")));
                ArrayList<CabeceraTablaCore> arrCabeceras = new BnCabeceraTablaCore().listar(conn, riskIndicator);
                riskIndicator.setCaberasTablaCore(arrCabeceras);

            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return riskIndicator;
    }

    public TablaRiskIndicator listars() throws SQLException {
        TablaRiskIndicator riskIndicator = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT A.ID_TABLARISKINDICATOR, B.ID_VARIABLE AS ID_ORIGENX, B.NOMBRE AS NOM_ORIGENX, \n"
                    + "C.ID_VARIABLE AS ID_ORIGENY, C.NOMBRE AS NOM_ORIGENY,A.NUM_FILAS, A.NUM_COLUMNAS,\n"
                    + "TIPO_ADMRT.NOMBRE\n"
                    + "FROM " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS A\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS B\n"
                    + "ON A.ORIGEN_X = B.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS C\n"
                    + "ON A.ORIGEN_Y = C.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS D\n"
                    + "ON D.ID_TABLARISKINDICATOR = A.ID_TABLARISKINDICATOR\n"
                    + "INNER  JOIN " + D.ESQUEMA + ".VALOR_TABLA_CORE AS E\n"
                    + "ON D.ID_TABLACORE = E.X\n"
                    + "INNER JOIN " + D.ESQUEMA + ".RISKTIER AS RT\n"
                    + "ON E.ID_RISKTIER = RT.ID_RISKTIER\n"
                    + "INNER JOIN " + D.ESQUEMA + ".DETALLE_ADMINRISKTIER AS DET_ADMINRT\n"
                    + "ON DET_ADMINRT.ID_RISKTIER = RT.ID_RISKTIER\n"
                    + "INNER JOIN " + D.ESQUEMA + ".ADMINRISKTIER AS ADMRT\n"
                    + "ON DET_ADMINRT.ID_ADMINRISKTIER = ADMRT.ID_ADMINRISKTIER\n"
                    + "INNER JOIN " + D.ESQUEMA + ".TIPO_ADMINRISKTIER AS TIPO_ADMRT\n"
                    + "ON ADMRT.ID_TIPOADMINRISKTIER = TIPO_ADMRT.ID_TIPOADMINRISKTIER\n"
                    + "LIMIT 1";

            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                riskIndicator = new TablaRiskIndicator();
                riskIndicator.setId(new BigInteger(rs.getString("ID_TABLARISKINDICATOR")));
                riskIndicator.setOrigenX(new Variable(rs.getInt("ID_ORIGENX"), rs.getString("NOM_ORIGENX")));
                riskIndicator.setOrigenY(new Variable(rs.getInt("ID_ORIGENY"), rs.getString("NOM_ORIGENY")));
                riskIndicator.setNumFilas(rs.getInt("NUM_FILAS"));
                riskIndicator.setNumColumnas(rs.getInt("NUM_COLUMNAS"));
                ArrayList<CabeceraTablaCore> arrCabeceras = new BnCabeceraTablaCore().listar(conn, riskIndicator);
                riskIndicator.setCaberasTablaCore(arrCabeceras);

            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return riskIndicator;
    }

    public boolean guardarRiskInidcator(TablaRiskIndicator riskIndicator, JSONArray origenX, JSONArray origenY, JSONArray jsonClasificacion, int idTipoRiskTier) {
        Connection conn = null;
        boolean flag = false;
        try {
            conn = Conexion.getConexionEasy();
//            if (eliminar(conn)) {
            eliminar(conn, idTipoRiskTier);
            riskIndicator = new BnTablaRiskIndicator().insertar(riskIndicator, idTipoRiskTier);
            if (riskIndicator != null) {
                /**
                 * Guardar cabecera del risktier
                 */
                ArrayList<CabeceraTablaCore> arrCabeceraX = new ArrayList<>();
                for (int i = 0; i < origenX.length(); i++) {
                    CabeceraTablaCore c = new CabeceraTablaCore(BigInteger.ZERO, riskIndicator.getId(), "X", origenX.getString(i));
                    c = new BnCabeceraTablaCore().insertar(riskIndicator, c);
                    arrCabeceraX.add(c);
                }

                ArrayList<CabeceraTablaCore> arrCabeceraY = new ArrayList<>();
                for (int i = 0; i < origenY.length(); i++) {
                    CabeceraTablaCore c = new CabeceraTablaCore(BigInteger.ZERO, riskIndicator.getId(), "Y", origenY.getString(i));
                    c = new BnCabeceraTablaCore().insertar(riskIndicator, c);
                    arrCabeceraY.add(c);
                }

                int fila = 0;
                for (CabeceraTablaCore i : arrCabeceraY) {
                    int columna = 0;
                    JSONArray jsonClasificacion2 = jsonClasificacion.getJSONArray(fila);
                    for (CabeceraTablaCore j : arrCabeceraX) {
                        new BnValorTablaCore().insertar(j, i, new RiskTier(new BigInteger(jsonClasificacion2.getString(columna)), null));
                        columna++;
                    }
                    fila++;
                }
            }
            Conexion.Desconectar(conn);
            flag = true;
//            }
        } catch (SQLException ex) {
            Conexion.Desconectar(conn);
            ex.printStackTrace();
        } catch (JSONException ex) {
            Conexion.Desconectar(conn);
            ex.printStackTrace();
        }

        return flag;
    }

    public static boolean eliminar(Connection conn, int idTipoRiskTier) throws SQLException {
        boolean flag = false;
        String sql = "CALL SP_BORRAR_RISKTIER(" + idTipoRiskTier + ")";
        PreparedStatement pst1 = conn.prepareStatement(sql);
        pst1.executeQuery();
        Conexion.Desconectar(conn);
        return flag;
    }
}
