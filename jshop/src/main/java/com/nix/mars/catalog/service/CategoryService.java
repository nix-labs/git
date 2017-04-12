package com.nix.mars.catalog.service;

import java.util.List;

import com.nix.mars.catalog.model.Category;

public interface CategoryService {

	List<Category> getAllCategories();

	List<Category> getCategoryById();

}
