package com.music.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.music.models.Order;
import com.music.models.Product;

public class OrderDAOImpl implements OrderDAO {
	private Connection conn;
	
	public OrderDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public void insert(Order order) throws SQLException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Order> findAll() throws SQLException {
		List<Order> orders = new ArrayList<>();
		String orderSql = "SELECT * FROM orders";
		Statement orderStmt = this.conn.createStatement();
		ResultSet orderRs = orderStmt.executeQuery(orderSql);
		
		while(orderRs.next()) {
			Order order = new Order();
			order.setId(orderRs.getInt("id"));
			order.setCustomer(orderRs.getString("customer"));
			order.setPrice(orderRs.getDouble("price"));
			order.setStatus(orderRs.getString("status"));
			order.setCreatedAt(orderRs.getString("createdAt"));
			
			String sql = "SELECT O.price, O.qty, I.name, I.id FROM orderItems O, item I WHERE O.itemId = I.id AND O.orderId = ?";
			PreparedStatement stmt = this.conn.prepareStatement(sql);
			stmt.setInt(1, order.getId());
			
			ResultSet lineItems = stmt.executeQuery();
			
			List<Product> items = new ArrayList<>();
			while(lineItems.next()) {
				Product prod = new Product();
				prod.setId(lineItems.getInt("id"));
				prod.setQty(lineItems.getInt("qty"));
				prod.setPrice(lineItems.getDouble("price"));
				prod.setName(lineItems.getString("name"));
				
				items.add(prod);
				
			}
			
			order.setItems(items);
			orders.add(order);
		}
		
		return orders;
	}

	@Override
	public Order findById(int id) throws SQLException {
		Order order = new Order();
		String orderSql = "SELECT * FROM orders WHERE id=?";
		PreparedStatement orderStmt = this.conn.prepareStatement(orderSql);
		orderStmt.setInt(1, id);
		ResultSet orderRs = orderStmt.executeQuery();
		
		// Calculate Total price
		String totalSql = "SELECT SUM(price) totalPrice FROM orderItems WHERE orderId = ?";
		PreparedStatement totalPriceStmt = this.conn.prepareStatement(totalSql);
		totalPriceStmt.setInt(1, id);
		ResultSet totalRs = totalPriceStmt.executeQuery();
		
		if(totalRs.next()) {
			order.setPrice(totalRs.getDouble("totalPrice"));
		}
		
		if(orderRs.next()) {	
			order.setId(orderRs.getInt("id"));
			order.setCustomer(orderRs.getString("customer"));
			order.setStatus(orderRs.getString("status"));
			
			String sql = "SELECT I.price, O.qty, I.name, I.id FROM orderItems O, item I WHERE O.itemId = I.id AND O.orderId = ?";
			PreparedStatement stmt = this.conn.prepareStatement(sql);
			stmt.setInt(1, order.getId());
			
			ResultSet lineItems = stmt.executeQuery();
			
			List<Product> items = new ArrayList<>();
			while(lineItems.next()) {
				Product prod = new Product();
				prod.setId(lineItems.getInt("id"));
				prod.setQty(lineItems.getInt("qty"));
				prod.setPrice(lineItems.getDouble("price"));
				prod.setName(lineItems.getString("name"));
				
				items.add(prod);
				
			}
			
			order.setItems(items);
		}
		
		return order;
	}

	@Override
	public void udpateStatus(int id, String status) throws SQLException {
		String sql = "UPDATE orders SET status=? WHERE id=?";
		PreparedStatement stmt = this.conn.prepareStatement(sql);
		stmt.setString(1, status);
		stmt.setInt(2, id);
		stmt.executeUpdate();
	}

}
