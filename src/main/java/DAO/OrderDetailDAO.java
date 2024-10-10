/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.OrderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class OrderDetailDAO {

    public OrderDetailDAO() {
    }

    DBContext dbContext = new DBContext();
    Connection connection;
    String sql = "";

    public void AddOrderDetail(OrderDetail orderDetail) {
        connection = dbContext.getConnection();
        sql = "insert into OrderDetails values(?,?,?,?,?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            if (orderDetail != null) {
                preparedStatement.setInt(1, orderDetail.getProId());
                preparedStatement.setInt(2, orderDetail.getOrderId());
                preparedStatement.setInt(3, orderDetail.getQuantity());
                preparedStatement.setDouble(4, orderDetail.getPricePro());
                preparedStatement.setDouble(5, (orderDetail.getQuantity() * orderDetail.getPricePro()));
                ResultSet resultSet = preparedStatement.executeQuery();
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }

    }

    public List<OrderDetail> GetListOrderDetail(int id) {
        connection = dbContext.getConnection();
        sql = "Select * from OrderDetails";
        List<OrderDetail> orders = new ArrayList<>();

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                OrderDetail order = new OrderDetail();

                order.setProId(resultSet.getInt(1));
                order.setOrderId(resultSet.getInt(2));
                order.setQuantity(resultSet.getInt(3));
                order.setPricePro(resultSet.getFloat(4));
                order.setTotalPrice(resultSet.getFloat(5));

                orders.add(order);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
        return orders;
    }

    public OrderDetail GetOrderDetailByIdOrder(int id) {

        connection = dbContext.getConnection();
        sql = "Select * from OrderDetails where OrderId = ?";
        OrderDetail order = new OrderDetail();

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                order.setProId(resultSet.getInt(1));
                order.setOrderId(resultSet.getInt(2));
                order.setQuantity(resultSet.getInt(3));
                order.setPricePro(resultSet.getFloat(4));
                order.setTotalPrice(resultSet.getFloat(5));

            }
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); // Đóng kết nối sau khi sử dụng
        }
        return order;
    }
}
