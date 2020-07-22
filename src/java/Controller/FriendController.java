/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.FriendModel;
import Model.UserModel;
import Query.FriendQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Fino Basri
 */
public class FriendController extends BaseController {
    
    private List<UserModel> model = new ArrayList<>();
    private FriendQuery query = new FriendQuery();
    
    public List<UserModel> getUserFriend(String userID) throws SQLException {
        String sql = this.query.GET;

        Map<Integer,Object> map = new HashMap<>();
        map.put(1, userID);

        ResultSet rs = this.getWithParam(map, sql);

        while (rs.next()) {
            UserModel userModel = new UserModel();
            userModel.setUserName(rs.getString("username"));
            userModel.setId(Integer.parseInt(rs.getString("id")));

            model.add(userModel);
        }
        return model;
    }
    
    public boolean insert(String id,String addedUsername) {
        
        String sql = this.query.INSERT;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, id);
        map.put(2, addedUsername);
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean delete(String adder,String addee) {
        String sql = this.query.DELETE;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, adder);
        map.put(2, addee);
        
        return this.preparedStatement(map, sql);
    }
    
}
