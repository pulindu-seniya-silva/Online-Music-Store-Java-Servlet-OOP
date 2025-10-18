package com.music.dao;

import java.sql.SQLException;
import java.util.List;

import com.music.models.Order;

public interface OrderDAO {
	public void insert(Order order) throws SQLException;
	public void udpateStatus(int id, String status) throws SQLException;
	public List<Order> findAll() throws SQLException;
	public Order findById(int id) throws SQLException;
	public void delete(int id) throws SQLException;
}
