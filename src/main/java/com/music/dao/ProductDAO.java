package com.music.dao;

import java.sql.SQLException;
import java.util.List;

import com.music.models.Product;

public interface ProductDAO {
	void insert(Product product) throws SQLException;
	Product findById(int id) throws SQLException;
	List<Product> findAll() throws SQLException;
	void update(Product product) throws SQLException;
	void delet(int id) throws SQLException;
}
