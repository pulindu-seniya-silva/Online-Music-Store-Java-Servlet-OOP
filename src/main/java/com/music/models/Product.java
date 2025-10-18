package com.music.models;

public class Product {
	private int id;
	private String name;
	private String description;
	private int qty;
	private String image;
	private double price;
	private String colour;
	private String category;
	
	public Product() {}
	
	public Product(int id, String name, String description, int qty, String image, double price, String colour, String category) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.qty = qty;
		this.image = image;
		this.price = price;
		this.colour = colour;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
}
