package com.music.models;

import java.util.List;

public class Order {
	private int id;
	private String status;
	private String customer;
	private double price;
	private List<Product> items;
	private String createdAt;
	
	public Order() {}
	
	public Order(int id, String status, String customer, double price, List<Product> items) {
		super();
		this.id = id;
		this.status = status;
		this.customer = customer;
		this.price = price;
		this.items = items;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<Product> getItems() {
		return items;
	}

	public void setItems(List<Product> items) {
		this.items = items;
	}
}
