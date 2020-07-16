<%-- 
    Document   : index
    Created on : Jul 16, 2020, 12:23:26 PM
    Author     : Fino Basri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/views/layouts/index/indexhead.jsp"></jsp:include>
    </head>
    <body>
    <%@include file="/views/layouts/index/indexnavbar.jsp"%>
    <%--<jsp:include page="/views/layouts/index/indexnavbar.jsp"></jsp:include>--%>
    
    <div class="popcontainer">
        <div class="maincontainer">
            <div class="centercontainer">
                <div class="textleft">
                    <p class="pchetto">Chetto Project</p>
                    <p class="pweb">Web Application</p>
                    <p class="pdesc">Chat privately with a smart bot. Request an image, Song, <br> Wiki and store your own personal notes!</p>
                    <div class="btnwrapper">
                        <button id="btnStart" onclick="showPopUp()">Chat Now</button>
                    </div>
                </div>
                <div class="imageright">
                    <img src="./public/assets/img/robotimg.png" alt="robotimg" class="imgrobot">
                </div>
            </div>
        </div>
        <div class="popupbox" id="boxpop">
            <div class="popupouter">
                <p>Your Name</p>
                <input type="text" id="nameinput" placeholder="name">
                <div class="btncont">
                    <button id="btnok" onclick="redirectToChat()">OK</button>
                    <button id="btncancel" onclick="hidePopUp()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/views/layouts/index/indexscript.jsp"></jsp:include>
    
    </body>
</html>
