package com.music.servlets.shenuk.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // Method to create a new user
    public boolean createUser(User user) throws SQLException {
        String query = "INSERT INTO users(uname, upwd, uemail, umobile) VALUES(?, ?, ?, ?)";
        try (Connection con = DatabaseConnection.getConnection(); 
             PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, user.getUname());
            pst.setString(2, user.getUpwd()); // Store password as plaintext
            pst.setString(3, user.getUemail());
            pst.setString(4, user.getUmobile());
            return pst.executeUpdate() > 0; // returns true if insert was successful
        }
    }

    // Method to check if the email exists
    public boolean isEmailExists(String uemail) throws SQLException {
        String query = "SELECT COUNT(*) FROM users WHERE uemail = ?";
        try (Connection con = DatabaseConnection.getConnection(); 
             PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, uemail);
            ResultSet rs = pst.executeQuery();
            return rs.next() && rs.getInt(1) > 0; // returns true if email exists
        }
    }

    // Method to validate user login
    public User validateUser(String uemail, String upwd) throws SQLException {
        String query = "SELECT * FROM users WHERE uemail = ?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, uemail);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String storedPassword = rs.getString("upwd");
                // Check if passwords match
                if (upwd.equals(storedPassword)) { 
                    return new User(rs.getString("uname"), rs.getString("uemail"), storedPassword, rs.getString("umobile"));
                }
            }
        }
        return null; // Return null if no user found or password mismatch
    }
    
    
    public User validateUserForLogin(String uemail, String upwd) throws SQLException {
        String query = "SELECT * FROM users WHERE uemail = ?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, uemail);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String storedPassword = rs.getString("upwd");
                // Check if passwords match
                if (storedPassword != null) { 
                    return new User(rs.getString("uname"), rs.getString("uemail"), storedPassword, rs.getString("umobile"));
                }
            }
        }
        return null; // Return null if no user found or password mismatch
    }

    // Method to update user details
    public boolean updateUser(User user) throws SQLException {
        String query = "UPDATE users SET uname = ?, upwd = ?, umobile = ? WHERE uemail = ?";
        try (Connection con = DatabaseConnection.getConnection(); 
             PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, user.getUname());
            pst.setString(2, user.getUpwd()); // Store password as plaintext
            pst.setString(3, user.getUmobile());
            pst.setString(4, user.getUemail());
            return pst.executeUpdate() > 0; // returns true if update was successful
        }
    }

    // Method to delete user
    public boolean deleteUser(String uname) throws SQLException {
        String query = "DELETE FROM users WHERE uname = ?";
        try (Connection con = DatabaseConnection.getConnection(); 
             PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, uname);
            return pst.executeUpdate() > 0; // returns true if deletion was successful
        }
    }
}
