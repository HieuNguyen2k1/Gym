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
        <title>Profile</title>
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
    <link href="assets/css/login.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body class="black-bg">
    <!-- ? Preloader Start -->
    <jsp:include page="header_footer/loadPage.jsp"/>
    <!-- Preloader Start -->
    <!--=========header==============-->
    <header>
    <!-- Header Start -->
    <div class="header-area header-transparent">
        <div class="main-header header-sticky">
            <div class="container-fluid">
                <div class="menu-wrapper d-flex align-items-center justify-content-between">
                    
                    <!-- Main-menu -->
                    <div class="main-menu f-right d-none d-lg-block">
                       
                            <ul id="navigation">
                                <li><a href="index.jsp"><img src="assets/img/logo/logo1.png" alt=""></a></li>
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="about.jsp">About</a></li>
                                <!--    <li><a href="#">Courses</a></li>-->
                                <li><a href="pricing.jsp">Pricing</a></li>
                                <li><a href="#">Shop</a></li>
                                <li><a href="blog.jsp">Blog</a>
                                    <ul class="submenu">
                                        <li><a href="blog.jsp">Blog</a></li>
                                        <li><a href="blog_details.jsp">Blog Details</a></li>
                                        <!--    <li><a href="#">Elements</a></li>-->
                                    </ul>
                                </li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </nav>
                    </div>       

                    <%
                        String role = (String) session.getAttribute("name");

                        if (role != null && role.equals("user")) {%>


                    <div class="main-menu f-right d-none d-lg-block">
                        <nav>
                            <ul id="navigations">
                                <li><a class="mess" href="#" >  </a></li>
                                <li><a class="cate" href="#" >  </a></li>
                                <li> <a class="users" href="#" ></a>
                                    <ul class="submenu">
                                        <li><a href="profile.jsp?type=edit">Edit Profile</a></li>
                                        <li><a href="profile.jsp?type=changePass">Change passworld</a></li>
                                        <li><a href="<%=request.getContextPath()%>/LoginControler">Logout</a></li>

                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <%}%>

                    <% if (role == null) {%>
                    <div class="header-btns d-none d-lg-block f-right">
                        <a href="register.jsp" class="btn">Register</a>
                        <a href="login.jsp" class="btn">Log in</a>
                    </div>
                    <%} else {%>

                    <%}%>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
    <!--=======================-->
    <% String type= request.getParameter("type");%>
<main>
    <!--? Hero Start -->
    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 pt-70">
                            <%if(type!=null && type.equals("edit") ){%>
                            <h2>Edit Profile</h2>
                            <%} else{%>
                            <h2>Change Password</h2>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
   <%if(type!=null && type.equals("edit") ){%>
    <div class="header">
                <div class="header-main"  style="padding-top: 5px;">
                    <h1 style="padding-bottom: 5px;"></h1>

                    <div  class="image-container">
                        <a class="image-user"> <img src="assets/img/login/avata.jpg" /></a>
                    </div>

                    <div class="header-bottom">
                        <div class="header-right w3agile">
                            <div class="header-left-bottom agileinfo">
                                <form action="#" method="post">
                                    <input
                                        type="text"
                                        value="User name"
                                        name="name"
                                        onfocus="this.value = '';"
                                        onblur="if (this.value == '') {
                                                this.value = 'User name';
                                            }"
                                        />
                                    <input class="email"
                                        type="text"
                                        value="Email"
                                        name="email"
                                        onfocus="this.value = '';"
                                        onblur="if (this.value == '') {
                                                this.value = 'password';
                                            }"
                                        />
                                    <div class="row2"style="display: flex; align-items: center; ">
                                        <input 
                                            type="date"
                                            value="Date of birth"
                                            name="date"
                                            onfocus="this.value = '';"
                                            onblur="if (this.value == '') {
                                                    this.value = 'User name';
                                                }"
                                            />

                                        <div tyle="  text-align: end; display: flex; justify-content: end;">
                                            <label style="margin-left:20px;">
                                                <input type="radio" name="gender" value="male" checked />
                                                Male
                                            </label>
                                            <label>
                                                <input type="radio" name="gender" value="female" />
                                                Female
                                            </label>
                                            <label>
                                                <input type="radio" name="gender" value="other" />
                                                Other
                                            </label>
                                        </div>
                                    </div>
                                    <input class="add" style="padding-top: 20px"
                                           type="text"
                                           value="Address"
                                           name="address"
                                           onfocus="this.value = '';"
                                           onblur="if (this.value == '') {
                                                   this.value = 'User name';
                                               }"
                                           />

                                    <input class="phone"
                                        type="text"
                                        value="Phone Number"
                                        name="phone"
                                        onfocus="this.value = '';"
                                        onblur="if (this.value == '') {
                                                this.value = 'password';
                                            }"
                                        />


                                    <div class="submit">
                                    <input  type="submit" value="Update" />
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
<%} else{%>
 <div class="header">
                <div class="header-main"  style="padding-top: 5px;">
                    <h1 style="padding-bottom: 5px;"></h1>

                    <div  class="image-container">
                        <a class="image-user"> <img src="assets/img/login/avata.jpg" /></a>
                    </div>

                    <div class="header-bottom">
                        <div class="header-right w3agile">
                            <div class="header-left-bottom agileinfo">
                                <form action="#" method="post">
                                    
                                    <input
                                        type="password"
                                        value="old-password"
                                        name="oldPassword"
                                        onfocus="this.value = '';"
                                        onblur="if (this.value == '') {
                                          this.value = 'password';}"
                                        />
                                    <input
                                        type="password"
                                        value="new-password"
                                        name="newPassword"
                                        onfocus="this.value = '';"
                                        onblur="if (this.value == '') {
                                          this.value = 'password';}"
                                        />
                                     <input
                                        type="password"
                                        value="RePassword"
                                        name="rePassword"
                                        onfocus="this.value = '';"
                                        onblur="if (this.value == '') {
                                          this.value = 'password';}"
                                        />


                                    <div class="submit">
                                    <input  type="submit" value="Update" />
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
<%}%>
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
 <script src="assets/js/login.js"></script>
<!-- Jquery Plugins, main Jquery -->	
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/main.js"></script>
    </body>
</html>



