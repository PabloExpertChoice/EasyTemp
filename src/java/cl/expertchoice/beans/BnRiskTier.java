package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.RiskTier;
import soporte.D;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BnRiskTier {

    public ArrayList<RiskTier> listar() throws SQLException {
        Connection conn = null;
        ArrayList<RiskTier> arr = new ArrayList<>();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT ID_RISKTIER, NOMBRE, ACTIVO\n"
                    + "FROM " + D.ESQUEMA + ".RISKTIER\n"
                    + "WHERE ACTIVO = 1 ";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                RiskTier r = new RiskTier(new BigInteger(rs.getString("ID_RISKTIER")), rs.getString("NOMBRE"));
                arr.add(r);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return arr;
    }

    public JsonArray listarArbol() throws SQLException {
        Connection conn = null;
        JsonArray jsonArray = new JsonArray();

        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT CTC.ID_TABLACORE, CTC.EJE, CTC.VALOR, \n"
                    + "VAR1.NOMBRE, VAR2.NOMBRE, RT.NOMBRE\n"
                    + "FROM " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS CTC\n"
                    + "INNER JOIN " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS TRI\n"
                    + "ON CTC.ID_TABLARISKINDICATOR = TRI.ID_TABLARISKINDICATOR\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE  AS VAR1\n"
                    + "ON TRI.ORIGEN_X = VAR1.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS VAR2\n"
                    + "ON TRI.ORIGEN_Y = VAR2.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VALOR_TABLA_CORE AS VTC\n"
                    + "ON CTC.ID_TABLACORE = VTC.X or CTC.ID_TABLACORE = VTC.Y\n"
                    + "INNER JOIN " + D.ESQUEMA + ".RISKTIER AS RT\n"
                    + "ON VTC.ID_RISKTIER = RT.ID_RISKTIER";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                JsonObject json1 = new JsonObject();

                json1.addProperty("id", rs.getString("CTC.ID_TABLACORE"));
                json1.addProperty("eje", rs.getString("CTC.EJE"));
                json1.addProperty("valor", rs.getString("CTC.VALOR"));
                json1.addProperty("variable1", rs.getString("VAR1.NOMBRE"));
                json1.addProperty("variable2", rs.getString("VAR2.NOMBRE"));
                json1.addProperty("risktier", rs.getString("RT.NOMBRE"));
                jsonArray.add(json1);
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return jsonArray;
    }

 public JsonObject listarArbol2() throws SQLException {
        Connection conn = null;
        JsonObject json = new JsonObject();

        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT VAR1.NOMBRE AS VAR1, CAB.VALOR AS VALOR1, VAR2.NOMBRE AS VAR2, CAB2.VALOR AS VALOR2,\n"
                    + "RT.NOMBRE, TBL_RISKINDI1.ID_TIPOADMINRISKTIER\n"
                    + "FROM " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS TBL_RISKINDI1\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS VAR1\n"
                    + "ON TBL_RISKINDI1.ORIGEN_X = VAR1.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE AS VAR2\n"
                    + "ON TBL_RISKINDI1.ORIGEN_Y = VAR2.ID_VARIABLE\n"
                    + "INNER JOIN " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS CAB \n"
                    + "ON TBL_RISKINDI1.ID_TABLARISKINDICATOR = CAB.ID_TABLARISKINDICATOR AND CAB.EJE = 'X'\n"
                    + "INNER JOIN " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS CAB2\n"
                    + "ON TBL_RISKINDI1.ID_TABLARISKINDICATOR = CAB2.ID_TABLARISKINDICATOR AND CAB2.EJE = 'Y'\n"
                    + "INNER JOIN " + D.ESQUEMA + ".VALOR_TABLA_CORE AS VAL1\n"
                    + "ON CAB.ID_TABLACORE = VAL1.X AND CAB2.ID_TABLACORE = VAL1.Y\n"
                    + "INNER JOIN " + D.ESQUEMA + ".RISKTIER AS RT\n"
                    + "ON VAL1.ID_RISKTIER = RT.ID_RISKTIER\n"
                    + "ORDER BY TBL_RISKINDI1.ID_TIPOADMINRISKTIER ASC";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            JsonArray arrNatural = new JsonArray();
            JsonArray arrJuridico = new JsonArray();
            while (rs.next()) {
                JsonObject ob = new JsonObject();
                ob.addProperty("x", rs.getString("VAR1"));
                ob.addProperty("valor_x", rs.getString("VALOR1"));
                ob.addProperty("y", rs.getString("VAR2"));
                ob.addProperty("valor_y", rs.getString("VALOR2"));
                ob.addProperty("risktier", rs.getString("RT.NOMBRE"));

                if (rs.getInt("TBL_RISKINDI1.ID_TIPOADMINRISKTIER") == 1) {
                    arrNatural.add(ob);
                } else if (rs.getInt("TBL_RISKINDI1.ID_TIPOADMINRISKTIER") == 2) {
                    arrJuridico.add(ob);
                }
            }

            json.add("natural", arrNatural);
            json.add("juridico", arrJuridico);
        } finally {
            Conexion.Desconectar(conn);
        }
        
        return json;
    }
    
    

