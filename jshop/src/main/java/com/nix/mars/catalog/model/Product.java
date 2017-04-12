package com.nix.mars.catalog.model;

public class Product {
	
	long productId;
	String model;
	
	public Product() {
		
	}
	
	public Product(long productId, String model) {
		this.productId = productId;
		this.model = model;
	}
	
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	

}
