/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.FriendChatModel;
import Query.FriendChatQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author arkan481
 */
public class FriendChatController extends BaseController {
    
    private FriendChatQuery query = new FriendChatQuery();
    private List<FriendChatModel> model = new ArrayList<>();
    
    public List<FriendChatModel> get(FriendChatModel fcm) throws SQLException {
        String sql = this.query.GET;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, fcm.getSenderID());
        map.put(2, fcm.getReceiverID());
        
        ResultSet rs = this.getWithParam(map, sql);
        
        while (rs.next()) {            
            FriendChatModel friendChatModel = new FriendChatModel();
            friendChatModel.setDate(rs.getString("date"));
            friendChatModel.setMessage(rs.getString("message"));
            friendChatModel.setReceiverID(rs.getString("receiver_id"));
            friendChatModel.setSenderID(rs.getString("sender_id"));
            
            this.model.add(friendChatModel);
        }
        return this.model;
    }
    
    public boolean create(FriendChatModel fcm) {
        String sql = this.query.INSERT;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, fcm.getSenderID());
        map.put(2, fcm.getReceiverID());
        map.put(3, fcm.getMessage());
        
        return this.preparedStatement(map, sql);
    }
    
}
