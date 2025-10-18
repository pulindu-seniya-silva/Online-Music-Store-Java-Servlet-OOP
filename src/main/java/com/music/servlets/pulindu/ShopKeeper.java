package com.music.servlets.pulindu;

public class ShopKeeper {
	
	//variable declaration
	private String id;
	private String username;
	private String  password;
	private String available_Instrument_Types;
	private String available_Music_Brands;
	private String email;
	private String phoneNumber;
	private String store_name;
	private String available_time;
	
	//constructor
	public ShopKeeper(String id, String username, String password, String available_Instrument_Types,
			String available_Music_Brands, String email, String phoneNumber, String store_name, String available_time) {
		
		this.id = id;
		this.username = username;
		this.password = password;
		this.available_Instrument_Types = available_Instrument_Types;
		this.available_Music_Brands = available_Music_Brands;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.store_name = store_name;
		this.available_time = available_time;
	}


	//get methods
	public String getId() {
		return id;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}

	
	public String getAvailable_Instrument_Types() {
		return available_Instrument_Types;
	}


	public String getAvailable_Music_Brands() {
		return available_Music_Brands;
	}


	public String getEmail() {
		return email;
	}

	
	public String getPhoneNumber() {
		return phoneNumber;
	}

	
	public String getStore_name() {
		return store_name;
	}


	public String getAvailable_time() {
		return available_time;
	}
	

}
