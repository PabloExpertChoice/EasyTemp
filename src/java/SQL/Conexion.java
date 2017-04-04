/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public static Connection getConexion() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
//            String servidor = "jdbc:mysql://192.168.100.2/southcone";
            String servidor = "jdbc:mysql://54.202.128.106/CacheTransunion";
            String usuario = "desarrollo";
            String password = "+2017desarrollo";
            conexion = DriverManager.getConnection(servidor, usuario, password);
            conexion.setAutoCommit(true);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.toString());
            conexion = null;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            conexion = null;
        } catch (Exception ex) {
            System.out.println(ex.toString());
            conexion = null;
        }
        return conexion;
    }
    public static Connection getConexionEasy() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String servidor = "jdbc:mysql://test.ecloudapp.cl/easy";
            String usuario = "desarrollo";
            String password = "+2017desarrollo";
            conexion = DriverManager.getConnection(servidor, usuario, password);
            conexion.setAutoCommit(true);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.toString());
            conexion = null;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            conexion = null;
        } catch (Exception ex) {
            System.out.println(ex.toString());
            conexion = null;
        }
        return conexion;
    }

    public static boolean Desconectar(Connection conn) {
        boolean flag = false;
        try {
            if (conn == null || conn.isClosed()) {
                return true;
            }

            if (conn.isReadOnly()) {
                conn.rollback();
            } else {
                if (!conn.getAutoCommit()) {
                    conn.commit();
                }
            }

            conn.close();
            conn = null;
            flag = true;

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return flag;
    }
//    public static void main(String[] args) {
//        System.out.println(Conexion.getConexionEasy());
//        System.out.println(Conexion.getConexion());
//    }
}
