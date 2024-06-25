<%-- 
    Document   : login
    Created on : Jun 25, 2024, 9:32:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">



        <script src="assets/js/login.js"></script>
        <!-- Custom Theme files -->
        <link href="assets/css/login.css" rel="stylesheet" type="text/css" media="all"/>
        <!-- for-mobile-apps -->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="">
        <!-- ? Preloader Start -->
        <jsp:include page="header_footer/loadPage.jsp"/>
        <!-- Preloader Start -->
        <header>

            <div class="logo">
                <a href="index.jsp"><img src="assets/img/logo/logo1.png" alt=""></a>
            </div>
            <div class="header">
                <div class="header-main">
                    <h1>Login</h1>
                    <div class="header-bottom">
                        <div class="header-right w3agile">

                            <div class="header-left-bottom agileinfo">

                                <form action="LoginControler" method="post">
                                    <input type="text"  value="User name" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'User name';
                                            }"/>
                                    <input type="password"  value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'password';
                                            }"/>
                                    <div class="remember">
                                        <span class="checkbox1">
                                            <label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>Remember me</label>
                                        </span>
                                        <div class="forgot">
                                            <h6><a href="#">Forgot Password?</a></h6>
                                        </div>
                                        <div class="clear"> </div>
                                    </div>

                                    <input type="submit" value="Login">
                                </form>	
                                <div class="header-left-top">
                                    <div class="sign-up"> <h2>or</h2> </div>

                                </div>
                                <div class="header-social wthree">
                                    <a href="#" class="face"><h5>Facebook</h5></a>
                                    <a href="#" class="twitt"><h5>-Gmail</h5></a>
                                </div>
                            </div>
                        </div>
                        <div class="register" style="display: flex; align-items: center;" >
                            <p>Wellcom to website : </p> <h6><a href="register.jsp">register</a></h6>
                        </div>
                    </div>
                </div>
            </div>


        </header>


        <!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
    </body>
</html>
