<%-- 
    Document   : logout
    Created on : Jul 17, 2020, 9:44:16 PM
    Author     : Fino Basri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--Including loginhead.jsp-->
        <jsp:include page="/views/layouts/login/loginhead.jsp">
            <jsp:param name="title" value="Sign Up"></jsp:param>
        </jsp:include>

    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                    <form class="login100-form validate-form" action="./signup" method="POST">
                        <span class="login100-form-title p-b-33">
                            Account Sign Up
                        </span>

                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <input class="input100" type="text" name="username" placeholder="Username">
                            <span class="focus-input100-1"></span>
                            <span class="focus-input100-2"></span>
                        </div>

                        <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                            <input class="input100" type="password" name="pass" placeholder="Password">
                            <span class="focus-input100-1"></span>
                            <span class="focus-input100-2"></span>
                        </div>

                        <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                            <input class="input100" type="password" name="confpass" placeholder="Confirm Password">
                            <span class="focus-input100-1"></span>
                            <span class="focus-input100-2"></span>
                        </div>

                        <div class="container-login100-form-btn m-t-20">
                            <button class="login100-form-btn" type="submit">
                                Sign Up
                            </button>
                        </div>

                        <div class="text-center p-t-45 p-b-4">
                            <span class="txt1 wrong" id="wrongSpan">
                            </span>
                        </div>

                        <div class="text-center p-t-45">
                            <span class="txt1">
                                Already have an account?
                            </span>

                            <a href="./login" class="txt2 hov1">
                                Sign In
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--Including the login script-->
        <jsp:include page="/views/layouts/login/loginscript.jsp"></jsp:include>
        <script>
            var wrongSpan = document.getElementById("wrongSpan");

            function getParameterByName(name, url) {
                if (!url)
                    url = window.location.href;
                name = name.replace(/[\[\]]/g, '\\$&');
                var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                        results = regex.exec(url);
                if (!results)
                    return null;
                if (!results[2])
                    return '';
                return decodeURIComponent(results[2].replace(/\+/g, ' '));
            }

            if (getParameterByName("status") == "passerr") {
                wrongSpan.style.display = "block";
                wrongSpan.textContent = "Password doesn't match!";
            } else if (getParameterByName("status") == "unerr") {
                wrongSpan.style.display = "block";
                wrongSpan.textContent = "Username must be 8 characters long!";
            } else {
                wrongSpan.style.display = "none";
            }
        </script>
    </body>
</html>
