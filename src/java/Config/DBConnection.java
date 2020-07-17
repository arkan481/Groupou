/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author arkan481
 */
public class DBConnection {
    
    private Connection con;
    private final String URL = "jdbc:mysql://192.168.64.3:3306/GroupouDB";
    private final String USERNAME = "arkan";
    private final String PASSWORD = "0481";
    
    public Connection open() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return con;
        }
    }
    
    public String testConnection() throws SQLException {
        Connection con = open();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM testconnection");
        resultSet.next();
        return resultSet.getString("test");
    }
}
