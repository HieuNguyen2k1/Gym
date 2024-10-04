/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author HP
 */
public class Login {

    public Login() {
    }

    DBContext dbContext = new DBContext();
    Connection connection = dbContext.getConnection();
    String sql = "";

    public User GetUser(String email, String pass) {
//         sql = "Select * from Users where email =? and pass =? ";
        sql = "Select * from Users where Role =? ";
        User user = new User();
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            // Hiển thị kết quả
            while (resultSet.next()) {
                // Giả sử bảng Users có các cột id và name
                user.setId(resultSet.getInt("Id"));
                user.setUserName(resultSet.getString("UserName"));
                user.setRole(resultSet.getString("Role"));
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }

        return user;
    }

}
