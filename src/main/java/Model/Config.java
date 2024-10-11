/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author HP
 */
public class Config {
    
    public static String hmacSHA512(String key, String inputData) {
        
        try {
            // Chuyển đổi khóa thành byte
            byte[] keyBytes = key.getBytes(StandardCharsets.UTF_8);
            // Khởi tạo Mac với thuật toán HmacSHA512
            Mac mac = Mac.getInstance("HmacSHA512");
            SecretKeySpec secretKeySpec = new SecretKeySpec(keyBytes, "HmacSHA512");
            mac.init(secretKeySpec);

            // Tính toán giá trị hash
            byte[] hashValue = mac.doFinal(inputData.getBytes(StandardCharsets.UTF_8));

            // Chuyển đổi giá trị hash thành chuỗi hex
            StringBuilder hash = new StringBuilder();
            for (byte b : hashValue) {
                hash.append(String.format("%02x", b));
            }

            return hash.toString();
        } catch (Exception e) {
            throw new RuntimeException("HMAC computation failed", e);
        }
    }
    
     public static String getIpAddress(HttpServletRequest request) {
        String ipAddress = "";
        try {
            // Lấy địa chỉ IP từ yêu cầu
            String remoteIp = request.getRemoteAddr();
            
            // Kiểm tra nếu địa chỉ IP là IPv6
            if (remoteIp != null && remoteIp.contains(":")) {
                // Nếu là IPv6, có thể thực hiện các xử lý bổ sung nếu cần
                InetAddress inetAddress = InetAddress.getByName(remoteIp);
                ipAddress = inetAddress.getHostAddress(); // Chuyển đổi sang địa chỉ IPv4 nếu cần
            } else {
                ipAddress = remoteIp; // Địa chỉ IPv4
            }

            return ipAddress;
        } catch (UnknownHostException e) {
            return "Invalid IP: " + e.getMessage();
        } catch (Exception e) {
            return "Invalid IP: " + e.getMessage();
        }
        
        
    }
}
