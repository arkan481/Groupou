/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.GroupModel;
import Query.GroupQuery;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author arkan481
 */
public class GroupController extends BaseController{
    
    private GroupQuery query = new GroupQuery();
    private List<GroupModel> models = new ArrayList<>();
    
    public boolean create(GroupModel model) {
        String sql = this.query.CREATE;
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, model.getGroupName());
        map.put(2, model.getGroupOwner());
        
        return this.preparedStatement(map, sql);
    }
    
}
