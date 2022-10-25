/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Conexion;

import com.sun.jdi.connect.spi.Connection;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos
 */
public class ConexionSQL {
    Connection conectar = null;
    String USER = "root";
    String PASSWORD = "contrasenia";
    
    public Connection conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conectar = (Connection) DriverManager.getConnection("jdbc:mysql//localhost/pomodoro/", USER, PASSWORD);
    
        } catch (Exception e) {
           JOptionPane.showMessageDialog(null, "Error de conexion " + e.getMessage());
        }
    }
}
