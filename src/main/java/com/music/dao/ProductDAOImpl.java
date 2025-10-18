package com.music.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.music.models.Product;

public class ProductDAOImpl implements ProductDAO {
	private Connection conn;

	public ProductDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public void insert(Product product) throws SQLException {
		String sql = "INSERT INTO item (name, description, qty, image, price, colour, category) VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt =  this.conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1, product.getName());
		stmt.setString(2, product.getDescription());
		stmt.setInt(3, product.getQty());
		stmt.setString(4, product.getImage());
		stmt.setDouble(5, product.getPrice());
		stmt.setString(6, product.getColour());
		stmt.setString(7, product.getCategory());
		stmt.executeUpdate();
		
		ResultSet rs = stmt.getGeneratedKeys();
		if(rs.next()) {
			product.setId(rs.getInt(0));
		}
	}

	@Override
	public Product findById(int id) throws SQLException {
		Product prod = new Product();
		String sql = "SELECT * FROM item WHERE id=?";
		PreparedStatement stmt = this.conn.prepareStatement(sql);
		stmt.setInt(1, id);
		
		ResultSet rs = stmt.executeQuery();
		
		if(rs.next()) {
			prod.setId(rs.getInt("id"));
			prod.setName(rs.getString("name"));
			prod.setDescription(rs.getString("description"));
			prod.setCategory(rs.getString("category"));
			prod.setPrice(rs.getDouble("price"));
			prod.setColour(rs.getString("colour"));
			prod.setImage(rs.getString("image"));
			prod.setQty(rs.getInt("qty"));
		}
		
		return prod;
	}

	@Override
	public List<Product> findAll() throws SQLException {
		List<Product> list =  new ArrayList<>();
		String sql = "SELECT * FROM item";
		Statement stmt = this.conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			Product prod = new Product();
			prod.setId(rs.getInt("id"));
			prod.setName(rs.getString("name"));
			prod.setCategory(rs.getString("category"));
			prod.setPrice(rs.getDouble("price"));
			prod.setColour(rs.getString("colour"));
			list.add(prod);
		}
		return list;
	}

	@Override
	public void update(Product product) throws SQLException {
		String sql = "UPDATE item SET name=?,description=?,category=?,price=?,colour=?,image=?,qty=? WHERE id=?";
		PreparedStatement stmt = this.conn.prepareStatement(sql);
		stmt.setString(1, product.getName());
		stmt.setString(2, product.getDescription());
		stmt.setString(3, product.getCategory());
		stmt.setDouble(4, product.getPrice());
		stmt.setString(5, product.getColour());
		stmt.setString(6, product.getImage());
		stmt.setInt(7, product.getQty());
		stmt.setInt(8, product.getId());
		stmt.executeUpdate();
	}

	@Override
	public void delet(int id) throws SQLException {
		String sql = "DELETE FROM item WHERE id=?";
		PreparedStatement stmt = this.conn.prepareStatement(sql);
		stmt.setInt(1, id);
		stmt.executeUpdate();
		
	}

}
