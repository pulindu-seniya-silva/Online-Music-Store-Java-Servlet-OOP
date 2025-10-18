package com.music.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminLogin {
	private Connection conn;
	private String usr;
	private String pwd;
	
	public AdminLogin(Connection conn, String usr, String pwd) {
		super();
		this.usr = usr;
		this.pwd = pwd;
		this.conn = conn;
	}
	
	public boolean login() {
		String sql = "SELECT * FROM adminUsers WHERE username=? AND password=?";
		try {
			PreparedStatement stmt = this.conn.prepareStatement(sql);
			stmt.setString(1, this.usr);
			stmt.setString(2,this.pwd);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	

}
