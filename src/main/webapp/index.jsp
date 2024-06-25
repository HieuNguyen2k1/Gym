<%-- 
    Document   : home
    Created on : Jun 24, 2024, 11:00:35 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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
            <!--? slider Area Start-->
            <div class="slider-area position-relative">
                <div class="slider-active">
                    <!-- Single Slider -->
                    <div class="single-slider slider-height d-flex align-items-center">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-9 col-lg-9 col-md-10">
                                    <div class="hero__caption">
                                        <span data-animation="fadeInLeft" data-delay="0.1s">Hi This is  FITFUEL</span>
                                        <h1 data-animation="fadeInLeft" data-delay="0.4s">Gym Online</h1>
                                        <a href="shop.jsp" class="border-btn hero-btn" data-animation="fadeInLeft" data-delay="0.8s">Shop</a>
                                    </div>
                                </div>
                            </div>
                        </div>          
                    </div>
                </div>
            </div>
            <!-- slider Area End-->
            <!-- Traning categories Start -->
            <section class="traning-categories black-bg">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6">
                            <div class="single-topic text-center mb-30">
                                <div class="topic-img">
                                    <img src="assets/img/gallery/cat1.png" alt="">
                                    <div class="topic-content-box">
                                        <div class="topic-content">
                                            <h3>Personal traning</h3>
                                            <p>You’ll look at graphs and charts in Task One, how to approach the task and <br> the language needed for a successful answer.</p>
                                            <a href="courses.jsp" class="border-btn">View Courses</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="single-topic text-center mb-30">
                                <div class="topic-img">
                                    <img src="assets/img/gallery/cat2.png" alt="">
                                    <div class="topic-content-box">
                                        <div class="topic-content">
                                            <h3>Group traning</h3>
                                            <p>You’ll look at graphs and charts in Task One, how to approach the task and <br> the language needed for a successful answer.</p>
                                            <a href="courses.jsp" class="btn">View Courses</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Traning categories End-->
            <!--? Team -->
            <section class="team-area fix">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="section-tittle text-center mb-55 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                                <h2 >What I Offer</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-cat text-center mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s" >
                                <div class="cat-icon">
                                    <img src="assets/img/gallery/team1.png" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5><a href="services.jsp">Body Building</a></h5>
                                    <p>You’ll look at graphs and charts in Task One, how to approach the task </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-cat text-center mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                                <div class="cat-icon">
                                    <img src="assets/img/gallery/team2.png" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5><a href="services.jsp">Muscle Gain</a></h5>
                                    <p>You’ll look at graphs and charts in Task One, how to approach the task </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-cat text-center mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">
                                <div class="cat-icon">
                                    <img src="assets/img/gallery/team3.png" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5><a href="services.jsp">Weight Loss</a></h5>
                                    <p>You’ll look at graphs and charts in Task One, how to approach the task </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Services End -->
            <!--? Gallery Area Start -->
            <div class="gallery-area section-padding30 ">
                <div class="container-fluid ">
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                            <div class="box snake mb-30">
                                <div class="gallery-img big-img" style="background-image: url(assets/img/gallery/gallery1.png);"></div>
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <h3>Muscle gaining </h3>
                                        <a href="gallery.jsp"><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                            <div class="box snake mb-30">
                                <div class="gallery-img big-img" style="background-image: url(assets/img/gallery/gallery2.png);"></div>
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <h3>Muscle gaining </h3>
                                        <a href="gallery.jsp"><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                            <div class="box snake mb-30">
                                <div class="gallery-img big-img" style="background-image: url(assets/img/gallery/gallery3.png);"></div>
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <h3>Muscle gaining </h3>
                                        <a href="gallery.jsp"><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                            <div class="box snake mb-30">
                                <div class="gallery-img big-img" style="background-image: url(assets/img/gallery/gallery4.png);"></div>
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <h3>Muscle gaining </h3>
                                        <a href="gallery.jsp"><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                            <div class="box snake mb-30">
                                <div class="gallery-img big-img" style="background-image: url(assets/img/gallery/gallery5.png);"></div>
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <h3>Muscle gaining </h3>
                                        <a href="gallery.jsp"><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                            <div class="box snake mb-30">
                                <div class="gallery-img big-img" style="background-image: url(assets/img/gallery/gallery6.png);"></div>
                                <div class="overlay">
                                    <div class="overlay-content">
                                        <h3>Muscle gaining </h3>
                                        <a href="gallery.jsp"><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery Area End -->
            <!-- Courses area start -->
            <section class="pricing-area section-padding40 fix">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="section-tittle text-center mb-55 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                <h2>Pricing</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="properties mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
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

                                        <a href="#" class="border-btn border-btn2">Join Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="properties mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
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

                                        <a href="#" class="border-btn border-btn2">Join Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="properties mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">
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
                                        <a href="#" class="border-btn border-btn2">Join Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Courses area End -->
            <!--? About Area-2 Start -->
            <section class="about-area2 fix pb-padding pt-50 pb-80">
                <div class="support-wrapper align-items-center">
                    <div class="right-content2">
                        <!-- img -->
                        <div class="right-img wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                            <img src="assets/img/gallery/about.png" alt="">
                        </div>
                    </div>
                    <div class="left-content2">
                        <!-- section tittle -->
                        <div class="section-tittle2 mb-20 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="front-text">
                                <h2 class="">About Me</h2>
                                <p>You’ll look at graphs and charts in Task One, how to approach the task and the language needed 
                                    for a successful answer. You’ll examine Task Two questions and learn how to plan, write and 
                                    check academic essays.</p>
                                <p class="mb-40">Task One, how to approach the task and the language needed for a successful answer. You’ll 
                                    examine Task Two questions and learn how to plan, write and check academic essays.</p>
                                <a href="courses.jsp" class="border-btn">My Courses</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- About Area End -->
            <!--? Blog Area Start -->
            <section class="home-blog-area pt-10 pb-50">
                <div class="container">
                    <!-- Section Tittle -->
                    <div class="row justify-content-center">
                        <div class="col-lg-7 col-md-9 col-sm-10">
                            <div class="section-tittle text-center mb-100 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                <h2>From Blog</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/gallery/blog1.png" alt="">
                                    </div>
                                    <div class="blog-cap">
                                        <span>Gym & Fitness</span>
                                        <h3><a href="blog_details.jsp">Your Antibiotic One Day To 10 Day Options</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".6s">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/gallery/blog2.png" alt="">
                                    </div>
                                    <div class="blog-cap">
                                        <span>Gym & Fitness</span>
                                        <h3><a href="blog_details.jsp">Your Antibiotic One Day To 10 Day Options</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Blog Area End -->
            <!--? video_start -->
            <div class="video-area section-bg2 d-flex align-items-center"  data-background="assets/img/gallery/video-bg.png">
                <div class="container">
                    <div class="video-wrap position-relative">
                        <div class="video-icon" >
                            <a class="popup-video btn-icon" href="https://www.youtube.com/watch?v=kV3famkRaA4&list=RDkV3famkRaA4&start_radio=1"><i class="fas fa-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- video_end -->
            <!-- ? services-area -->
            <jsp:include page="header_footer/information.jsp"/>
        </main>
        <jsp:include page="header_footer/footer.jsp"/>

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
