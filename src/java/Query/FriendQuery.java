/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author Fino Basri
 */
public class FriendQuery {
  public final String GET = "SELECT username,users_tb.id FROM "
          + "users_tb,user_friend_tb WHERE addee IN (SELECT addee FROM user_friend_tb WHERE adder = ?) ";
  public final String INSERT = "INSERT INTO user_friend_tb (addee,adder) VALUES"
          + " (?,(SELECT users_tb.id FROM users_tb WHERE users_tb.username = ?))  ";
}
