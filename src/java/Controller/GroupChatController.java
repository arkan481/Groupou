/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.GroupBubbleModel;
import Model.GroupChatModel;
import Query.GroupChatQuery;
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
public class GroupChatController extends BaseController{
    
    GroupChatQuery query = new GroupChatQuery();
    private List<GroupChatModel> model = new ArrayList<>();
    private List<GroupBubbleModel> gbms = new ArrayList<>();
    
    public boolean create(GroupChatModel gcm) {
        String sql = this.query.CREATE;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, gcm.getGroupID());
        map.put(2, gcm.getMessage());
        map.put(3, gcm.getSenderID());
        
        return this.preparedStatement(map, sql);
    }
    
    public List<GroupBubbleModel> getGroupMessage(String groupID) throws SQLException {
        String sql = this.query.GET;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, groupID);
        
        ResultSet rs = this.getWithParam(map, sql);
        
        while (rs.next()) {            
            GroupBubbleModel gbm = new GroupBubbleModel();
            gbm.setMessage(rs.getString("message"));
            gbm.setDate(rs.getString("date"));
            gbm.setUsername(rs.getString("username"));
            gbm.setSenderID(rs.getString("sender_id"));
            
            this.gbms.add(gbm);
        }
        return this.gbms;
    }
}
