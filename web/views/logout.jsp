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
        <jsp:include page="/views/layouts/loginhead.jsp">
            <jsp:param name="title" value="Logout"></jsp:param>
        </jsp:include>
        
    </head>
    <body>
        
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                    <form class="login100-form validate-form" action="http://localhost:8080/JSPIntro/" method="GET">
                        <span class="login100-form-title p-b-33">
                            Account Logout
                        </span>

                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <input class="input100" type="text" name="email" placeholder="Email">
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
                                Sign out
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
                                Sign out
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!--Including the login script-->
        <jsp:include page="/views/layouts/loginscript.jsp"></jsp:include>
    </body>
</html>
