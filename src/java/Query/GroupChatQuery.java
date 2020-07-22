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
public class GroupChatQuery {
    
    public final String GET = "SELECT message,date,users_tb.username,sender_id "
            + "FROM users_tb,group_chat_tb WHERE group_id = ? "
            + "AND users_tb.id = sender_id ORDER BY group_chat_tb.id";
    public final String CREATE = "INSERT INTO group_chat_tb"
            + "(group_id,message,sender_id) VALUES (?,?,?)";
    
}
