package com.nix.mars.catalog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.nix.mars.base.dao.BaseDaoImpl;
import com.nix.mars.catalog.model.Product;

public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {

	public void setDataSource(DataSource dataSource) {
		setJdbcTemplate(new JdbcTemplate(dataSource));
	}

	public List<Product> getAllProducts() {

		String sqlQuery = "select product_id, model from product";

		Object[] args = new Object[] {};

		List<Product> productList = read(sqlQuery, args, new ProductRowMapper());

		return productList;
	}

	public List<Product> getProductsByCategory(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> getProductsByAttribute(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Product getProductById(long id) {
		/*
		 * String sqlQuery =
		 * "select product_id, model from product where product_id=?";
		 * 
		 * Product product = jdbcTemplate.queryForObject(sqlQuery, new Object[]
		 * { id }, new RowMapper<Product>() { public Product mapRow(ResultSet
		 * result, int rowNum) throws SQLException { Product product = new
		 * Product(); product.setProductId(result.getLong("product_id"));
		 * product.setModel(result.getString("model"));
		 * 
		 * return product; } });
		 */

		return null;
	}

	public Product getProductBySku(String sku) {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveProduct(Product product) {
		String sqlQuery = "insert into Product (product_id, model) values (?,?)";

		Object[] args = new Object[] { product.getProductId(), product.getModel() };

		int out = create(sqlQuery, args);

		if (out != 0) {
			System.out.println("Product saved with id=" + product.getProductId());
		} else
			System.out.println("Product save failed with id=" + product.getProductId());
	}

	public void updateProduct(Product product) {
		String sqlQuery = "update product set model=? where product_id=?";
		Object[] args = new Object[] { product.getModel(), product.getProductId() };

		int out = update(sqlQuery, args);
		if (out != 0) {
			System.out.println("Product updated with id=" + product.getProductId());
		} else
			System.out.println("No Product found with id=" + product.getProductId());
	}

	public void deleteProduct(Product product) {
		String sqlQuery = "delete from product where product_id=?";
		Object[] args = new Object[] { product.getProductId() };

		int out = delete(sqlQuery, args);
		if (out != 0) {
			System.out.println("Product updated with id=" + product.getProductId());
		} else
			System.out.println("No Product found with id=" + product.getProductId());
	}

	/*
	 * @Override public void deleteById(int id) {
	 * 
	 * String query = "delete from Employee where id=?"; JdbcTemplate
	 * jdbcTemplate = new JdbcTemplate(dataSource);
	 * 
	 * int out = jdbcTemplate.update(query, id); if(out !=0){
	 * System.out.println("Employee deleted with id="+id); }else
	 * System.out.println("No Employee found with id="+id); }
	 */
	public class ProductRowMapper implements RowMapper<Product> {

		public Product mapRow(ResultSet result, int rowNum) throws SQLException {
			Product product = new Product();
			product.setProductId(result.getLong("product_id"));
			product.setModel(result.getString("model"));

			return product;
		}
	}

}
