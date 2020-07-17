<%-- 
    Document   : about
    Created on : Jul 16, 2020, 12:45:39 PM
    Author     : Fino Basri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/views/layouts/index/indexhead.jsp">
            <jsp:param name="title" value="About Us"></jsp:param>
        </jsp:include>
        </head>
        <body onload="showHr(2)">
        <jsp:include page="/views/layouts/index/indexnavbar.jsp"></jsp:include>
            <div class="popcontainer">
                <div class="maincontainer">
                    <div class="centercontainer">
                        <div class="textleft">
                            <p class="pabout">Hello my name is Mibot</p>
                            <p class="pdesc">I was built in year 2020 using 3 wonderful technologies. CSS, HTML, <br> and Javascript. My creators also makes me stronger by embedding <br> informative and fun application like Spotify, Wikipedia, and <br> source unsplash!.</p>
                            <p class="pdesc">Uh Oh, while you're here, please meet my creators  and get <br> in touch with them. Click on their profile to say hi to them <br> on github!.</p>
                            <div class="horimg">
                                <a href="https://github.com/arkan481">
                                    <div class="userdiv">
                                        <img src="https://avatars2.githubusercontent.com/u/6422482?s=400&u=1e8724230d8d2a259d754a1b580af5e52db552f4&v=4" alt="" class="userimg">
                                        <p class="pdesc">Arkan Haryo</p>
                                    </div>
                                </a>
                                <a href="https://github.com/finobasri">
                                    <div class="userdiv" onclick="userFino()">
                                        <img src="https://smashel.com/wp-content/uploads/2017/12/chat-bot.png" alt="" class="userimg">
                                        <p class="pdesc">Fino Basri</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="imageright">
                            <img src="./public/assets/img/robotimg.png" alt="robotimg" class="imgrobot">
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="/views/layouts/index/indexscript.jsp"></jsp:include>
    </body>
</html>

