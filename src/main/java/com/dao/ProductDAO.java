package com.dao;

import java.sql.*;
import java.util.*;
import com.model.Product;

public class ProductDAO {

    Connection con;

    public ProductDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/productdbss","root","password");
        } catch(Exception e) { e.printStackTrace(); }
    }

    public void addProduct(Product p) {
        try {
            PreparedStatement ps = con.prepareStatement(
            "INSERT INTO Products(ProductName,Category,Price,Quantity) VALUES(?,?,?,?)");
            ps.setString(1,p.getProductName());
            ps.setString(2,p.getCategory());
            ps.setDouble(3,p.getPrice());
            ps.setInt(4,p.getQuantity());
            ps.executeUpdate();
        } catch(Exception e){ e.printStackTrace(); }
    }

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            ResultSet rs = con.createStatement().executeQuery("SELECT * FROM Products");
            while(rs.next()){
                Product p=new Product();
                p.setProductId(rs.getInt(1));
                p.setProductName(rs.getString(2));
                p.setCategory(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setQuantity(rs.getInt(5));
                list.add(p);
            }
        } catch(Exception e){}
        return list;
    }

    public void deleteProduct(int id){
        try{
            PreparedStatement ps=con.prepareStatement("DELETE FROM Products WHERE ProductID=?");
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch(Exception e){}
    }

    public Product getProductById(int id){
        Product p=new Product();
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM Products WHERE ProductID=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                p.setProductId(rs.getInt(1));
                p.setProductName(rs.getString(2));
                p.setCategory(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setQuantity(rs.getInt(5));
            }
        }catch(Exception e){}
        return p;
    }

    public void updateProduct(Product p){
        try{
            PreparedStatement ps=con.prepareStatement(
            "UPDATE Products SET ProductName=?,Category=?,Price=?,Quantity=? WHERE ProductID=?");
            ps.setString(1,p.getProductName());
            ps.setString(2,p.getCategory());
            ps.setDouble(3,p.getPrice());
            ps.setInt(4,p.getQuantity());
            ps.setInt(5,p.getProductId());
            ps.executeUpdate();
        }catch(Exception e){}
    }

    public List<Product> getProductsByPrice(double price){
        List<Product> list=new ArrayList<>();
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM Products WHERE Price>?");
            ps.setDouble(1,price);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setProductId(rs.getInt(1));
                p.setProductName(rs.getString(2));
                p.setCategory(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setQuantity(rs.getInt(5));
                list.add(p);
            }
        }catch(Exception e){}
        return list;
    }

    public List<Product> getProductsByCategory(String cat){
        List<Product> list=new ArrayList<>();
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM Products WHERE Category=?");
            ps.setString(1,cat);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setProductId(rs.getInt(1));
                p.setProductName(rs.getString(2));
                p.setCategory(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setQuantity(rs.getInt(5));
                list.add(p);
            }
        }catch(Exception e){}
        return list;
    }

    public List<Product> getTopProducts(int n){
        List<Product> list=new ArrayList<>();
        try{
            PreparedStatement ps=con.prepareStatement(
            "SELECT * FROM Products ORDER BY Quantity DESC LIMIT ?");
            ps.setInt(1,n);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setProductId(rs.getInt(1));
                p.setProductName(rs.getString(2));
                p.setCategory(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setQuantity(rs.getInt(5));
                list.add(p);
            }
        }catch(Exception e){}
        return list;
    }
}