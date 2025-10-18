package com.music.models;

import java.util.List;

public class AdminDashboard {
	private List<Order> orders;
	private int orderCount;
	private int itemCount;
	private int inqueryCount;
	
	public AdminDashboard() {}
	
	public AdminDashboard(List<Order> orders, int orderCount, int itemCount, int inqueryCount) {
		super();
		this.orders = orders;
		this.orderCount = orderCount;
		this.itemCount = itemCount;
		this.inqueryCount = inqueryCount;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public int getItemCount() {
		return itemCount;
	}

	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}

	public int getInqueryCount() {
		return inqueryCount;
	}

	public void setInqueryCount(int inqueryCount) {
		this.inqueryCount = inqueryCount;
	}
	
	
}
