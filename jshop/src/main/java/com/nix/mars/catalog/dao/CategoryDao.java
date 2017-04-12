package com.nix.mars.catalog.dao;

import java.util.List;

import com.nix.mars.catalog.model.Category;

public interface CategoryDao {

	List<Category> getAllCategories();

	List<Category> getCategoryById();

}
