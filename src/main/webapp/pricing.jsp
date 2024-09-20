<%-- 
    Document   : pricing
    Created on : Jun 25, 2024, 7:55:45 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/gijgo.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/animated-headline.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="black-bg">
        <!-- ? Preloader Start -->
        <jsp:include page="header_footer/loadPage.jsp"/>
        <!-- Preloader Start -->
       <!--=========header==============-->
    <jsp:include page="header_footer/header.jsp"/>
    <!--=======================-->

        <main>
             <%  String role = (String) session.getAttribute("name");  %>
            <!--? Hero Start -->
            <div class="slider-area2">
                <div class="slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap hero-cap2 pt-70">
                                    <h2>Pricing</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->
            <!-- Courses area start -->
            <section class="pricing-area section-padding30 fix">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="section-tittle text-center mb-55">
                                <h2>Pricing</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="properties mb-30">
                                <div class="properties__card">
                                    <div class="about-icon">
                                        <img src="assets/img/icon/price.svg" alt="">
                                    </div>
                                    <div class="properties__caption">
                                        <span class="month">3 month plan</span>
                                        <p class="mb-25">$5/m  <span>(Single class)</span></p>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Comprehensive plans </p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Guided instructions</p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Weight tracking</p>
                                            </div>
                                        </div>
<!--                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Weight losing classes</p>
                                            </div>
                                        </div>
                                        <div class="single-features mb-20">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Month to mouth</p>
                                            </div>
                                        </div>-->
                                          <%if (role != null && role.equals("user")) {%>
                                         <a href="JoinCourse.jsp" class="border-btn border-btn2">Join Now</a>
                                            <%} else {%>
                                        <a href="#" class="border-btn border-btn2">Join Now</a>
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="properties mb-30">
                                <div class="properties__card">
                                    <div class="about-icon">
                                        <img src="assets/img/icon/price.svg" alt="">
                                    </div>
                                    <div class="properties__caption">
                                        <span class="month">6 month plan</span>
                                        <p class="mb-25">$9/m  <span>(Single class)</span></p>
                                         <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Comprehensive plans </p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Guided instructions</p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Weight tracking</p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Extended access </p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>10% discount on nutrition product</p>
                                            </div>
                                        </div>

                                       <%if (role != null && role.equals("user")) {%>
                                         <a href="JoinCourse.jsp" class="border-btn border-btn2">Join Now</a>
                                            <%} else {%>
                                        <a href="#" class="border-btn border-btn2">Join Now</a>
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="properties mb-30">
                                <div class="properties__card">
                                    <div class="about-icon">
                                        <img src="assets/img/icon/price.svg" alt="">
                                    </div>
                                    <div class="properties__caption">
                                        <span class="month">6 month premium plan</span>
                                        <p class="mb-25">$83/m  <span>(Single class)</span></p>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Comprehensive plans </p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Guided instructions</p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Weight tracking</p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Extended access </p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>12% discount on nutrition product</p>
                                            </div>
                                        </div>
                                        <div class="single-features">
                                            <div class="features-icon">
                                                <img src="assets/img/icon/check.svg" alt="">
                                            </div>
                                            <div class="features-caption">
                                                <p>Individualized coaching and dietary advice</p>
                                            </div>
                                        </div>
                                       <%if (role != null && role.equals("user")) {%>
                                         <a href="JoinCourse.jsp" class="border-btn border-btn2">Join Now</a>
                                            <%} else {%>
                                        <a href="#" class="border-btn border-btn2">Join Now</a>
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Courses area End -->
            <!-- ? services-area -->
            <jsp:include page="header_footer/information.jsp"/>
        </main>
        <jsp:include page="header_footer/footer.jsp"/>


        <!-- JS here -->

        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Date Picker -->
        <script src="./assets/js/gijgo.min.js"></script>
        <!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

        <!-- counter , waypoint,Hover Direction -->
        <script src="./assets/js/jquery.counterup.min.js"></script>
        <script src="./assets/js/waypoints.min.js"></script>
        <script src="./assets/js/jquery.countdown.min.js"></script>
        <script src="./assets/js/hover-direction-snake.min.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
    </body>
</html>
