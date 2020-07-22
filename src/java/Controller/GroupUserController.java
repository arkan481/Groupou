/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.GroupModel;
import Model.GroupUserModel;
import Query.GroupUserQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author arkan481
 */
public class GroupUserController extends BaseController {
    
    private GroupUserQuery query = new GroupUserQuery();
    private List<GroupModel> groupModels = new ArrayList<>();
    
    public List<GroupModel> getUserGroup(String userID) throws SQLException {
        String sql = this.query.GET_USER_GROUP;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, userID);
        
        ResultSet rs = this.getWithParam(map, sql);
        
        while (rs.next()) {            
            GroupModel groupModel = new GroupModel();
            groupModel.setGroupName(rs.getString("groupName"));
            groupModel.setId(rs.getString("group_id"));
            groupModel.setLastMessage(rs.getString("message"));
            
            groupModels.add(groupModel);
        }
        
        return groupModels;
    }
    
    public boolean create(GroupUserModel gum) {
        String sql = this.query.CREATE;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, gum.getGroupID());
        map.put(2, gum.getUserID());
        
        return this.preparedStatement(map, sql);
        
        // TODO : ADD THIS SERVLET AND DO THE doPOST!
    }
    
}
