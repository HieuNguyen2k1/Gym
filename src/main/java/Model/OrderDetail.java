/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author HP
 */
public class OrderDetail {
    private int orderId;
    private int quantity;
    private double totalPrice;
    private int proId;
    private double pricePro;

    public double getPricePro() {
        return pricePro;
    }

    public void setPricePro(double pricePro) {
        this.pricePro = pricePro;
    }

    public OrderDetail(int orderId, int quantity, double totalPrice, int proId, double pricePro) {
        this.orderId = orderId;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.proId = proId;
        this.pricePro = pricePro;
    }

    

    public OrderDetail() {
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    
    
}
