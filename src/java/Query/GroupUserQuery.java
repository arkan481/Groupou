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
    
    public final String GET_USER_GROUP = "SELECT groupName,group_user_tb.group_id, "
            + "group_chat_tb.message AS lastMessage FROM group_tb,group_user_tb,group_chat_tb "
            + "WHERE user_id = ? AND group_user_tb.group_id = group_chat_tb.group_id "
            + "AND group_tb.id = group_user_tb.group_id AND group_chat_tb.id "
            + "IN (SELECT MAX(group_chat_tb.id) FROM group_chat_tb "
            + "GROUP BY group_chat_tb.group_id) GROUP BY group_user_tb.group_id";
    public final String CREATE = "INSERT INTO group_user_tb (group_id,user_id) VALUES (?,?)";
    
}
