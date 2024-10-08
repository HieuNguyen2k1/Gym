/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Test;

import DAO.DBContext;
import DAO.ProductDAO;
import Model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 *
 * @author HP
 */
public class TestDB {

    public static void main(String[] args) throws SQLException {
        
//        ProductDAO p = new ProductDAO();
//        
//        p.GetListProduct();
//        List<Product> products = p.GetListProduct();
//        
//        for (int i = 0; i < products.size(); i++) {
//            Product product = products.get(i);
//            System.out.println("ID: " + product.getId() + ", Name: " + product.getProName() +
//                               ", Price: " + product.getPrice() + ", Description: " + product.getDescribe());
//        }
//        System.out.println("=============== for each=========");
//        for (Product product : products) {
//            System.out.println("ID: " + product.getId() + ", Name: " + product.getProName() +
//                               ", Price: " + product.getPrice() + ", Description: " + product.getDescribe());
//        }
        
        
        
//        DBContext dbContext = new DBContext();
//        Connection connection = dbContext.getConnection();
//
//        if (connection != null) {
//            System.out.println("Kết nối thành công!");
//
//            String sql = "select * from Users;";
//
//            System.out.println(sql);
//            
//            try (Statement statement = connection.createStatement()) {
//                ResultSet resultSet = statement.executeQuery(sql);
//
//                // Hiển thị kết quả
//                while (resultSet.next()) {
//                    // Giả sử bảng Users có các cột id và name
//                    int id = resultSet.getInt("Id");
//                    String name = resultSet.getString("UserName");
//                    System.out.println("ID: " + id + ", Name: " + name);
//                }
//            } catch (SQLException e) {
//                System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
//            } finally {
//                dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
//            }
//
//        } else {
//            System.out.println("Kết nối thất bại!");
//        }
    }

}
