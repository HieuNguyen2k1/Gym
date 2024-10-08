/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class DBContext {
    private String url = "jdbc:sqlserver://DESKTOP-HOA8KMR;databaseName=Gym;encrypt=true;trustServerCertificate=true;loginTimeout=30;"; // Thay đổi tên cơ sở dữ liệu
    private String user = "sa"; // Thay đổi tên người dùng
    private String password = "123"; // Thay đổi mật khẩu
    private Connection conn;

     public DBContext() {
        try {
            // Tải driver JDBC
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver không tìm thấy: " + e.getMessage());
        }
     }
     public Connection getConnection() {
        try {
            // Tạo kết nối
            if (conn == null || conn.isClosed()) {
                conn = DriverManager.getConnection(url, user, password);
            }
        } catch (SQLException e) {
            System.out.println("Kết nối thất bại: " + e.getMessage());
        }
        return conn;
    }
      public void closeConnection() {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("Kết nối đã được đóng.");
            } catch (SQLException e) {
                System.out.println("Không thể đóng kết nối: " + e.getMessage());
            }
        }
      }
    
}
