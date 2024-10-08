/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Product;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class ProductDAO {

    public ProductDAO() {
    }

    DBContext dbContext = new DBContext();
    Connection connection = dbContext.getConnection();
    String sql = "";

    public List<Product> GetListProduct() {
//         sql = "Select * from Users where email =? and pass =? ";
        sql = "Select * from Products ";
        List<Product> products = new ArrayList<>();

        try (Statement statement = connection.createStatement()) {

            ResultSet resultSet = statement.executeQuery(sql);
            // Hiển thị kết quả
            while (resultSet.next()) {
                Product product = new Product();
                // Giả sử bảng Users có các cột id và name
                product.setId(resultSet.getInt("Id"));
                product.setProName(resultSet.getString("ProName"));
                product.setPrice(resultSet.getDouble("Price"));
                product.setDescribe(resultSet.getString("Describe"));

                product.setWeigth(resultSet.getFloat("Weight"));
                product.setCateId(resultSet.getInt("CateId"));
                product.setImage(resultSet.getString("Image"));
                product.setStatus(resultSet.getString("Status"));
                product.setStock(resultSet.getInt("UnitInStock"));

                products.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
        return products;
    }

    public List<Product> GetListProductByIdCate(int id) {
        sql = "Select * from Products where CateId =?";
        List<Product> products = new ArrayList<>();

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            // Hiển thị kết quả
            while (resultSet.next()) {
                Product product = new Product();
                // Giả sử bảng Users có các cột id và name
                product.setId(resultSet.getInt("Id"));
                product.setProName(resultSet.getString("ProName"));
                product.setPrice(resultSet.getDouble("Price"));
                product.setDescribe(resultSet.getString("Describe"));

                product.setWeigth(resultSet.getFloat("Weight"));
                product.setCateId(resultSet.getInt("CateId"));
                product.setImage(resultSet.getString("Image"));
                product.setStatus(resultSet.getString("Status"));
                product.setStock(resultSet.getInt("UnitInStock"));

                products.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
        return products;
    }
}
