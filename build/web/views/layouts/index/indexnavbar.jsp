<%-- 
    Document   : indexnavbar
    Created on : Jul 16, 2020, 12:26:10 PM
    Author     : Fino Basri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
