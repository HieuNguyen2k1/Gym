/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author HP
 */
public class Order {

    private int id;
    private Date orderDate;
    private Date shipperDate;

    public Order(Date orderDate, Date shipperDate, double totalPrice, float discount, String frieght, String status, int userId) {
        this.orderDate = orderDate;
        this.shipperDate = shipperDate;
        this.totalPrice = totalPrice;
        this.discount = discount;
        this.frieght = frieght;
        this.status = status;
        this.userId = userId;
    }
    
    private double totalPrice;
    private float discount;
    private String frieght;

    private String status;
    private int userId;

    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getShipperDate() {
        return shipperDate;
    }

    public void setShipperDate(Date shipperDate) {
        this.shipperDate = shipperDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getFrieght() {
        return frieght;
    }

    public void setFrieght(String frieght) {
        this.frieght = frieght;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

}
