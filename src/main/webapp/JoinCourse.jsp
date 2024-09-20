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
        <title>Kế Hoạch</title>
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
      canvas {
        max-width: 90%;
        margin: auto;
        height: 500px;
      }
      section {
        padding-bottom: 0px !important;
        margin: auto;
        height: 1000px !important;
        margin-top: 80px;
      }
      .plan {
          display: none;
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
            <!--? Hero Start -->
            <div class="slider-area2">
                <div class="slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap hero-cap2 pt-70">
                                    <h2>Plan</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero End -->
            <!--? Team -->
            <section class="team-area ">
                <div class="row Content" style="position: relative ; ">
                    <div
                        class="col-lg-7"
                        style="
                        background-color: black;
                        height: 100px;
                        position: absolute;
                        left: 3%;
                        top: 50px;

                        "
                        >
                        <div class="widths" >
                            <h1 style="text-align: center">Kế hoạch tập luyện</h1>

                            <div  class="header-btns btn-start start" style=" margin-top: 50px; display: flex; justify-content: center;">
                                <a 
                                    href="#"
                                    class="btn"
                                    style="color: white; text-decoration: none"
                                    >Start</a
                                >
                            </div>

                            <div class="plan ">
                                <div class="row">
                                    <div class="col-lg-6"> 

                                        <h1>Day 1</h1>
                                        <p> - Đẩy tạ trên ghế: 4 hiệp x 8 - 10 lần.</br>
                                            - Gập người kéo tạ đòn: 4 hiệp x 8 - 10 lần.</br>
                                            - Đẩy tạ đòn qua đầu: 3 hiệp x 10 - 12 lần.</br>
                                            - Bài tập bắp tay: 3 hiệp x 10 - 12 lần.</br>
                                            - Bài tập cơ tam đầu: 3 hiệp x 10 - 12 lần.
                                        </p>

                                    </div>
                                    <div class="col-lg-6">
                                        <iframe
                                            width="400"
                                            height="300"
                                            src="https://www.youtube.com/embed/v=yzAO8ozWfCQ&pp=ygUqY8OhY2ggaMOtdCDEkeG6pXQgY2hvIG5nxrDhu51pIG3hu5tpIHThuq1w"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen
                                            style="margin-top: 20px;"
                                            ></iframe>
                                    </div>
                                </div>
                                <div> 
                                    <div>
                                        <h1>Day 2</h1>
                                        <p> 
                                            - Squat: 4 hiệp x 8 - 10 lần.</br>
                                            - Deadlift (nâng thanh tạ): 4 hiệp x 8 - 10 lần.</br>
                                            - Lunges (bước tới và gập gối): 3 hiệp x 10 - 12 lần mỗi chân.</br>
                                            - Bài tập đùi: 3 hiệp x 10 - 12 lần.</br>
                                            - Nâng bắp chân: 3 hiệp x 12 - 15 lần.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div
                        class="col-lg-4"
                        style="
                        background-color: black;
                        height: 400px;
                        position: absolute;
                        right: 3%;
                        top: 50px;
                        "
                        >
                        <div class="widths">
                            <h1>Theo dõi cân nặng các tuần trong tháng</h1>
                            <canvas id="weightChart"></canvas>
                            <div class="header-btns" style=" margin-top: 5px; display: flex; justify-content: center;">
                                <a
                                    href="#"
                                    class="btn"
                                    style="color: white; text-decoration: none"
                                    >Add Data</a
                                >
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
 <script>
      $(document).ready(function () {
        // Dữ liệu giả định
        const data = [
          { week: "Tuần 1", weight: 70 },
          { week: "Tuần 2", weight: 65 },
          { week: "Tuần 3", weight: 70.5 },
          { week: "Tuần 4", weight: 65 },
          { week: "Tuần 5", weight: 69.5 },
        ];

        const labels = data.map((item) => item.week);
        const weights = data.map((item) => item.weight);

        const ctx = document.getElementById("weightChart").getContext("2d");
        const weightChart = new Chart(ctx, {
          type: "line", // Loại biểu đồ
          data: {
            labels: labels,
            datasets: [
              {
                label: "Cân nặng (kg)",
                data: weights,
                backgroundColor: "rgba(75, 192, 192, 0.2)",
                borderColor: "rgba(75, 192, 192, 1)",
                borderWidth: 2,
                fill: true,
              },
            ],
          },
          options: {
            scales: {
              y: {
                beginAtZero: true,
                title: {
                  display: true,
                  text: "Cân nặng (kg)",
                },
              },
              x: {
                title: {
                  display: true,
                  text: "",
                },
              },
            },
          },
        });
        
        
      });
      var start = document.querySelector(".start");
      var plan = document.querySelector(".plan");
      start.addEventListener("click",()=>{
          start.style.display = "none";
          plan.style.display = "block";
      });
    </script>
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
