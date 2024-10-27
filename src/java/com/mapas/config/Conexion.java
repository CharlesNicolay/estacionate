
package com.mapas.config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author dkred
 */
public class Conexion {
    Connection con;
    String url ="jdbc:mysql://localhost:3306/estacionate";
    String user="root";
    String pass ="";
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
        } catch(ClassNotFoundException | SQLException e){
            
        }
        return con;
    }
}
