<%-- 
    Document   : howto
    Created on : Jul 16, 2020, 12:51:10 PM
    Author     : Fino Basri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/views/layouts/index/indexhead.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="/views/layouts/index/indexnavbar.jsp"></jsp:include>
            <div class="popcontainer">
                <div class="maincontainer">
                    <div class="centercontainer">
                        <div class="textleft">
                            <div class="howbox">
                                <img src="https://www.iconsdb.com/icons/preview/white/arrow-93-xxl.png" alt="" class="arrow" onclick="changeSlide(-1)">
                                <div class="tutorwrap">
                                    <div class="tutorbox">
                                        <img src="https://developer.spotify.com/assets/FBImage.png" alt="" class="imgtutor">
                                        <p class="tutorp">Spotify</p>
                                        <p class="howp">To request a song with spotify you just have to write --spot in mibot chatbox this will generate one random song for you to enjoy!</p>
                                    </div>
                                    <div class="tutorbox">
                                        <img src="https://cdn.naturettl.com/wp-content/uploads/2017/08/22011713/best-camera-landscape-photography-5-800x534.jpg" alt="" class="imgtutor">
                                        <p class="tutorp">Unsplash Source</p>
                                        <p class="howp">You can request any image by typing --img.'imagename' without quotation mark in mibot chatbox!</p>
                                    </div>
                                    <div class="tutorbox">
                                        <img src="https://multisim-insigneo.org/wp-content/uploads/2015/06/Wikipedia-Logo-on-Black-300x169.jpg" alt="" class="imgtutor">
                                        <p class="tutorp">Wikipedia</p>
                                        <p class="howp">Request any desired useful information with wikipedia by typing --wiki.'yoursearch' in mibot chatbox without quotation mark!</p>
                                    </div>
                                    <div class="tutorbox">
                                        <img src="https://us.123rf.com/450wm/peshkov/peshkov1602/peshkov160200286/52286082-blank-black-diary-cover-with-cup-of-coffee-eyeglasses-and-cd-disk-on-wooden-table-mock-up.jpg?ver=6" alt="" class="imgtutor">
                                        <p class="tutorp">Notes</p>
                                        <p class="howp">Store your personal note to mibot privately by typing --savenote.note1,note2 with each note seperated by comma, and to see your stored note just type --seenote in mibot chatbox!</p>
                                    </div>
                                </div>
                                <img src="https://www.iconsdb.com/icons/preview/white/arrow-25-xxl.png" alt="" class="arrow" onclick="changeSlide(1)">
                            </div>
                        </div>
                        <div class="imageright">
                            <img src="./images/robotimg.png" alt="robotimg" class="imgrobot">
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="/views/layouts/index/indexscript.jsp"></jsp:include>
    </body>
</html>
