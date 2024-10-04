<%-- 
    Document   : RoomMeet
    Created on : Sep 20, 2024, 6:37:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
            />
        <style>
            body {
                display: flex;
                flex-direction: column;
                height: 100vh;
                background-color: #f5f5f5;
                font-family: Arial, sans-serif;
                margin: 0;
                border: 1 solid rgb(123, 119, 119);
            }

            .header {
                background-color: #4285f4;
                color: white;
                padding: 15px;
                text-align: center;
            }

            .video-container {
                flex: 1;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: black;
                position: relative;
            }

            video,
            #avatar {
                width: 45%;
                height: 630px;
                border-radius: 10px;
                background-color: #ccc;
                position: absolute; /* Để overlay avatar lên video */
            }

            .controls {
                background-color: white;
                padding: 10px;
                display: flex;
                justify-content: space-around;
                border-top: 1px solid #ccc;

            }

            .control-icon {
                font-size: 24px;
                color: #4285f4;
                cursor: pointer;
                transition: transform 0.2s;
            }

            .control-icon:hover {
                transform: scale(1.1);
            }
        </style>
    </head>
    <body style="background-color: black">
        <div class="video-container">
            <video id="video" autoplay playsinline></video>
            <img
                id="avatar"
                style="width: 45%"
                src="assets/img/login/avata.jpg"
                alt="Avatar"
                style="display: none; width: 80%; border-radius: 10px"
                />
        </div>

        <div class="controls">
            <i
                class="fas fa-microphone control-icon"
                id="mic-btn"
                title="Toggle Microphone"
                ></i>
            <i
                class="fas fa-video control-icon"
                id="cam-btn"
                title="Toggle Camera"
                ></i>
            <i class="fas fa-phone control-icon" id="endCall-btn" title="End Call"></i>
        </div>
        <script>
            const videoElement = document.getElementById("video");
            const micButton = document.getElementById("mic-btn");
            const camButton = document.getElementById("cam-btn");
            const avatarElement = document.getElementById("avatar");
            const endCall = document.getElementById("endCall-btn");

            let stream;
            let isMicOn = false;
            let isCamOn = false;

            endCall.addEventListener("click", () => {
                if (stream) {
                    stream.getTracks().forEach(track => track.stop());
                }
                window.location.href = "index.jsp";
            });

            async function startStream() {
                try {
                    stream = await navigator.mediaDevices.getUserMedia({
                        video: true,
                        audio: true,
                    });
                    videoElement.srcObject = stream;
                } catch (error) {
                    console.error("Error accessing media devices.", error);
                }
            }

            function toggleMic() {
                isMicOn = !isMicOn;
                stream.getAudioTracks()[0].enabled = isMicOn;
                micButton.style.color = isMicOn ? "#4285f4" : "red"; // Change color based on mic status
            }
            let videoTrack;
            function toggleCam() {
                isCamOn = !isCamOn;
                const videoTrack = stream.getVideoTracks()[0];
                if (videoTrack) {
                    videoTrack.enabled = isCamOn; // Tắt hoặc bật camera
                    if (isCamOn) {
                        avatarElement.style.display = "none"; // Ẩn avatar
                    } else {
                        avatarElement.style.display = "block"; // Hiện avatar
                    }
                }
                camButton.style.color = isCamOn ? "#4285f4" : "red"; // Thay đổi màu sắc
            }

            micButton.addEventListener("click", toggleMic);
            camButton.addEventListener("click", toggleCam);

            // Start the video and audio stream on page load
            startStream();
        </script>
    </body>
</html>
