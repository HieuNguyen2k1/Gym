/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Order;
import Model.Payment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author HP
 */
public class PaymentDAO {

    public PaymentDAO() {
    }

    DBContext dbContext = new DBContext();
    Connection connection;
    String sql = "";

    public int AddPayment(Payment payment) {
        connection = dbContext.getConnection();
        sql = "insert into Payments(OrderId,Time,Status,TotalPrice) values(?,?,?,?)";
        int idOrder = 0;

        Date utilDate = payment.getTime();
        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, payment.getOrderId());
            preparedStatement.setDate(2, sqlDate);
            preparedStatement.setString(3, payment.getStatus());
            preparedStatement.setDouble(4, payment.getTotalPrice());

            preparedStatement.executeQuery();
        } catch (SQLException e) {
            System.out.println("Lỗi thực thi câu truy vấn: " + e.getMessage());
        } finally {
            dbContext.closeConnection(); 
        }
        return idOrder;
    }
}
