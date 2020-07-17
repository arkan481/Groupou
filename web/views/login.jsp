<%-- 
    Document   : login
    Created on : Jul 16, 2020, 11:00:03 AM
    Author     : arkan481
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!--Including loginhead.jsp-->
        <jsp:include page="/views/layouts/login/loginhead.jsp">
            <jsp:param name="title" value="Login"></jsp:param>
        </jsp:include>

    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                    <form class="login100-form validate-form" action="./login" method="POST">
                        <span class="login100-form-title p-b-33">
                            Account Login
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

                        <div class="container-login100-form-btn m-t-20">
                            <button class="login100-form-btn" type="submit">
                                Sign in
                            </button>
                        </div>

                        <div class="text-center p-t-45 p-b-4">
                            <span class="txt1">
                                Forgot
                            </span>

                            <a href="#" class="txt2 hov1">
                                Username / Password?
                            </a>
                        </div>

                        <div class="text-center">
                            <span class="txt1">
                                Create an account?
                            </span>

                            <a href="#" class="txt2 hov1">
                                Sign up
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--Including the login script-->
        <jsp:include page="/views/layouts/login/loginscript.jsp"></jsp:include>
        <script>
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
            
            if(getParameterByName("status") == "notok") {
                // TODO : ADD WRONG USERNAME PROMPT
                alert("WTFF");
            }else {
                
            }
        </script>
    </body>
</html>
