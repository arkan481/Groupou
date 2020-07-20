/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author arkan481
 */
public class GroupUserQuery {
    
    public final String GET_USER_GROUP = "SELECT groupName,group_id FROM group_tb,group_user_tb WHERE group_id = group_tb.id AND user_id = ?";
    public final String CREATE = "INSERT INTO group_user_tb (group_id,user_id) VALUES (?,?)";
}
