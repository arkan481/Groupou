<%-- 
    Document   : chatpage
    Created on : Jul 18, 2020, 7:54:55 PM
    Author     : arkan481
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/views/layouts/index/indexhead.jsp">
            <jsp:param name="title" value="Chat Page"></jsp:param>
        </jsp:include>

        <jsp:include page="/views/layouts/chat/chathead.jsp"></jsp:include>
        </head>

        <body onload="replyhi()">
            <div class="outercont">
                <div class="blackbox" id="blackboxid">
                    <div class="logoutfloatbox">
                        <p class="plogoutbox">Are you sure want to logout?</p>
                        <div class="btnwrap">
                            <button class="btnbox" id="yesbtn" onclick="redirectToIndex()">Yes</button>
                            <button class="btnbox" id="nobtn" onclick="hidePopUp()">No</button>
                        </div>
                    </div>
                </div>
                <div class="maincontainer">
                    <div class="containerkiri1">
                        <div class="boxprofile">
                            <a href="./">
                                <img class="profilimage2"
                                     src="https://img.icons8.com/dusk/2x/google-home.png"
                                     alt="">
                            </a>
                        </div>
                        <div class="boxkiri" id="inboxid">
                            <div class="bluediv" id="blueinbox"></div>
                            <img class="logo" src="./public/assets/img/mail.png">
                        </div>
                        <a href="./howto" target="#">
                            <div class="boxkiri" id="howtoid">
                                <div class="bluediv"></div>
                                <img class="logo" src="./public/assets/img/box.png">
                            </div>
                        </a>
                        <a href="./about" target="#">
                            <div class="boxkiri" id="aboutid">
                                <div class="bluediv"></div>
                                <img class="logo"
                                     src="./public/assets/img/star.png">
                            </div>
                        </a>
                        <div onclick="popUpGroup()" class="boxkiri" id="aboutid">
                            <div class="bluediv"></div>
                            <img class="logo"
                                 src="./public/assets/img/group.png">
                        </div>
                        <div class="boxkiri" id="aboutid" onclick="popUpFriend()">
                            <div class="bluediv"></div>
                            <img class="logo"
                                 src="./public/assets/img/friend.png">
                        </div>
                        <div class="logoutwrapper">
                            <div class="logoutbox" onclick="showPopUp()">
                                <img src="./public/assets/img/logout" alt="" class="logo">
                            </div>
                        </div>
                    </div>
                    <div class="containerkiri">
                        <div class="boxprofile2">
                            <img class="profilimage"
                                 src="https://img.icons8.com/plasticine/2x/bot.png"
                                 alt="">
                            <p class="username" id="unp">${username}</p>
                    </div>
                    <div class="wrapper2">
                        <div class="groupwrapper">
                            <input type="text" class="searchgroup" placeholder="Search Group"/>
                        </div>
                        <div class="friendwrapper">
                            <input type="text" class="searchgroup" placeholder="Search Friends"/>
                        </div>
                    </div>

                </div>
                <div class="containerkanan">
                    <div id="chatid" class="chatbox">

                    </div>
                    <div class="wrapperinbox">
                        <div class="inboxsend">
                            <input id="inputid" type="text" placeholder="Type Message…">
                            <img class="logo" onclick="append()" src="./public/assets/img/send.png" alt="">
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="popupGroup" id="popupGroup">
            <div class="groupDivWhite">
                <span class="toptext">CREATE YOUR GROUP CHAT</span>
                <span class="topdesctext">Make a place for you to hang out with your communities and friends.</span>
                <form action="group" method="POST">

                    <div class="centerdiv">
                        <div class="leftdiv">
                            <p class="pgroupname">GROUP NAME</p>
                            <input name="groupName" class="inputgroup" placeholder="New Group Name"/>
                            <span class="pgroupname">OR</span>
                            <p class="pgroupname">Join a Group</p>
                            <input name="groupname" class="inputgroup" placeholder="Group Name"/>
                            <button class="joinbtn">JOIN</button>
                        </div>
                        <div class="rightdiv">
                            <img class="comimg" src="https://cdn1.iconfinder.com/data/icons/network-and-comminications-flat-circle-shadow-vo-1/120/control__data__share__community__social__communication__connect-512.png"/>
                        </div>
                    </div>
                    <div class="wrappercreate">
                        <a onclick="closeGroupPopup()" href="#" class="topdesctext">Back</a>
                        <button type="submit" class="joinbtn2">CREATE</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="popupGroup" id="popupFriend">
            <div class="groupDivWhite">
                <span class="toptext">FIND YOUR FRIENDS OR COLLEAGUES</span>
                <span class="topdesctext">Chat personally with your relatives and friends.</span>
                <div class="centerdiv">
                    <div class="leftdiv2">
                        <p class="pgroupname">FIND YOUR FRIEND</p>
                        <input class="inputgroup" placeholder="Friend Username"/>
                    </div>
                    <div class="rightdiv">
                        <img class="comimg" src="https://cdn1.iconfinder.com/data/icons/network-and-comminications-flat-circle-shadow-vo-1/120/control__data__share__community__social__communication__connect-512.png"/>
                    </div>
                </div>
                <div class="wrappercreate">
                    <a onclick="closeFriendPopup()" href="#" class="topdesctext">Back</a>
                    <a href="#""><button class="joinbtn2">ADD</button></a>
                </div>
            </div>
        </div>
        <jsp:include page="/views/layouts/chat/chatscript.jsp"></jsp:include>
    </body>
</html>


