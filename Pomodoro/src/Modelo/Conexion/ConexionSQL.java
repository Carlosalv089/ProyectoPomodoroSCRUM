/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Conexion;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Carlos
 */
public class ConexionSQL {

    public static void main(String[] args) {
        String cadenaConexion = "jdbc:mysql://localhost/pomodoro";
        String usuario = "root";
        String password = "root";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection(cadenaConexion, usuario, password);
            System.out.println("Conexion Creada");
        } catch (Exception ex) {
            out.println(ex);
        }

    }
}
