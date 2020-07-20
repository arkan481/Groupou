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
  public final String GET = "SELECT DISTINCT users_tb.username,users_tb.id "
          + "FROM users_tb,user_friend_tb WHERE adder IN "
          + "(SELECT adder FROM user_friend_tb WHERE addee = ?) "
          + "AND users_tb.id = adder";
  public final String INSERT = "INSERT INTO user_friend_tb (addee,adder) VALUES"
          + " (?,(SELECT users_tb.id FROM users_tb WHERE users_tb.username = ?))";
}
