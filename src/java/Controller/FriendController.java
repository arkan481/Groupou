/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.FriendModel;
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
    
    private List<FriendModel> model = new ArrayList<>();
    private FriendQuery query = new FriendQuery();
    
    public List<FriendModel> getUserFriend(String userID) throws SQLException {
        String sql = this.query.GET;

        Map<Integer,Object> map = new HashMap<>();
        map.put(1, userID);

        ResultSet rs = this.getWithParam(map, sql);

        while (rs.next()) {
            FriendModel friendModel = new FriendModel();
            friendModel.setAddee(rs.getString("addee"));
            friendModel.setAdder(rs.getString("adder"));

            model.add(friendModel);
        }

        return model;
    }
    
    
}
