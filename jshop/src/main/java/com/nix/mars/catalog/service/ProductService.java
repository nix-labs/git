package com.nix.mars.catalog.service;

import java.util.List;

import com.nix.mars.catalog.dao.ProductDao;
import com.nix.mars.catalog.model.Product;

public interface ProductService {

	void setProductDao(ProductDao productDao);

	List<Product> getAllProducts();

	List<Product> getProductsByCategory(long id);

	List<Product> getProductsByAttribute(long id);

	Product getProductById(long id);

	Product getProductBySku(String sku);
	
	void saveProduct(Product product);
	
	void updateProduct(Product product);
}
