package com.music.servlets.tharindu.services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.music.servlets.tharindu.model.Product;
import com.music.servlets.tharindu.utils.DBConnect;


public class ProductDao {
    public void newProduct(Product pro) {
    	  String query = "INSERT INTO cart (item, image, price, color, quantity) VALUES (?, ?, ?, ?, ?)";
          
          try (Connection con = DBConnect.getConnection(); 
               PreparedStatement statement = con.prepareStatement(query)) {
               
              statement.setString(1, pro.getItem());
              statement.setBytes(2, pro.getImage());
              statement.setString(3, pro.getPrice());
              statement.setString(4, pro.getColor());
              statement.setInt(5, pro.getQuantity());
              
              statement.executeUpdate();
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
}

