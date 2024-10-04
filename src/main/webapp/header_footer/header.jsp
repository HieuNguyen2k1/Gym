

<header>
    <style>
        .tab-container {
            background: #950101;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 300px;
            height: 300px;
            position: fixed;
            top: 120px;
            right: 2%;
            z-index: 1000;
            display: none;
        }
        .tabs {
            display: flex;
            cursor: pointer;
            border-bottom: 1px solid #ccc;
        }
        .tab {
            padding: 10px 20px;
            flex: 1;
            text-align: center;
            background: #f9f9f9;
            transition: background 0.3s;
        }
        .content1:hover {
            background: #e9e9e9;
        }
        .content2:hover {
            background: #e9e9e9;
        }
        .content3:hover {
            background: #e9e9e9;
        }
            
        .actives {
            background: #950101;
            color: white;
            font-weight: bold;
            font-size: 20px;
        }
        .tab-content {
            padding: 10px;
            display: none;
        }
        .tab-content.active {
            display: block;
        }
        .contact-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .contact-list li {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
        .contact-list li:last-child {
            border-bottom: none;
        }
        .contact-name{
            width: 100%;
            height: 100%;
            margin: 0;
            padding-top: 5px;
            color: white;
            background-color: #950101;
        }
        .avt-mes {

            overflow: hidden; /* ?n ph?n ?nh v??t quá kích th??c */
            border-radius: 50%;/* N?u b?n mu?n ?nh thành hình tròn */
            margin: 0 10px ;
            padding: 0px;
        }
        .avt-mes img {
            padding: 0;
            width: 100%; /* ??t chi?u r?ng ?nh b?ng 100% chi?u r?ng c?a ph?n t? cha */
            height: 100%; /* ??t chi?u cao ?nh b?ng 100% chi?u cao c?a ph?n t? cha */
            object-fit: cover; /* ??m b?o ?nh ???c c?t và phù h?p v?i kích th??c */
        }
        /* //============================= */
        .chat-container {
            width: 300px;
            max-width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
            background: white;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: none; /* ?n box chat ban ??u */
            position: fixed;
            bottom: 0;
            right: 2px;
            z-index: 1000;
        }
        .chat-box {
            height: 300px;
            overflow-y: auto;
            padding: 10px;
        }
        .message {
            margin: 10px 0;
        }
        .message.user {
            text-align: right;
        }
        .input-container {
            display: flex;
            border-top: 1px solid #ccc;
            padding: 10px;
        }
        .input-container input {
            flex: 1;
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin-right: 5px;
        }
        .input-container button {
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #950101;
            color: white;
            cursor: pointer;
        }
        .input-container button:hover {
            background-color: #0056b3;
        }
        /* ======================= */
        .chat-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #950101;
            color: white;
            padding: 5px 10px;
        }

        .close-chat {
            cursor: pointer;
            font-size: 20px;
        }
        .call-icon {
            cursor: pointer;
            width: 24px; /* ??t kích th??c cho bi?u t??ng */
            height: auto; /* Gi? t? l? chi?u cao */
            margin-left: 10px; /* Kho?ng cách gi?a nút ?óng và bi?u t??ng g?i */
        }
        /* ======================================= */
        .call-modal {
            display: none; /* ?n modal m?c ??nh */
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7); /* N?n t?i */
        }

        .modal-content {
            position: relative;
            margin: 15% auto;
            padding: 20px;
            background: white;
            border-radius: 5px;
            width: 80%;
            max-width: 500px;
            text-align: center;
        }

        .close-modal {
            position: absolute;
            top: 10px;
            right: 15px;
            cursor: pointer;
            font-size: 20px;
        }

        video {
            width: 100%;
            height: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
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

                        if (role != null && (role.equals("user") || role.equals("admin") || role.equals("pt"))) {%>


                    <div class="main-menu f-right d-none d-lg-block">
                        <nav>
                            <ul id="navigations">
                                <li><a class="mess" href="#" >  </a>

                                </li>
                                <li><a class="cate" href="category.jsp" >  </a></li>
                                <li> <a class="users" href="#" ></a>
                                    <ul class="submenu">
                                        <%if (role != null && role.equals("admin")) {%>
                                        <li><a href="manage.jsp">Manager</a></li>
                                        <li><a href="chart.jsp">Chart</a></li>
                                            <%}%>
                                        <li><a href="schedulePT.jsp">Schedule</a></li>
                                        <li><a href="profile.jsp?type=edit">Edit Profile</a></li>
                                        <li><a href="profile.jsp?type=changePass">Change passworld</a></li>
                                        <%if (role.equals("user")) {%>
                                         <li><a href="JoinCourse.jsp">Join</a></li>
                                            <%}%>
                                        <li><a href="CallVideo.jsp">Call</a></li>
                                        
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
    <!------------------- Modal Box Mess ----------------------->
    <div class="tab-container">
        <div class="">
            <div class="tab actives">Ban Be</div>
        </div>
        <div class="tab-content active" id="content1">
            <div class="row mt-2 content1">
                <div class="avt-mes col-2">
                    <img
                        src="https://cellphones.com.vn/sforum/wp-content/uploads/2023/10/avatar-trang-4.jpg"
                        alt=""
                        />
                </div>
                <div class="col-8 p-1">
                    <p class="contact-name" data-name="Nguyen Van A"
                       >Nguyen Van A</p
                    >
                </div>
            </div>
            <div class="row mt-2 content2">
                <div class="avt-mes col-2">
                    <img
                        src="https://cellphones.com.vn/sforum/wp-content/uploads/2023/10/avatar-trang-4.jpg"
                        alt=""
                        />
                </div>
                <div class="col-8 p-1">
                    <p  class="contact-name" data-name="Nguyen Van B"
                        >Nguyen Van B</p
                    >
                </div>
            </div>
            <div class="row mt-2 content3">
                <div class="avt-mes col-2">
                    <img
                        src="https://cellphones.com.vn/sforum/wp-content/uploads/2023/10/avatar-trang-4.jpg"
                        alt=""
                        />
                </div>
                <div class="col-8 p-1">
                    <p class="contact-name" data-name="Nguyen Van C"
                       >Nguyen Van C</p
                    >
                </div>
            </div>
        </div>
    </div>
    <!------------------ Chat Box ------------------------>
    <div class="chat-container">
        <div class="chat-header">
            <span class="close-chat" id="closeChat">&times;</span>
            <img
                src="https://www.pngguru.in/storage/uploads/images/Phone%20icon%20free%20png_1645769458_1486939257.webp"
                alt="G?i"
                class="call-icon"
                id="callIcon"
                />
        </div>
        <div class="chat-box" id="chatBox"></div>
        <div class="input-container">
            <input type="text" id="messageInput" placeholder="Nhap tin nhan..." />
            <button id="sendButton">Gui</button>
        </div>
    </div>
    <!---------------- Video Call--------------------->
    <div class="call-modal" id="callModal">
        <div class="modal-content">
            <span class="close-modal" id="closeModal">&times;</span>
            <h2>Calling...</h2>
            <video id="videoCall" autoplay></video>
        </div>
    </div>


</header>

<script>
    const chatBox = document.getElementById("chatBox");
    const messageInput = document.getElementById("messageInput");
    const sendButton = document.getElementById("sendButton");
    const chatContainer = document.querySelector(".chat-container");
    const tabContainer = document.querySelector(".tab-container");
    const mess = document.querySelector(".mess");
    const closeChatButton = document.getElementById("closeChat");

    mess.addEventListener("click", (e) => {
        e.stopPropagation();
        if (tabContainer.style.display === "block") {
            tabContainer.style.display = "none"; // ?n tabContainer
        } else {
            tabContainer.style.display = "block"; // Hi?n tabContainer
        }
    });
    document.addEventListener("click", (e) => {

        if (!tabContainer.contains(e.target) && !mess.contains(e.target)) {
            tabContainer.style.display = "none"; // ?n tabContainer
        }
    });
    window.addEventListener("scroll", () => {
        tabContainer.style.display = "none"; // ?n tabContainer khi l?n chu?t
    });

    document.querySelectorAll(".contact-name").forEach((contact) => {
        contact.addEventListener("click", (e) => {
            e.preventDefault();
            chatContainer.style.display = "block";
            tabContainer.style.display = "none";
            const contactName = e.target.getAttribute("data-name");
            console.log(`Chat v?i: ${contactName}`);
        });
    });

    sendButton.addEventListener("click", () => {
        const messageText = messageInput.value;
        if (messageText.trim() !== "") {
            const messageElement = document.createElement("div");
            messageElement.classList.add("message", "user");
            messageElement.textContent = messageText;
            chatBox.appendChild(messageElement);
            messageInput.value = "";
            chatBox.scrollTop = chatBox.scrollHeight; // Cu?n xu?ng cu?i
        }
    });

    messageInput.addEventListener("keypress", (e) => {
        if (e.key === "Enter") {
            sendButton.click();
        }
    });
    // ============================
    closeChatButton.addEventListener("click", () => {
        chatContainer.style.display = "none"; // ?n box chat
    });
    //==================================
    const callIcon = document.getElementById("callIcon");
    const callModal = document.getElementById("callModal");
    const closeModalButton = document.getElementById("closeModal");
    const videoCall = document.getElementById("videoCall");

    // Khi nh?p vào bi?u t??ng g?i
    callIcon.addEventListener("click", async () => {
        callModal.style.display = "block"; // Hi?n modal
        try {
            const stream = await navigator.mediaDevices.getUserMedia({
                video: true,
            });
            videoCall.srcObject = stream; // Hi?n th? video t? camera
        } catch (error) {
            console.error("L?i truy c?p camera: ", error);
        }
    });

    // Khi nh?p vào nút ?óng modal
    closeModalButton.addEventListener("click", () => {
        callModal.style.display = "none"; // ?n modal
        videoCall.srcObject.getTracks().forEach((track) => track.stop()); // D?ng video
    });
</script>

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
