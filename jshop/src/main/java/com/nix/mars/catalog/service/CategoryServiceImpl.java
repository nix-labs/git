package com.nix.mars.catalog.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nix.mars.catalog.model.Category;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {

	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Category> getCategoryById() {
		// TODO Auto-generated method stub
		return null;
	}

}
