package cl.expertchoice.beans;

import SQL.Conexion;
import cl.expertchoice.clases.Perfil;
import cl.expertchoice.clases.Status;
import cl.expertchoice.clases.Subsidiary;
import cl.expertchoice.clases.Usuario;
import soporte.D;
import com.mysql.jdbc.Statement;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javafx.application.Application;
//import static one.controlador.Svl_Cliente.round;
//import one.modelo.Informe;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BnUsuario {

    public Usuario login(Usuario user) throws SQLException {
        Usuario usuario = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT users.id, users.nomb, users.apellpat, users.apellmat,\n"
                    + "users.email, per.id, per.nomb,\n"
                    + "sub.id, sub.nombre,\n"
                    + "comp.id, comp.nomb,\n"
                    + "sta.id, sta.nomb,sta.descripcion\n"
                    + "FROM " + D.ESQUEMA + ".USER AS users\n"
                    + "INNER JOIN " + D.ESQUEMA + ".PERFIL per\n"
                    + "ON users.perfil_id = per.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".SUBSIDIARY AS sub\n"
                    + "ON users.subsidiary_id = sub.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".COMPANY as comp\n"
                    + "ON sub.company_id = comp.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".STATUS AS sta\n"
                    + "ON users.status_id = sta.id AND sta.id IN (2) \n"
                    + "WHERE users.email = ? \n"
                    + "AND BINARY users.password = ? ";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, user.getCorreo());
            pst.setString(2, user.getPassword());
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                usuario = new Usuario();
                usuario.setId(new BigInteger(rs.getString("users.id")));
                usuario.setNombre(rs.getString("users.nomb"));
                usuario.setApellidoPaterno(rs.getString("users.apellpat"));
                usuario.setApellidoMaterno(rs.getString("users.apellmat"));
                usuario.setCorreo(rs.getString("users.email"));
                Subsidiary subsidiary = new Subsidiary();
                subsidiary.setId(rs.getInt("sub.id"));
                subsidiary.setNombre(rs.getString("sub.nombre"));
                usuario.setSubsidiary(subsidiary);
                Status status = new Status(rs.getInt("sta.id"), rs.getString("sta.nomb"), rs.getString("sta.descripcion"));
                usuario.setStatus(status);
                Perfil per = new Perfil(rs.getInt("per.id"), rs.getString("per.nomb"));
                usuario.setPerfil(per);
            }

        } finally {
            Conexion.Desconectar(conn);
        }

        return usuario;
    }

    public Usuario buscarPorCorreo(String correo) throws SQLException {
        Usuario usuario = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT users.id, users.nomb, users.apellpat, users.apellmat,\n"
                    + "users.email, per.id, per.nomb,\n"
                    + "sub.id, sub.nombre,\n"
                    + "sta.id, sta.nomb,sta.descripcion\n"
                    + "FROM " + D.ESQUEMA + ".USER AS users\n"
                    + "INNER JOIN " + D.ESQUEMA + ".PERFIL per\n"
                    + "ON users.perfil_id = per.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".SUBSIDIARY AS sub\n"
                    + "ON users.subsidiary_id = sub.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".STATUS AS sta\n"
                    + "ON users.status_id = sta.id AND sta.id IN (1) \n"
                    + "WHERE users.email like '" + correo + "' \n";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                usuario = new Usuario();
                usuario.setId(new BigInteger(rs.getString("users.id")));
                usuario.setNombre(rs.getString("users.nomb"));
                usuario.setApellidoPaterno(rs.getString("users.apellpat"));
                usuario.setApellidoMaterno(rs.getString("users.apellmat"));
                usuario.setCorreo(rs.getString("users.email"));

                Subsidiary subsidiary = new Subsidiary();
                subsidiary.setId(rs.getInt("sub.id"));
                subsidiary.setNombre(rs.getString("sub.nombre"));

                usuario.setSubsidiary(subsidiary);

                Status status = new Status(rs.getInt("sta.id"), rs.getString("sta.nomb"), rs.getString("sta.descripcion"));
                usuario.setStatus(status);

                Perfil per = new Perfil(rs.getInt("per.id"), rs.getString("per.nomb"));
                usuario.setPerfil(per);
            }

        } finally {
            Conexion.Desconectar(conn);
        }

        return usuario;
    }

    public Usuario obtener(int idUsuario) throws SQLException {
        Usuario usuario = null;
        Connection conn = null;
        try {
            conn = Conexion.getConexionEasy();

            String sql = "SELECT users.id, users.nomb, users.apellpat, users.apellmat,\n"
                    + "users.email, per.id, per.nomb,\n"
                    + "sub.id, sub.nombre,\n"
                    + "comp.id, comp.nomb,\n"
                    + "sta.id, sta.nomb,sta.descripcion\n"
                    + "FROM " + D.ESQUEMA + ".USER AS users\n"
                    + "INNER JOIN " + D.ESQUEMA + ".PERFIL per\n"
                    + "ON users.perfil_id = per.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".SUBSIDIARY AS sub\n"
                    + "ON users.subsidiary_id = sub.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".COMPANY as comp\n"
                    + "ON sub.company_id = comp.id\n"
                    + "INNER JOIN " + D.ESQUEMA + ".STATUS AS sta\n"
                    + "ON users.status_id = sta.id \n"
                    + "WHERE users.id = ? \n";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, idUsuario);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                usuario = new Usuario();
                usuario.setId(new BigInteger(rs.getString("users.id")));
                usuario.setNombre(rs.getString("users.nomb"));
                usuario.setApellidoPaterno(rs.getString("users.apellpat"));
                usuario.setApellidoMaterno(rs.getString("users.apellmat"));
                usuario.setCorreo(rs.getString("users.email"));

                Subsidiary subsidiary = new Subsidiary();
                subsidiary.setId(rs.getInt("sub.id"));
                subsidiary.setNombre(rs.getString("sub.nombre"));

                usuario.setSubsidiary(subsidiary);

                Status status = new Status(rs.getInt("sta.id"), rs.getString("sta.nomb"), rs.getString("sta.descripcion"));
                usuario.setStatus(status);

                Perfil per = new Perfil(rs.getInt("per.id"), rs.getString("per.nomb"));
                usuario.setPerfil(per);
            }

        } finally {
            Conexion.Desconectar(conn);
        }

        return usuario;
    }

    public JSONObject agregar(Usuario user) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".USER (nomb,apellpat,apellmat,password,email,subsidiary_id,status_id,perfil_id) "
                    + "VALUES (?,?,?,MD5(?),?,?,1,?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, user.getNombre());
            pst.setString(2, user.getApellidoPaterno());
            pst.setString(3, user.getApellidoMaterno());
            pst.setString(4, user.getPassword());
            pst.setString(5, user.getCorreo());
            pst.setInt(6, user.getSubsidiary().getId());
            //pst.setInt(7, user.getStatus().getId());
            pst.setInt(7, user.getPerfil().getId());
            pst.executeUpdate();
            ResultSet keys = pst.getGeneratedKeys();
            keys.next();
            int id = keys.getInt(1);
            JSONObject jsonUser = new JSONObject();
            jsonUser.put("id", id);
            json.put("estado", "ok");
            json.put("data", jsonUser);
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

    public int agregarUsuario(Usuario user) throws JSONException {
        Connection conn = null;
        int id = 0;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".USER (nomb,apellpat,apellmat,clave,email,subsidiary_id,status_id,perfil_id) "
                    + "VALUES (?,?,?,null,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, user.getNombre());
            pst.setString(2, user.getApellidoPaterno());
            pst.setString(3, user.getApellidoMaterno());
            pst.setString(4, user.getCorreo());
            pst.setInt(5, user.getSubsidiary().getId());
            pst.setInt(6, user.getStatus().getId());
            pst.setInt(7, user.getPerfil().getId());
            pst.executeUpdate();
            ResultSet keys = pst.getGeneratedKeys();
            keys.next();
            id = keys.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Conexion.Desconectar(conn);
        }
        return id;

    }

    public int agregarUsuarioComun(Usuario user) throws JSONException {
        Connection conn = null;
        int id = 0;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "INSERT INTO " + D.ESQUEMA + ".USER (nomb,apellpat,apellmat,clave,email,subsidiary_id,status_id,perfil_id) "
                    + "VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, user.getNombre());
            pst.setString(2, user.getApellidoPaterno());
            pst.setString(3, user.getApellidoMaterno());
            pst.setString(4, user.getPassword());
            pst.setString(5, user.getCorreo());
            pst.setInt(6, user.getSubsidiary().getId());
            pst.setInt(7, user.getStatus().getId());
            pst.setInt(8, user.getPerfil().getId());
            pst.executeUpdate();
            ResultSet keys = pst.getGeneratedKeys();
            keys.next();
            id = keys.getInt(1);
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Conexion.Desconectar(conn);
        }
        return id;

    }

    public JSONObject eliminar(Usuario user) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "DELETE FROM " + D.ESQUEMA + ".USER "
                    + "WHERE id = ? ";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, user.getId().toString());
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
            json.put("mensaje", ex.toString());
            return json;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public JSONObject actualizar(Usuario user) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = null;
            PreparedStatement pst = null;

            if ("xxxxxxxx".equals(user.getPassword())) {
                sql = "UPDATE " + D.ESQUEMA + ".USER "
                        + "SET nomb = ?, "
                        + "apellpat = ?, "
                        + "apellmat = ?, "
                        + "subsidiary_id = ?, "
                        + "status_id = ?, "
                        + "perfil_id = ? "
                        + "WHERE id = ?";
                pst = conn.prepareStatement(sql);
                pst.setString(1, user.getNombre());
                pst.setString(2, user.getApellidoPaterno());
                pst.setString(3, user.getApellidoMaterno());
                pst.setInt(4, user.getSubsidiary().getId());
                pst.setInt(5, user.getStatus().getId());
                pst.setInt(6, user.getPerfil().getId());
                pst.setString(7, user.getId().toString());
            } else {
                sql = "UPDATE " + D.ESQUEMA + ".USER "
                        + "SET nomb = ?, "
                        + "apellpat = ?, "
                        + "apellmat = ?, "
                        + "password = MD5(?), "
                        + "subsidiary_id = ?, "
                        + "status_id = ?, "
                        + "perfil_id = ? "
                        + "WHERE id = ?";
                pst = conn.prepareStatement(sql);
                pst.setString(1, user.getNombre());
                pst.setString(2, user.getApellidoPaterno());
                pst.setString(3, user.getApellidoMaterno());
                pst.setString(4, user.getPassword());
                pst.setInt(5, user.getSubsidiary().getId());
                pst.setInt(6, user.getStatus().getId());
                pst.setInt(7, user.getPerfil().getId());
                pst.setString(8, user.getId().toString());
            }

            pst.executeUpdate();
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

    public JSONObject actualizarPassword(Usuario user) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        try {
            conn = Conexion.getConexionEasy();
            String sql = null;
            PreparedStatement pst = null;

            sql = "UPDATE " + D.ESQUEMA + ".USER "
                    + "SET clave = ? "
                    + "WHERE id = ?";

            pst = conn.prepareStatement(sql);
            pst.setString(1, user.getPassword());
            pst.setString(2, user.getId().toString());
            pst.executeUpdate();

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

    public JSONObject listar(Usuario usu_session) throws JSONException {
        Connection conn = null;
        JSONObject json = new JSONObject();
        JSONArray arrJson = new JSONArray();
        try {
            conn = Conexion.getConexionEasy();
            String sql = "SELECT a.id,a.nomb,a.apellpat,a.apellmat,a.email, a.password, " //parametros 1 - 5
                    + "b.id AS id_subsidiary,b.nomb AS nom_subsidiary, " //parametros 6 - 7
                    + "c.id AS id_company, c.nomb AS nom_company, " //parametros 8 - 9
                    + "d.id AS id_status, d.nomb as nom_status, d.descripcion AS desc_status, " //parametros 10 - 13
                    + "e.id AS id_perfil, e.nomb as nom_perfil " //parametros 14 - 15
                    + "FROM " + D.ESQUEMA + ".USER a "
                    + "INNER JOIN " + D.ESQUEMA + ".SUBSIDIARY b "
                    + "ON a.subsidiary_id = b.id "
                    + "INNER JOIN " + D.ESQUEMA + ".COMPANY c "
                    + "ON b.company_id = c.id "
                    + "INNER JOIN " + D.ESQUEMA + ".STATUS d "
                    + "ON a.status_id = d.id "
                    + "INNER JOIN " + D.ESQUEMA + ".PERFIL e "
                    + "ON a.perfil_id = e.id "
                    + "WHERE a.id NOT IN (621,622) ";

            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                JSONObject jsonUser = new JSONObject();
                jsonUser.put("id", rs.getString(1));
                jsonUser.put("nombre", rs.getString(2) != null ? rs.getString(2) : "");
                jsonUser.put("apellido_paterno", rs.getString(3) != null ? rs.getString(3) : "");
                jsonUser.put("apellido_materno", rs.getString(4) != null ? rs.getString(4) : "");
                jsonUser.put("email", rs.getString(5) != null ? rs.getString(5) : "");
                jsonUser.put("password", rs.getString(6) != null ? rs.getString(6) : "");
                jsonUser.put("id_subsidiary", rs.getString(7) != null ? rs.getString(7) : "");
                jsonUser.put("nom_subsidiary", rs.getString(8) != null ? rs.getString(8) : "");
                jsonUser.put("id_company", rs.getString(9) != null ? rs.getString(9) : "");
                jsonUser.put("nom_company", rs.getString(10) != null ? rs.getString(10) : "");
                jsonUser.put("id_status", rs.getString(11) != null ? rs.getString(11) : "");
                jsonUser.put("nom_status", rs.getString(12) != null ? rs.getString(12) : "");
                jsonUser.put("desc_status", rs.getString(13) != null ? rs.getString(13) : "");
                jsonUser.put("id_perfil", rs.getString(14) != null ? rs.getString(14) : "");
                jsonUser.put("nom_perfil", rs.getString(15) != null ? rs.getString(15) : "");
                arrJson.put(jsonUser);
            }
            json.put("estado", "ok");
            json.put("data", arrJson);
            return json;
        } catch (SQLException ex) {
            ex.printStackTrace();
            json.put("estado", "ok");
            json.put("mensaje", ex.toString());
            return json;
        } finally {
            Conexion.Desconectar(conn);
        }
    }

    public boolean cambiarEstado(Usuario usuario) {
        Connection conn = null;
        boolean flag = false;
        try {
            conn = Conexion.getConexionEasy();
            String sql = "UPDATE `USER`\n"
                    + "SET status_id= ? \n"
                    + "WHERE id= ? ";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, usuario.getStatus().getId());
            pst.setString(2, usuario.getId().toString());
            int resp = pst.executeUpdate();
            pst.close();
            if (resp > 0) {
                flag = true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            Conexion.Desconectar(conn);
        }

        return flag;
    }

}