//    public static JsonArray listarArbol2() throws SQLException {
//        Connection conn = null;
//        JsonArray jsonArray = new JsonArray();
//
//        try {
//            conn = Conexion.getConexionEasy();
//            String sql = "SELECT CTC.ID_TABLACORE, CTC.EJE, CTC.VALOR, \n"
//                    + "VAR1.NOMBRE\n"
//                    + "FROM " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS CTC\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS TRI\n"
//                    + "ON CTC.ID_TABLARISKINDICATOR = TRI.ID_TABLARISKINDICATOR\n"
//                    + "INNER JOIN " + D.ESQUEMA + ".VARIABLE  AS VAR1\n"
//                    + "ON TRI.ORIGEN_X = VAR1.ID_VARIABLE\n"
//                    + "WHERE CTC.EJE = 'X'";
//
//            PreparedStatement pst = conn.prepareStatement(sql);
//            ResultSet rs = pst.executeQuery();
//            while (rs.next()) {
//                JsonObject json1 = new JsonObject();
//                json1.addProperty("id", rs.getString("CTC.ID_TABLACORE"));
//                json1.addProperty("valor", rs.getString("CTC.VALOR"));
//                json1.addProperty("variable", rs.getString("VAR1.NOMBRE"));
//
//                JsonArray arr2 = new JsonArray();
////
////                sql = "SELECT CTC.ID_TABLACORE, CTC.EJE, CTC.VALOR, \n"
////                        + "VAR1.NOMBRE, RT.NOMBRE\n"
////                        + "FROM "+D.ESQUEMA+".CABECERA_TABLA_CORE AS CTC\n"
////                        + "INNER JOIN "+D.ESQUEMA+".TABLA_RISK_INDICATOR AS TRI\n"
////                        + "ON CTC.ID_TABLARISKINDICATOR = TRI.ID_TABLARISKINDICATOR\n"
////                        + "INNER JOIN "+D.ESQUEMA+".VARIABLE  AS VAR1\n"
////                        + "ON TRI.ORIGEN_Y = VAR1.ID_VARIABLE\n"
////                        + "INNER JOIN "+D.ESQUEMA+".VALOR_TABLA_CORE AS VTC\n"
////                        + "ON CTC.ID_TABLACORE = VTC.Y\n"
////                        + "INNER JOIN  "+D.ESQUEMA+".RISKTIER AS RT\n"
////                        + "ON VTC.ID_RISKTIER = RT.ID_RISKTIER\n"
////                        + "WHERE CTC.EJE = 'Y'\n"
////                        + "GROUP BY CTC.ID_TABLACORE";
//
//                sql = "SELECT CTC.ID_TABLACORE, CTC.EJE, CTC.VALOR, \n"
//                        + "VAR1.NOMBRE, RT.NOMBRE\n"
//                        + "FROM " + D.ESQUEMA + ".CABECERA_TABLA_CORE AS CTC\n"
//                        + "INNER JOIN " + D.ESQUEMA + ".TABLA_RISK_INDICATOR AS TRI\n"
//                        + "ON CTC.ID_TABLARISKINDICATOR = TRI.ID_TABLARISKINDICATOR\n"
//                        + "INNER JOIN " + D.ESQUEMA + ".VARIABLE  AS VAR1\n"
//                        + "ON TRI.ORIGEN_Y = VAR1.ID_VARIABLE\n"
//                        + "INNER JOIN " + D.ESQUEMA + ".VALOR_TABLA_CORE AS VTC\n"
//                        + "ON CTC.ID_TABLACORE = VTC.Y\n"
//                        + "INNER JOIN  " + D.ESQUEMA + ".RISKTIER AS RT\n"
//                        + "ON VTC.ID_RISKTIER = RT.ID_RISKTIER\n"
//                        + "WHERE CTC.EJE = 'Y'";
//
//                pst = conn.prepareStatement(sql);
//                ResultSet rs2 = pst.executeQuery();
//                while (rs2.next()) {
//                    JsonObject json2 = new JsonObject();
//                    json2.addProperty("id", rs2.getString("CTC.ID_TABLACORE"));
//                    json2.addProperty("valor", rs2.getString("CTC.VALOR"));
//                    json2.addProperty("variable", rs2.getString("VAR1.NOMBRE"));
//                    json2.addProperty("risktier", rs2.getString("RT.NOMBRE"));
//                    arr2.add(json2);
//                }
//
//                json1.add("datosy", arr2);
//                jsonArray.add(json1);
//            }
//        } finally {
//            Conexion.Desconectar(conn);
//        }
//        return jsonArray;
//    }

}
