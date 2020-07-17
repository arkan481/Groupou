/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.DBConnection;
import com.sun.rowset.CachedRowSetImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author arkan481
 */
public class BaseController {

    DBConnection connection = new DBConnection();

    public ResultSet get(String sql) {
        try {
            Connection con = connection.open();

            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            CachedRowSetImpl crs = new CachedRowSetImpl();
            crs.populate(rs);

            con.close();
            return crs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean preparedStatement(Map<Integer, Object> map, String sql) {
        try {
            Connection con = connection.open();
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            for (Map.Entry<Integer, Object> entry : map.entrySet()) {
                preparedStatement.setString(entry.getKey(), entry.getValue().toString());
            }

            int rows = preparedStatement.executeUpdate();

            return rows > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public ResultSet getWithParam(Map<Integer, Object> map, String sql) {
        try {
            Connection con = connection.open();

            PreparedStatement ps = con.prepareStatement(sql);

            for (Map.Entry<Integer, Object> entry : map.entrySet()) {
                ps.setString(entry.getKey(), entry.getValue().toString());
            }

            ResultSet rs = ps.executeQuery();

            CachedRowSetImpl crs = new CachedRowSetImpl();
            crs.populate(rs);

            con.close();
            return crs;
        } catch (SQLException ex) {
            Logger.getLogger(BaseController.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
