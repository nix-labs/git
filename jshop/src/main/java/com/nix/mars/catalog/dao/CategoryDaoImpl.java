package com.nix.mars.catalog.dao;

import java.util.List;

import javax.sql.DataSource;

import com.nix.mars.catalog.model.Category;

public class CategoryDaoImpl implements CategoryDao {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Category> getCategoryById() {
		// TODO Auto-generated method stub
		return null;
	}

}
