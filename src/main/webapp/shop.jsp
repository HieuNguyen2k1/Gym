<%-- 
    Document   : about
    Created on : Jun 25, 2024, 7:38:36 AM
    Author     : HP
--%>

<%@page import="Model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Model.Product" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
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
                                    <h2>Shop</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->
            <!--? Team -->
            <section class="team-area pt-80">
                <div class=" row">

                    <div class=" col-md-3">
                        <div class="sort" style="padding-left: 90px;">
                            <div class="categories"> 
                                <div>
                                    <h2 style="color:white; font-size: 40px;">Search</h2>
                                </div>
                                <%

                                    List<Category> cateList = (List<Category>) session.getAttribute("cateList");
                                    if (cateList != null) {

                                        for (Category cate : cateList) {
                                %>

                                <div style="color:white; font-size: 30px;"> 
                                    <a href="${pageContext.request.contextPath}/ProductController?cateId=<%= cate.getId()%>"> <input type="radio" > <%= cate.getCateName()%></a>
                                </div>

                                <%}
                                }%>
                                 <div style="color:white; font-size: 30px;"> 
                                    <a href="${pageContext.request.contextPath}/ProductController"> <input type="radio"> all</a>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-9">

                        <div class="products row " style="display: flex;">
                            <%

                                List<Product> productList = (List<Product>) session.getAttribute("productList");
                                if (productList != null) {

                                    for (Product product : productList) {
                            %>
                            <div  class="shopParent col-md-4">
                                <div class="  single-cat text-center mb-30 wow fadeInUp " data-wow-duration="1s" data-wow-delay=".2s" >

                                    <div class="cat-icon shops ">
                                        <img class="" src="assets/img/shop/2.png" alt="">
                                    </div>
                                    <div class="productContent cat-cap ">
                                        <h6><a href="#"><%= product.getProName()%> </a></h6>

                                        <%
                                            double price = product.getPrice() * 1000;
                                            DecimalFormat df = new DecimalFormat("#,###");
                                            String formattedPrice = df.format(price);
                                            formattedPrice = formattedPrice.replace(",", " ");
                                        %>
                                        <p>
                                            <%=formattedPrice%> 
                                        </p>
                                        
                                    </div>
                                    <div class="btnDetail ">
                                        <a class="btn" href="${pageContext.request.contextPath}/ProductDetail?productid=<%=product.getId()%>">More detail</a>
                                    </div>

                                </div>
                            </div>
                            <%}
                                }%>
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
