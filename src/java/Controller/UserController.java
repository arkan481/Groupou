/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.DBConnection;
import Model.UserModel;
import Query.UserQuery;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.security.MessageDigest;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author arkan481
 */
public class UserController extends BaseController{
    
    private UserQuery query = new UserQuery();
    private List<UserModel> userModels = new ArrayList<>();
    
    public boolean create(UserModel userModel) {
        String sql = this.query.CREATE;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, userModel.getUserName());
        map.put(2, userModel.getPassword());
        
        return this.preparedStatement(map, sql);
    }
    
    public UserModel login(UserModel userModel) throws SQLException {
        String sql = this.query.LOGIN;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, userModel.getUserName());
        map.put(2, userModel.getPassword());
        
        ResultSet rs = this.getWithParam(map, sql);
        if (rs.next()) {
            
            UserModel model = new UserModel();
            model.setId(rs.getInt("id"));
            model.setUserName(rs.getString("username"));
            
            return model;
        }else {
            return null;
        }
    }
    
    public UserModel show(String id) throws SQLException {
        String sql = this.query.SHOW;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, id);
        
        ResultSet rs = this.getWithParam(map, sql);
        
        if (rs.next()) {
            UserModel userModel = new UserModel();
            userModel.setId(Integer.parseInt(rs.getString("id")));
            userModel.setUserName(rs.getString("username"));
            return userModel;
        }else {
            return null;
        }
    }
    
}
