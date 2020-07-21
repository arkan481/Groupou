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

        <body>
        <jsp:include page="/views/layouts/chat/chatscript.jsp"></jsp:include>
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
                                     src="https://www.pngkey.com/png/full/24-248385_home-icon-vector-png-google-home-app-icon.png"
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
                                 src="https://cdn3.iconfinder.com/data/icons/customer-support-7/32/40_robot_bot_customer_help_support_automatic_reply-512.png"
                                 alt="">
                            <p class="username" id="unp">${username}</p>
                    </div>
                    <div class="wrapper2">
                        <div class="groupwrapper">
                            <input type="text" class="searchgroup" placeholder="Search Group"/>
                            <div class="divgroup">
                                <c:forEach items="${usergroup}" var="group">
                                    <a href="./chat?group=${group.id}" class="chatbubble">
                                        <div clas="chatbubble">
                                            <p>${group.groupName}</p>
                                            <div class="msghor">
                                                <p class="msgtxt">${group.lastMessage}</p>
                                                <div class="tooltip" onclick="copyFunction(${group.id})">
                                                    <img class="copyicon" src="https://cdn3.iconfinder.com/data/icons/basic-1-blue-series/64/a-06-512.png"/>
                                                    <span class="tooltiptext" id="tttext">ID: ${group.id}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="friendwrapper">
                            <input type="text" class="searchgroup" placeholder="Search Friends"/>
                            <div class="divgroup">
                                <c:forEach items="${userfriend}" var="user">
                                    <div class="chatbubble">
                                        <p>${user.userName}</p>
                                        <div class="msghor">
                                            <p class="msgtxt">Some message...</p>
                                            <div class="tooltip" onclick="copyFunction(${user.id})">
                                                <img class="copyicon" src="https://cdn3.iconfinder.com/data/icons/basic-1-blue-series/64/a-06-512.png"/>
                                                <span class="tooltiptext" id="tttext">ID: ${user.id}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="kananwrapper">
                    <div class="containerkanan">

                        <div id="chatid" class="chatbox">
                            <c:forEach items="${groupchat}" var="chat">
                                <script>
                                    if ("${chat.message}" == "--spot") {
                                        replyspot();
                                    }
                                    console.log("still goes through");
                                    var senderID = "${chat.senderID}";
                                    var userID = "<%= request.getSession().getAttribute("user")%>";
                                    var chatBox = document.getElementById("chatid");
                                    var div = document.createElement("div");
                                    var span = document.createElement("span");
                                    var span2 = document.createElement("p");
                                    var br = document.createElement("br");
                                    if (senderID === userID) {
                                        div.style.textAlign = "right";
                                        div.style.marginRight = "20px";
                                        span2.style.textAlign = "right";
                                        span2.style.paddingRight = "20px";
                                    } else {
                                        div.style.marginLeft = "0px";
                                        span2.style.paddingLeft = "20px";
                                    }
                                    span.style.borderRadius = "15px";
                                    span.style.marginLeft = "20px";
                                    span.style.paddingTop = "12px";
                                    span.style.paddingBottom = "12px";
                                    span.style.paddingRight = "25px";
                                    span.style.paddingLeft = "25px";
                                    span.style.backgroundColor = "#4c89d4";
                                    span.style.color = "white";
                                    span.style.fontFamily = "productsans";
                                    span.style.fontSize = "1em";
                                    div.style.borderRadius = "15px";
                                    div.style.marginTop = "35px";
                                    span.style.marginBottom = "15px";
                                    span.textContent = "${chat.message}";
                                    span2.textContent = "${chat.username}";
                                    span2.style.color = "#615f5f";
                                    div.appendChild(span);
                                    chatBox.appendChild(div);
                                    chatBox.appendChild(span2);
                                </script>

                            </c:forEach>
                        </div>
                        <div class="wrapperinbox">
                            <div class="inboxsend">
                                <form action="groupchat" method="POST" id="sendForm"></form>
                                <input id="inputid" type="text" placeholder="Type Message…" name="messageGroup" form="sendForm" 
                                       pattern="[A-Za-z0-9 ]+" 
                                       oninvalid="this.setCustomValidity(' ')"
                                       oninput="setCustomValidity(' ')"
                                       onchange="try {
                                                   setCustomValidity('')
                                               } catch (e) {
                                               }"
                                       >
                                <button type="submit" name="group" value="<%=request.getParameter("group")%>" name="group" form="sendForm" class="btnSend">
                                    <img class="logo" onclick="append()" src="./public/assets/img/send.png" alt="">
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="startchat">
                        <img src="https://image.freepik.com/free-vector/online-communication-with-students-distance-learning_82574-6145.jpg"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="popupGroup" id="popupGroup">
            <div class="groupDivWhite">
                <span class="toptext">CREATE YOUR GROUP CHAT</span>
                <span class="topdesctext">Make a place for you to hang out with your communities and friends.</span>
                <form action="group" method="POST" id="createGroupForm"></form>
                <form action="join" method="POST" id="joinGroupForm"></form>

                <div class="centerdiv">
                    <div class="leftdiv">
                        <p class="pgroupname">Create a Group</p>
                        <input name="groupName" class="inputgroup" placeholder="New Group Name" form="createGroupForm"/>
                        <span class="pgroupname">OR</span>
                        <p class="pgroupname">Join a Group</p>
                        <input name="groupID" class="inputgroup" placeholder="Group ID" form="joinGroupForm"/>
                        <button type="submit" class="joinbtn" form="joinGroupForm">JOIN</button>
                    </div>
                    <div class="rightdiv">
                        <img class="comimg" src="https://cdn1.iconfinder.com/data/icons/network-and-comminications-flat-circle-shadow-vo-1/120/control__data__share__community__social__communication__connect-512.png"/>
                    </div>
                </div>
                <div class="wrappercreate">
                    <a onclick="closeGroupPopup()" href="#" class="topdesctext">Back</a>
                    <button type="submit" class="joinbtn2" form="createGroupForm">CREATE</button>
                </div>
            </div>
        </div>
        <div class="popupGroup" id="popupFriend">
            <div class="groupDivWhite">
                <span class="toptext">FIND YOUR FRIENDS OR COLLEAGUES</span>
                <span class="topdesctext">Chat personally with your relatives and friends.</span>
                <div class="centerdiv">
                    <div class="leftdiv2">
                        <p class="pgroupname">FIND YOUR FRIEND</p>
                        <form action="friend" method="POST" id="friendForm" form="friendForm"></form>
                        <input class="inputgroup" placeholder="Friend Username" name="userfriend" form="friendForm"/>
                    </div>
                    <div class="rightdiv">
                        <img class="comimg" src="https://cdn1.iconfinder.com/data/icons/network-and-comminications-flat-circle-shadow-vo-1/120/control__data__share__community__social__communication__connect-512.png"/>
                    </div>
                </div>
                <div class="wrappercreate">
                    <a onclick="closeFriendPopup()" href="#" class="topdesctext">Back</a>
                    <button type="submit" class="joinbtn2" form="friendForm">ADD</button>
                </div>
            </div>
        </div>
        <jsp:include page="/views/layouts/chat/chatscript.jsp"></jsp:include>
        <script>
            function copyFunction(id) {
                /* Copy the text inside the text field */
                const el = document.createElement('textarea');
                const toolTipText = document.getElementById("tttext");
                el.value = id;
                document.body.appendChild(el);
                el.select();
                document.execCommand("copy");
                document.body.removeChild(el);
                alert("Copied id: " + id);
            }
        </script>
    </body>
</html>


