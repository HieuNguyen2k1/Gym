/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author HP
 */
public class User {
   private int id;
   private String userName;
   private String email;
    
   private String passs;
   private String gender;
   private String role;
    
   private String address;
   private String image;
   private String status;
    
   private double discount;
   private int height;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasss() {
        return passs;
    }

    public void setPasss(String passs) {
        this.passs = passs;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String Status) {
        this.status = Status;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public User(String userName, String email, String passs, String role) {
        this.userName = userName;
        this.email = email;
        this.passs = passs;
        this.role = role;
    }

    public User(int id, String userName, String email, String passs, String gender, String role, String address, String image, String Status, double discount, int height) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.passs = passs;
        this.gender = gender;
        this.role = role;
        this.address = address;
        this.image = image;
        this.status = Status;
        this.discount = discount;
        this.height = height;
    }

    public User() {
    }
    
    
    
}
