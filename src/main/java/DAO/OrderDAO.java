/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Order;
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
public class OrderDAO {

    public OrderDAO() {
    }

    DBContext dbContext = new DBContext();
    Connection connection;
    String sql = "";

    public int AddOrder(Order order) {
        connection = dbContext.getConnection();
        sql = "insert into Orders(Order_Date,Shipper_Date,Total_Price,Discount,Freight,Status,UserId) values(?,?,?,?,?,?,?)";
        int idOrder = 0;

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setDate(1, order.getOrderDate()); // Order_Date
            preparedStatement.setDate(2, order.getShipperDate()); // Shipper_Date (if same as Order_Date, adjust as needed)
            preparedStatement.setDouble(3, order.getTotalPrice()); // Total_Price
            preparedStatement.setDouble(4, order.getDiscount()); // Discount (adjust as needed)
            preparedStatement.setString(5, order.getFrieght()); // Freight (adjust as needed)
            preparedStatement.setString(6, order.getStatus()); // Status (adjust as needed)
            preparedStatement.setInt(7, order.getUserId()); // UserId
//            ResultSet resultSet = preparedStatement.executeQuery();

            int affectedRows = preparedStatement.executeUpdate();
            if (affectedRows > 0) {
                // Lấy ID của bản ghi vừa thêm
                try (ResultSet generatedKeys = preparedStatement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        int orderId = generatedKeys.getInt(1);
                        return orderId;
                    } else {
                        throw new SQLException("Không thể lấy ID của bản ghi vừa thêm.");
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
        return idOrder;
    }

    public List<Order> GetListOrder(int id) {
        connection = dbContext.getConnection();
        sql = "Select * from Orders where UserId =?";
        List<Order> orders = new ArrayList<>();

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            // Hiển thị kết quả
            while (resultSet.next()) {
                Order order = new Order();
                // Giả sử bảng Users có các cột id và name
                order.setId(resultSet.getInt(1));
                order.setOrderDate(resultSet.getDate(2));
                order.setShipperDate(resultSet.getDate(3));
                order.setDiscount(resultSet.getFloat(5));

                order.setFrieght(resultSet.getString(6));
                order.setStatus(resultSet.getString(7));
                order.setTotalPrice(resultSet.getDouble(4));

                orders.add(order);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
        return orders;
    }
}
