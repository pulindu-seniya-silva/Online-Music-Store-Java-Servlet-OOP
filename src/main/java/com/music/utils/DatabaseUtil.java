package com.music.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/music_all";
    private static final String USER = "pulindu";
    private static final String PASSWORD = "";
    private static Connection conn;
    
    public static Connection getConnection() throws SQLException {
    	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		   	return DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
    }
}
