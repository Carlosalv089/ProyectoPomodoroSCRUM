/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Conexion;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos
 */
public class ConexionSQL {

    Connection conectar = null;
    String USER = "root";
    String PASSWORD = "";

    public Connection conexion() throws SQLException, Exception {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conectar = (Connection) DriverManager.getConnection("jdbc:mysql//localhost/pomodoro/", USER, PASSWORD);

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error de conexion " + ex.getMessage());
            throw ex;
        }
        return null;

    }
}
