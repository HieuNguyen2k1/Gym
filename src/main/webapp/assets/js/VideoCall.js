/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
 const chatBox = document.getElementById("chatBox");
      const messageInput = document.getElementById("messageInput");
      const sendButton = document.getElementById("sendButton");
      const chatContainer = document.querySelector(".chat-container");
      const closeChatButton = document.getElementById("closeChat");

      // Thêm sự kiện nhấp chuột vào tên liên hệ
      document.querySelectorAll(".contact-name").forEach((contact) => {
        contact.addEventListener("click", (e) => {
          e.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
          chatContainer.style.display = "block"; // Hiện box chat
          const contactName = e.target.getAttribute("data-name");
          console.log(`Chat với: ${contactName}`);
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
          chatBox.scrollTop = chatBox.scrollHeight; // Cuộn xuống cuối
        }
      });

      messageInput.addEventListener("keypress", (e) => {
        if (e.key === "Enter") {
          sendButton.click();
        }
      });
      // ============================
      closeChatButton.addEventListener("click", () => {
        chatContainer.style.display = "none"; // Ẩn box chat
      });
      //==================================
      const callIcon = document.getElementById("callIcon");
      const callModal = document.getElementById("callModal");
      const closeModalButton = document.getElementById("closeModal");
      const videoCall = document.getElementById("videoCall");

      // Khi nhấp vào biểu tượng gọi
      callIcon.addEventListener("click", async () => {
        callModal.style.display = "block"; // Hiện modal
        try {
          const stream = await navigator.mediaDevices.getUserMedia({
            video: true,
          });
          videoCall.srcObject = stream; // Hiển thị video từ camera
        } catch (error) {
          console.error("Lỗi truy cập camera: ", error);
        }
      });

      // Khi nhấp vào nút đóng modal
      closeModalButton.addEventListener("click", () => {
        callModal.style.display = "none"; // Ẩn modal
        videoCall.srcObject.getTracks().forEach((track) => track.stop()); // Dừng video
      });

