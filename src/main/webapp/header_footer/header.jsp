

<header>
    <!-- Header Start -->
    <div class="header-area header-transparent">
        <div class="main-header header-sticky">
            <div class="container-fluid">
                <div class="menu-wrapper d-flex align-items-center justify-content-between">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="index.jsp"><img src="assets/img/logo/logo1.png" alt=""></a>
                    </div>
                    <!-- Main-menu -->
                    <div class="main-menu f-right d-none d-lg-block">
                        <nav>
                            <ul id="navigation">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="about.jsp">About</a></li>
                                <!--    <li><a href="#">Courses</a></li>-->
                                <li><a href="pricing.jsp">Pricing</a></li>
                                <li><a href="shop.jsp">Shop</a></li>
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

                        if (role != null && (role.equals("user") || role.equals("admin"))) {%>


                    <div class="main-menu f-right d-none d-lg-block">
                        <nav>
                            <ul id="navigations">
                                <li><a class="mess" href="#" >  </a></li>
                                <li><a class="cate" href="category.jsp" >  </a></li>
                                <li> <a class="users" href="#" ></a>
                                    <ul class="submenu">
                                        <%if (role != null && role.equals("admin")) {%>
                                        <li><a href="profile.jsp?type=edit">Manager</a>
                                            <ul class="submenu positionSubmenu">
                                                <li><a  href="#" >  Manager User</a></li>
                                                <li><a  href="#" >  Manager Blog</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="chart.jsp">Chart</a></li>
                                            <%}%>
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


<!--


<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
 Jquery, Popper, Bootstrap 
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
 Jquery Mobile Menu 
<script src="./assets/js/jquery.slicknav.min.js"></script>

 Jquery Slick , Owl-Carousel Plugins 
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
 One Page, Animated-HeadLin 
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

 Date Picker 
<script src="./assets/js/gijgo.min.js"></script>
 Nice-select, sticky 
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>

 counter , waypoint,Hover Direction 
<script src="./assets/js/jquery.counterup.min.js"></script>
<script src="./assets/js/waypoints.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/hover-direction-snake.min.js"></script>

 contact js 
<script src="./assets/js/contact.js"></script>
<script src="./assets/js/jquery.form.js"></script>
<script src="./assets/js/jquery.validate.min.js"></script>
<script src="./assets/js/mail-script.js"></script>
<script src="./assets/js/jquery.ajaxchimp.min.js"></script>-->
