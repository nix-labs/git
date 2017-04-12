package com.nix.mars.catalog.dao;

import java.util.List;

import com.nix.mars.base.dao.BaseDao;
import com.nix.mars.catalog.model.Product;

public interface ProductDao extends BaseDao<Product> {

	List<Product> getAllProducts();

	List<Product> getProductsByCategory(long id);

	List<Product> getProductsByAttribute(long id);

	Product getProductById(long id);

	Product getProductBySku(String sku);

	void saveProduct(Product product);

	void updateProduct(Product product);
}
