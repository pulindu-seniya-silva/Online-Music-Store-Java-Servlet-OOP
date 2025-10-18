package com.music.servlets.tharindu.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.music.servlets.tharindu.model.Product;
import com.music.servlets.tharindu.utils.DBConnect;


public class CartDao {
    public List<Product> getCartItems() {
        List<Product> cartItems = new ArrayList<>();
        String query = "SELECT * FROM cart"; 

        try (Connection con = DBConnect.getConnection();
             PreparedStatement statement = con.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setItem(resultSet.getString("item"));
                product.setImage(resultSet.getBytes("image")); 
                product.setPrice(resultSet.getString("price"));
                product.setColor(resultSet.getString("color"));
                product.setQuantity(resultSet.getInt("quantity"));

                cartItems.add(product);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItems;
    }
    
    public Product getProductById(int id) {
        Product product = null;
        String query = "SELECT * FROM cart WHERE id = ?";
        
        try (Connection con = DBConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setItem(rs.getString("item"));
                    product.setImage(rs.getBytes("image"));
                    product.setPrice(rs.getString("price"));
                    product.setColor(rs.getString("color"));
                    product.setQuantity(rs.getInt("quantity"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }
    
 // Update 
    public void updateQuantity(int id, int quantity) {
        String query = "UPDATE cart SET quantity = ? WHERE id = ?";
        
        try (Connection con = DBConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, quantity);
            pstmt.setInt(2, id);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Delete 
    public void deleteItem(int id) {
        String query = "DELETE FROM cart WHERE id = ?";
        
        try (Connection con = DBConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
}

