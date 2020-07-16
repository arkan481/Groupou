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
    <jsp:include page="/views/layouts/index/indexnavbar.jsp"></jsp:include>
    
    <div class="popcontainer">
        <div class="maincontainer">
            <header>
                <nav>
                    <div class="centernav">
                        <div class="navhome">
                            <p>Home</p>
                            <hr id="hrhome">
                        </div>
                        <div class="navhome" id="aboutid" onclick="redirectAboutUs()">
                            <p>About Us</p>
                            <hr id="hrabout">
                        </div>
                        <div class="navhome" id="howtoid" onclick="redirectHowTo()">
                            <p>How-To</p>
                            <hr id="hrhow">
                        </div>
                    </div>
                </nav>
            </header>
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
                    <img src="./images/robotimg.png" alt="robotimg" class="imgrobot">
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
