package com.music.servlets.pulindu;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ShopKeeperUtil {
	
	private static boolean isSuccess;
	
	public static List<ShopKeeper> validate(String username, String password) {
		
		ArrayList<ShopKeeper> keeper = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/customer_inquiry?useSSL=false";
		String user = "pulindu";
		String pass = "";
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
		    Statement stmt = con.createStatement();
			
			String sql = "SELECT * FROM shop_keeper WHERE username = '"+username+"' AND password = '"+password+"' ";
		
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				String id = rs.getString(1);
				String uName = rs.getString(2);
				String passW = rs.getString(3);
				String available_Instrument_Types = rs.getString(4);
				String available_Music_Brands =rs.getString(5);
				String email = rs.getString(6);
				String phoneNumber = rs.getString(7);
				String store_name = rs.getString(8);
				String available_time = rs.getString(9);
				
				ShopKeeper c = new ShopKeeper(id, uName, passW, available_Instrument_Types, available_Music_Brands, email, phoneNumber, store_name, available_time);
				keeper.add(c);
			}
			
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return keeper;
			
	}
	
	public static boolean updateKeeper(String id, String username, String password, String available_Instrument_Types, 
            String available_Music_Brands, String email, String phoneNumber, 
            String store_name, String available_time) {

				// Create database connection details
				String url = "jdbc:mysql://localhost:3306/customer_inquiry?useSSL=false";
				String user = "pulindu";
				String pass = "";
				
				try {
				// Load the JDBC driver and establish a connection
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pass);
				
				// SQL query with placeholders for parameters
				String sql = "UPDATE shop_keeper SET username = ?, store_name = ?, available_Instrument_Types = ?, " +
			             "available_Music_Brands = ?, phoneNumber = ?, email = ?, available_time = ? WHERE id = ?";

				try (java.sql.PreparedStatement pstmt = con.prepareStatement(sql)) {
				
				// Set the parameters for the SQL query
				pstmt.setString(1, username);
				pstmt.setString(2, store_name);
				
				// Handle null for available_Instrument_Types
				if (available_Instrument_Types != null) {
						pstmt.setString(3, available_Instrument_Types);
				} else {
						pstmt.setNull(3, java.sql.Types.VARCHAR);
				}
				
				
				if (available_Music_Brands != null) {
						pstmt.setString(4, available_Music_Brands);
				} else {
						pstmt.setNull(4, java.sql.Types.VARCHAR);
				}
				
				
				pstmt.setString(5, phoneNumber);
				pstmt.setString(6, email);
				
				
				if (available_time != null) {
						pstmt.setString(7, available_time);
				} else {
						pstmt.setNull(7, java.sql.Types.VARCHAR);
				}
				
				
				pstmt.setString(8, id); 
				
				// Execute the update
				int rowsUpdated = pstmt.executeUpdate();
				
				// If rows were updated, return true
				if (rowsUpdated > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				
				} catch (SQLException e) {
					e.printStackTrace(); // Handle exception
				isSuccess = false; // Return false if exception occurs
				} finally {
				// Always close the connection after the operation
					con.close();
				}
				
				} catch (Exception e) {
					e.printStackTrace(); // Handle exception
				isSuccess = false;
				}
				
				return isSuccess;
				}

	
	public static boolean DeleteKeeper(int id) {
		
		int convId = id;

		try {
			
			String url = "jdbc:mysql://localhost:3306/customer_inquiry?useSSL=false";
			String user = "pulindu";
			String pass = "";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
		    Statement stmt = con.createStatement();
			
			String sql = "DELETE FROM shop_keeper where id = '"+convId+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	} 
	
}
		
		
	
	
	

