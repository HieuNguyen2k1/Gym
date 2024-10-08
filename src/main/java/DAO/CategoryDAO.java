/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class CategoryDAO {
     public CategoryDAO() {
    }

    DBContext dbContext = new DBContext();
    Connection connection = dbContext.getConnection();
    String sql = "";

    public List<Category> GetListCategory() {
//         sql = "Select * from Users where email =? and pass =? ";
        sql = "Select * from Categorys ";
        List<Category> categories = new ArrayList<>();
        
        try (Statement statement = connection.createStatement()) {
           
            ResultSet resultSet = statement.executeQuery(sql);
            // Hiển thị kết quả
            while (resultSet.next()) {
                Category category = new Category();
                // Giả sử bảng Users có các cột id và name
                category.setId(resultSet.getInt("Id"));
                category.setCateName(resultSet.getString("Name"));
              
                categories.add(category);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
//            for (int i = 0; i < products.size(); i++) {
//            Product product = products.get(i);
//            System.out.println("ID: " + product.getId() + ", Name: " + product.getProName() +
//                               ", Price: " + product.getPrice() + ", Description: " + product.getDescribe());
//        }
        return categories;
    }
}
