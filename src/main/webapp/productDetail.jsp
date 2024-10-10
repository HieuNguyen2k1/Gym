<%-- 
    Document   : about
    Created on : Jun 25, 2024, 7:38:36 AM
    Author     : HP
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product detail</title>
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
        <style>
            .quantity-control {
                display: flex;
                align-items: center;
            }

            .quantity-input {
                width: 50px;
                text-align: center;
                margin: 0 10px;
            }

            .btn-minus, .btn-plus {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 5px 10px;
                cursor: pointer;
                text-decoration: none;
            }

            .btn-minus:hover, .btn-plus:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body class="black-bg">
        <!-- ? Preloader Start -->
        <jsp:include page="header_footer/loadPage.jsp"/>
        <!-- Preloader Start -->
        <!--=========header==============-->
        <jsp:include page="header_footer/header.jsp"/>
        <!--=======================-->
        <main>
            <%
                Product product = (Product) request.getAttribute("product");
            %>
            <!--? Hero Start -->
            <div class="slider-area2">
                <div class="slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap hero-cap2 pt-70">
                                    <h2>Product Detail</h2>
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
                    <div class="">
                        

                        <div class="productDetailParent">
                            <div class="single-cat text-center mb-30 wow fadeInUp row" data-wow-duration="1s" data-wow-delay=".6s">
                                <div class="cat-icon imgProduct col-md-6">
                                    <img src="assets/img/shop/2.png" alt="">
                                </div>

                                <div class="col-md-4">
                                    <form method="post" action="ProductDetail">
                                        <div class="productDetail cat-cap ">
                                            <input type="hidden" name="proId" value="<%=product.getId()%>">
                                            <h5><a href="#"><%=product.getProName()%></a></h5>
                                            <p>
                                                <%=product.getDescribe()%>
                                            </p>

                                            <%
                                                double price = product.getPrice() * 1000;
                                                DecimalFormat df = new DecimalFormat("#,###");
                                                String formattedPrice = df.format(price);
                                                formattedPrice = formattedPrice.replace(",", " ");
                                            %>

                                            <p>Giá: <%=formattedPrice%> đ</p>
                                        </div>
                                        <div class="quantity-control">

                                            <a href="#" class="btn-minus" role="button" tabindex="0" aria-label="Decrease quantity">-</a>
                                            <input type="number" name="quantity" class="quantity-input" value="1" min="1" aria-label="Quantity">
                                            <a href="#" class="btn-plus" role="button" tabindex="0" aria-label="Increase quantity">+</a> 
                                        </div>
                                        <div class="btnAdd ">

                                            <button type="submit" style="background-color: transparent; border: 0;" ><a class="btn" >Add to cart</a></button>

                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Services End -->
            <script>
                document.querySelector('.btn-minus').addEventListener('click', function (event) {
                    event.preventDefault();
                    const input = document.querySelector('.quantity-input');
                    let value = parseInt(input.value);
                    if (value > 1) {
                        input.value = value - 1;
                    }
                });

                document.querySelector('.btn-plus').addEventListener('click', function (event) {
                    event.preventDefault();
                    const input = document.querySelector('.quantity-input');
                    let value = parseInt(input.value);
                    input.value = value + 1;
                });


                document.querySelectorAll('.quantity-control a[role="button"]').forEach(button => {
                    button.addEventListener('keydown', function (event) {
                        if (event.key === 'Enter' || event.key === ' ') {
                            event.preventDefault();
                            this.click();
                        }
                    });
                });
            </script>

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
