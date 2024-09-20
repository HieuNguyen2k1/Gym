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
        <title>Manager</title>
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
                                    <h2>Manager</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->
            <!--? Team -->
            <section class="team-area pt-80">
                <div class="container">
                    <div class="">
                        <div class="btnTableManager">
                            <a href="manage.jsp?type=user" class="btn">Manage User</a> 
                            <a href="manage.jsp?type=blog" class="btn">Manage Blog    </a> 
                            <a href="manage.jsp?type=product" class="btn">Manage Product</a> 
                        </div>
                        <div class="">
                            <% String type = request.getParameter("type");
                                if (type != null && type.equals("user")) { %>
                            <div >
                                <h1  style="color: white; text-align: center; margin-top: 30px;"> Manage User</h1>
                                <div class="schedules">
                                    <table class="tableUser table-striped table-bordered table-hover table-responsive">
                                        <thead class="table-head">
                                            <tr>
                                                <th>STT</th>
                                                <th>User Name</th>
                                                <th>Address</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th class="action">action</th>
                                            </tr>
                                        </thead>
                                        <tbody class="table-body">
                                            <tr>
                                                <td>1</td>
                                                <td>Nguyen Van A</td>
                                                <td>Son Tra - Tp Da Nang</td>
                                                <td>A@gmail.com</td>
                                                <td>0123456789</td>
                                                <td >
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Nguyen Van B</td>
                                                <td>Ngu Hanh Son - Tp Da Nang</td>
                                                <td>B@gmail.com</td>
                                                <td>0905123456</td>
                                                <td>
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Nguyen Van C</td>
                                                <td>Cam Le - Tp Da Nang</td>
                                                <td>C@gmail.com</td>
                                                <td>012289898</td>
                                                <td>
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <%} else if (type != null && type.equals("blog")) {%>
                            <div>
                                <h1 style="color: yellow; text-align: center; margin-top: 30px;"> Manage Blog</h1>
                                <div class="schedules">
                                    <table class="tableUser table-striped table-bordered table-hover table-responsive">
                                        <thead class="table-head">
                                            <tr>
                                                <th>STT</th>
                                                <th>User Name Post</th>
                                                <th>Header</th>
                                                <th>Content</th>
                                                <th>Time</th>
                                                <th class="action">action</th>
                                            </tr>
                                        </thead>
                                        <tbody class="table-body">
                                            <tr>
                                                <td>1</td>
                                                <td>Nguyen Van A</td>
                                                <td>Son Tra - Tp Da Nang</td>
                                                <td>A@gmail.com</td>
                                                <td>26-6-2024</td>
                                                <td >
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Nguyen Van B</td>
                                                <td>Ngu Hanh Son - Tp Da Nang</td>
                                                <td>B@gmail.com</td>
                                                <td>26-6-2024</td>
                                                <td>
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Nguyen Van C</td>
                                                <td>Cam Le - Tp Da Nang</td>
                                                <td>C@gmail.com</td>
                                                <td>26-6-2024</td>
                                                <td>
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <%} else if (type != null && type.equals("product")) {%>
                            <div>
                                <h1 style="color: greenyellow; text-align: center; margin-top: 30px;"> Manage Product</h1>
                                <div class="schedules">
                                    <table class="tableUser table-striped table-bordered table-hover table-responsive">
                                        <thead class="table-head">
                                            <tr>
                                                <th>STT</th>
                                                <th>Product Name</th>
                                                <th>Count</th>
                                                <th>Price</th>
                                                <th>Time</th>
                                                <th class="action">action</th>
                                            </tr>
                                        </thead>
                                        <tbody class="table-body">
                                            <tr>
                                                <td>1</td>
                                                <td>Orgain Organic Protein & Probiotics</td>
                                                <td>6</td>
                                                <td>1.150.000đ</td>
                                                <td>26-6-2024</td>
                                                <td >
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Pre-Workout Black Blood NOX</td>
                                                <td>7</td>
                                                <td>700.000đ</td>
                                                <td>26-6-2024</td>
                                                <td>
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Rule1 Protein</td>
                                                <td>5</td>
                                                <td>1.590.000</td>
                                                <td>26-6-2024</td>
                                                <td>
                                                    <div class="btnUser">
                                                        <a href="#" class="btn">Create</a>
                                                        <a href="#" class="btn">Edit</a>
                                                        <a href="#" class="btn">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <%} else{%>
                            <div style="margin-bottom: 500px;">
                                
                            </div>
                            <%}%>
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
