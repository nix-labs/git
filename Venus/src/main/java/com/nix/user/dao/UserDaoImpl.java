package com.nix.user.dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.nix.base.dao.BaseDaoImpl;
import com.nix.user.model.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
	
	private Logger logger = Logger.getLogger(UserDaoImpl.class);

	public void setDataSource(DataSource dataSource) {
		setJdbcTemplate(new JdbcTemplate(dataSource));
	}

	public List<User> getAllUsers() {
		String sqlQuery = "select * from user";
		Object[] args = new Object[] {};

		return read(sqlQuery, args, new BeanPropertyRowMapper<User>(User.class));
	}

	public User findByUserId(long id) {
		String sqlQuery = "select * from user where user_id=?";
		Object[] args = new Object[] { id };

		return read(sqlQuery, args, new BeanPropertyRowMapper<User>(User.class)).get(0);
	}

	public User findByUsername(String username) {
		String sqlQuery = "select * from user where username=?";
		Object[] args = new Object[] { username };

		return read(sqlQuery, args, new BeanPropertyRowMapper<User>(User.class)).get(0);
	}

	public User createUser(User user) {
		String sqlQuery = "INSERT INTO user (user_group_id, username, password, salt, firstname, lastname, email, image, code, ip, status, date_added) " + 
				"VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		Object[] args = new Object[] 
			{ user.getUserId(), 
				user.getUserGroupId(),
				user.getUsername(),
				user.getPassword(),
				user.getSalt(),
				user.getFirstname(),
				user.getLastname(),
				user.getEmail(),
				user.getImage(),
				user.getCode(),
				user.getIp(),
				user.getStatus(),
				user.getDateAdded()};

		int out = create(sqlQuery, args);

		if (out != 0) {
			System.out.println("User saved with id=" + user.getUserId());
		} else
			System.out.println("User save failed with id=" + user.getUserId());
		
		return null;
	}

	public User updateUser(User user) {
		/*String sqlQuery = "update product set model=? where product_id=?";
		Object[] args = new Object[] { user.getModel(), user.getProductId() };

		int out = update(sqlQuery, args);
		if (out != 0) {
			System.out.println("Product updated with id=" + user.getProductId());
		} else
			System.out.println("No Product found with id=" + user.getProductId());*/
		
		return null;
	}

	public User deleteUser(long id) {
		String sqlQuery = "delete from user where user_id=?";
		Object[] args = new Object[] { id };

		int out = delete(sqlQuery, args);
		if (out != 0) {
			System.out.println("User deleted with id=" + id);
		} else
			System.out.println("User delete failed with id=" + id);
		
		return null;
	}

}
