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
public class FriendChatQuery {
    
    public final String GET = "SELECT * FROM chat_tb WHERE sender_id = ? "
            + "AND receiver_id = ?";
    public final String INSERT = "INSERT INTO chat_tb "
            + "(sender_id,receiver_id,messsage) VALUES (?,?,?)";
    
}
