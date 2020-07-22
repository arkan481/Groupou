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
public class UserQuery {
    
    public final String CREATE = "INSERT INTO users_tb (username,password) VALUES (?, MD5(?))";
    public final String LOGIN = "SELECT id,username FROM users_tb WHERE username = ? AND password = MD5(?)";
    public final String SHOW = "SELECT id,username FROM users_tb WHERE id = ?";
    public final String UPDATE_PASSWORD = "UPDATE users_tb SET password = MD5(?) WHERE id = ?";
    
}
