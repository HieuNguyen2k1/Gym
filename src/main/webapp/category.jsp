<%-- 
    Document   : about
    Created on : Jun 25, 2024, 7:38:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>
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
            <!--? Hero Start -->
            <div class="slider-area2">
                <div class="slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap hero-cap2 pt-70">
                                    <h2>Category</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->
            <!--? Team -->
            <section class="team-area pt-80">
                <div class="container2">
                    <div style="margin: 50px;">
                        <% String productid = request.getParameter("productid");
                            String extend = ".png";
                            if (productid != null && productid.equals("4")) {
                                extend = ".jpg";
                            }
                        %>

                        <div class="Cart">
                            <div class="single-cat text-center mb-30 wow fadeInUp " data-wow-duration="1s" data-wow-delay=".6s">

                                <% if (productid != null) {%>
                                <div class="row">
                                    <div class="cat-icon imgProduct col-sm-4">
                                        <img src="assets/img/shop/<%=productid + extend%>" alt="">
                                    </div>
                                    <div class="productDetail cat-cap col-sm-4">
                                        <h5><a href="services.jsp">Detail Product</a></h5>
                                        <p>Cung cấp một bữa ăn phụ với dinh dưỡng đầy đủ và 100% organic.Phát triển cơ bắp, chống dị hóa, đẩy nhanh tốc độ phục hồi và tăng trưởng cơ.
                                            Kiểm soát cân nặng hiệu quả đối với những người đang thực hiện chế độ ăn kiêng, phù hợp với người ăn chay và ăn KETO.Dễ tiêu hóa, hạn chế nóng trong nổi mụn so với các loại whey protein.
                                        </p>
                                    </div>
                                    <div class="col-sm-4" >
                                        <p style="color: white !important; font-size: 30px;">Giá: 1.150.000đ</p>
                                    </div>
                                </div>
                                <div class="" >
                                    <p style="color: white !important; font-size: 30px;">Total 1.150.000đ</p>
                                </div>
                                <div class="btnAdd ">
                                    <a class="btn" href="#">Thanh toán</a>
                                </div>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Services End -->
            
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
