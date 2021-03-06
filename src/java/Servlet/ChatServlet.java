/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.FriendChatController;
import Controller.FriendController;
import Controller.GroupChatController;
import Controller.GroupUserController;
import Controller.UserController;
import Model.FriendChatModel;
import Model.GroupBubbleModel;
import Model.GroupModel;
import Model.UserModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author arkan481
 */
public class ChatServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("/views/chatpage.jsp");
        HttpSession session = request.getSession();
        String user = String.valueOf(session.getAttribute("user"));
        String requestedGroupID = String.valueOf(request.getParameter("group"));
        String requestedFriendID = String.valueOf(request.getParameter("friend"));
        
        if (user.equals("null")) {
            response.sendRedirect("./login");
        } else {
            UserController uc = new UserController();
            GroupUserController guc = new GroupUserController();
            FriendController fc = new FriendController();
            GroupChatController gcc = new GroupChatController();
            FriendChatController fcc = new FriendChatController();
            try {
                UserModel sessionedUser = uc.show(String.valueOf(user));
                List<GroupModel> gms = guc.getUserGroup(user);
                List<UserModel> userFriend = fc.getUserFriend(user);
                if (sessionedUser != null) {
                    if (!requestedGroupID.equals("null")) {
                        // TODO : ADD CONTROLLER CALL
                        List<GroupBubbleModel> gbms = gcc.getGroupMessage(requestedGroupID);
                        request.setAttribute("groupchat", gbms);
                    }else if (!requestedFriendID.equals("null")) {
                        FriendChatModel fcm = new FriendChatModel();
                        fcm.setSenderID(user);
                        fcm.setReceiverID(requestedFriendID);
                        List<FriendChatModel> fcms = fcc.get(fcm);
                        request.setAttribute("friendchat", fcms);
                    }
                    request.setAttribute("userfriend", userFriend);
                    request.setAttribute("usergroup", gms);
                    request.setAttribute("username", sessionedUser.getUserName());
                    rd.forward(request, response);
                }
            } catch (SQLException ex) {
                Logger.getLogger(IndexServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
