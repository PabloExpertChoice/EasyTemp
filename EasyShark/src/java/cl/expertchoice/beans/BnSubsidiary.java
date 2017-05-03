package cl.expertchoice.beans;

import SII.WebServiceConsultas;
import SQL.Conexion;
import cl.expertchoice.clases.Quiebra;
import cl.expertchoice.clases.Subsidiary;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import soporte.D;
import cl.expertchoice.clases.Usuario;
import java.math.BigInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import soporte.Encriptar;

public class BnSubsidiary {

    public JSONObject agregar(Subsidiary subsidiary) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".SUBSIDIARY\n"
                    + "(rut, dv, nombre, apePaterno, apeMaterno)\n"
                    + "VALUES(?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, subsidiary.getRut());
            pst.setString(2, subsidiary.getDv());
            pst.setString(3, subsidiary.getNombre());
            pst.setString(4, subsidiary.getApePaterno());
            pst.setString(5, subsidiary.getApeMaterno());
            pst.executeUpdate();
            ResultSet keys = pst.getGeneratedKeys();
            keys.next();
            int id = keys.getInt(1);
            JSONObject jsonAx = new JSONObject();
            jsonAx.put("id", id);
            json.put("estado", "ok");
            json.put("data", jsonAx);
            pst.close();
            keys.close();
            return json;
        } catch (SQLException ex) {
            ex.printStackTrace();
            json.put("estado", "error");
            json.put("mensaje", ex.toString());
            return json;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public int agregarSubsidiary(Subsidiary subsidiary) throws JSONException {
        Connection conn = null;
        int id = 0;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".SUBSIDIARY\n"
                    + "(rut, dv, nombre, apePaterno, apeMaterno)\n"
                    + "VALUES(?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, subsidiary.getRut());
            pst.setString(2, subsidiary.getDv());
            pst.setString(3, subsidiary.getNombre());
            pst.setString(4, subsidiary.getApePaterno());
            pst.setString(5, subsidiary.getApeMaterno());
            System.out.println(pst);
            pst.executeUpdate();
            ResultSet keys = pst.getGeneratedKeys();
            keys.next();
            id = keys.getInt(1);
            pst.close();
            keys.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Conexion.Desconectar(conn);
        }

        return id;
    }

    public JSONObject eliminar(Subsidiary subsidiary) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "DELETE FROM " + D.ESQUEMA + ".SUBSIDIARY "
                    + "WHERE id = ? ";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, subsidiary.getId());
            int resp = pst.executeUpdate();
            pst.close();
            if (resp > 0) {
                json.put("estado", "ok");
            } else {
                json.put("estado", "error");
            }
            return json;
        } catch (SQLException ex) {
            ex.printStackTrace();
            json.put("estado", "error");
            if (ex.getErrorCode() == 1451) {
                json.put("mensaje", "No se puede eliminar El subsidiario ya que esta asociado a otra entidad");
            } else {
                json.put("mensaje", ex.toString());
            }
            return json;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public JSONObject actualizar(Subsidiary subsidiary) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "UPDATE " + D.ESQUEMA + ".SUBSIDIARY "
                    + "SET nomb = ?, "
                    + "WHERE id = ? ";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, subsidiary.getNombre());
            pst.setInt(2, subsidiary.getId());
            pst.executeUpdate();
            pst.close();
            json.put("estado", "ok");
            return json;
        } catch (SQLException ex) {
            json.put("estado", "error");
            json.put("mensaje", ex.toString());
            ex.printStackTrace();
            return json;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public Subsidiary listar(int id) {
        Connection conn = null;
        Subsidiary emp = new Subsidiary();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT * "
                    + "FROM " + D.ESQUEMA + ".SUBSIDIARY"
                    + "WHERE id = ?";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                emp.setId(rs.getInt(1));
                emp.setNombre(rs.getString(2));
            }

            return emp;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public Subsidiary buscarPorRut(int rut) {
        Connection conn = null;
        Subsidiary emp = null;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT id, nombre, apePaterno, apeMaterno, rut \n"
                    + "FROM " + D.ESQUEMA + ".SUBSIDIARY \n"
                    + "WHERE rut = ? ";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, rut);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                emp = new Subsidiary();
                emp.setId(rs.getInt("id"));
                emp.setNombre(rs.getString("nombre"));
                emp.setApePaterno(rs.getString("apePaterno"));
                emp.setApeMaterno(rs.getString("apeMaterno"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Conexion.Desconectar(conn);
        }
        return emp;
    }

    public JSONObject listarTodos() throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        JSONArray arrJson = new JSONArray();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT id, nombre, apePaterno, apeMaterno, rut, dv \n"
                    + "FROM " + D.ESQUEMA + ".SUBSIDIARY ";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                JSONObject jsonSubsidiary = new JSONObject();
                jsonSubsidiary.put("id", rs.getInt("id"));
                jsonSubsidiary.put("rut", rs.getInt("rut"));
                jsonSubsidiary.put("dv", rs.getInt("dv"));
                jsonSubsidiary.put("nombre", rs.getString("nombre"));
                jsonSubsidiary.put("apePaterno", rs.getInt("apePaterno"));
                jsonSubsidiary.put("apeMaterno", rs.getInt("apeMaterno"));
                arrJson.put(jsonSubsidiary);
            }

            json.put("estado", "ok");
            json.put("data", arrJson);
            return json;
        } catch (SQLException ex) {
            ex.printStackTrace();
            json.put("estado", "error");
            json.put("mensaje", ex.toString());
            return json;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public boolean crearEmpresa(Subsidiary subsidiary, Usuario usu) throws JSONException {
        boolean resp = false;
        BnSubsidiary bn = new BnSubsidiary();
        JSONObject sub = bn.agregar(subsidiary);
        subsidiary.setId(sub.getJSONObject("data").getInt("id"));

        BnUsuario bnUsu = new BnUsuario();
        int idUsuario = bnUsu.agregarUsuario(usu);
        String codigo = Encriptar.encriptar(idUsuario + "");
        BnEmail email = new BnEmail();
        email.sendMailConfirmacionRegistro(usu.getEmail(), codigo);

        resp = true;
        return resp;
    }

    public Subsidiary consultar(Subsidiary cliente) throws SQLException {
        Subsidiary cli_resp = null;
        Connection conn = null;

        try {
            if (cliente.getRut() != 0) {
                conn = Conexion.getConexionEasy();

                String sql = "SELECT ID, RUT, DV, NOMBRE, APEPATERNO, APEMATERNO \n"
                        + "FROM " + D.ESQUEMA + ".SUBSIDIARY\n"
                        + "WHERE RUT = ? ";

                PreparedStatement pst = conn.prepareStatement(sql);
                pst.setInt(1, cliente.getRut());

                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    cli_resp = new Subsidiary();
                    cli_resp.setId(rs.getInt("ID"));
                    cli_resp.setRut(rs.getInt("RUT"));
                    cli_resp.setDv(rs.getString("DV"));
                    cli_resp.setNombre(rs.getString("NOMBRE"));
                    cli_resp.setApePaterno(rs.getString("APEPATERNO"));
                    cli_resp.setApeMaterno(rs.getString("APEMATERNO"));
                }
            }
        } finally {
            Conexion.Desconectar(conn);
        }

        return cli_resp;
    }

    public Subsidiary consultarWS(int rut, String dv) throws SQLException {
        Subsidiary c = null;
        c = new BnSubsidiary().consultar(new Subsidiary(rut, dv));

        if (c == null) {
            if (rut >= 50000000) {
                c = new WebServiceConsultas().consultaSii(rut, dv);

                if (c == null) {
                    c = new WebServiceConsultas().consultaWSIdentificacion(rut, dv);
                }
            } else {
                c = new WebServiceConsultas().consultaWSIdentificacion(rut, dv);

                if (c == null) {
                    c = new WebServiceConsultas().consultaSii(rut, dv);
                }
            }
        }

        return c;
    }

    public Quiebra consultarQuiebra(int rut) throws SQLException {
        Quiebra quiebra = null;
        Connection conn = null;

        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT QUI.ID_QUIEBRA, DATE_FORMAT(QUI.FECHA_DECLARATORIA, '%d-%m-%Y') AS FECHA_DECLARATORIA , \n"
                    + "DATE_FORMAT(QUI.FEC_PUBLICACION, '%d-%m-%Y') AS FEC_PUBLICACION, QUI.TRIBUNAL,QUI.ROL_CAUSA, QUI.SINDICO \n"
                    + "FROM " + D.ESQUEMA + ".QUIEBRA AS QUI\n"
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

    public static double round(double value, int places) {
        if (places < 0) {
            throw new IllegalArgumentException();
        }
        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }
}
