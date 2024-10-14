<%-- 
    Document   : about
    Created on : Jun 25, 2024, 7:38:36 AM
    Author     : HP
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.Product"%>
<%@page import="Model.OrderDetail"%>
<%@page import="Model.Order"%>
<%@page import="java.util.List"%>
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
                        <%
                            List<Order> orders = (List<Order>) request.getAttribute("orders");
                            List<OrderDetail> orderDetails = (List<OrderDetail>) request.getAttribute("orderDetails");
                            List<Product> products = (List<Product>) request.getAttribute("products");

                            if (orders != null) {
                        %>

                        <div class="Cart">
                            <form method="post" action="PaymentController">
                                <div class="row">
                                    <div class="col-sm-9">
                                        <% for (Order order : orders) {
                                        %>

                                        <div class="single-cat text-center mb-30 wow fadeInUp " data-wow-duration="1s" data-wow-delay="0.4s">
                                            <div class="row">
                                                <!--=========================================-->
                                                <div class="col-sm-1" >  
                                                    <input style="transform: scale(2); "  name="SelectOrder" type="checkBox" value="<%=order.getId()%>" onchange="updateTotalPrice()">
                                                </div>
                                                <!--=========================================-->
                                                <div class="cat-icon  col-sm-2" style="width: 100%; height: 100%;overflow: hidden; ">
                                                    <img src="assets/img/shop/2.png" alt="" style="width: 100%; height: 100%;object-fit: cover;">
                                                </div>
                                                <% for (OrderDetail orderDetail : orderDetails) {

                                                        if (order.getId() == orderDetail.getOrderId()) {
                                                %>
                                                <% for (Product product : products) {

                                                        if (orderDetail.getProId() == product.getId()) {
                                                %>
                                                <div class="productDetail cat-cap col-sm-5" style="display: flex;justify-content: center;  align-items: center;  ">

                                                    <h5 ><a href="services.jsp" ><%=product.getProName()%></a></h5>



                                                </div>
                                                <%
                                                    double price = product.getPrice() * 1000;
                                                    DecimalFormat df = new DecimalFormat("#,###");
                                                    String formattedPrice = df.format(price);
                                                    formattedPrice = formattedPrice.replace(",", " ");
                                                %>
                                                <div class="col-sm-1" style="display: flex;justify-content: center;  align-items: center;  ">
                                                    <p href="#" style="color: white; font-size: 25px;"><%=formattedPrice%></p>
                                                </div>
                                                <%}
                                                    }%>
                                                <!--=========================================-->

                                                <div class="col-sm-1" style="display: flex;justify-content: center;  align-items: center;  ">
                                                    <p style="color: white !important; font-size: 30px;"><%=orderDetail.getQuantity()%></p>
                                                </div>
                                                <!--=========================================-->
                                                <div class="col-sm-2"style="display: flex;justify-content: center;  align-items: center;  ">
<!--                                                    <p style="color: white !important; font-size: 30px;">nhập mã discount discount nếu có</p>-->

                                                    <%
                                                        double price = order.getTotalPrice() * 1000;
                                                        DecimalFormat df = new DecimalFormat("#,###");
                                                        String formattedPrice = df.format(price);
                                                        formattedPrice = formattedPrice.replace(",", " ");
                                                    %>

                                                    <p style="color: white !important; font-size: 30px;"><%=formattedPrice%></p>
                                                </div>
                                                <%}
                                                    }%>
                                            </div>


                                        </div>
                                        <%} %>
                                    </div>
                                    <div class="btnAdd col-sm-3" style="text-align: center;">
                                        <div >
                                            <input id="totalAmount" style="color: white; text-align: center; font-size: 30px; background-color: transparent; border: 0;" value="Total: 0 đ" readonly>
                                        </div>
                                        <button class="btn mt-5"type="submit" >Thanh toán</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <%}%>
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

        <script>
                                                        function updateTotalPrice() {
                                                            const checkboxes = document.querySelectorAll('input[name="SelectOrder"]:checked');
                                                            let total = 0;

                                                            checkboxes.forEach(checkbox => {
                                                                const orderId = checkbox.value;

                                                                // Lấy giá trị tổng từ các đơn hàng dựa trên orderId
                                                                // Bạn cần đảm bảo rằng bạn có thể lấy giá trị này từ đâu đó, ví dụ:
            <% for (Order order : orders) {%>
                                                                if (orderId == '<%= order.getId()%>') {
                                                                    total += <%= order.getTotalPrice() * 1000%>; // Giả sử bạn muốn tính giá trị nhân với 1000
                                                                }
            <% }%>
                                                            });
                                                            // Cập nhật tổng giá trị vào phần tử HTML
                                                            document.getElementById('totalAmount').value = 'Total : ' + total + ' đ';
                                                        }
        </script>
    </body>
</html>
