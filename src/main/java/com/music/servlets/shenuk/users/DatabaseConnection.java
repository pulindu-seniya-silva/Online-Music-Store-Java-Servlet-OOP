
package com.music.servlets.shenuk.users;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	
	private static String url = "jdbc:mysql://localhost:3306/music_all";
	private static String userName = "root";
	private static String password = "123";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}
