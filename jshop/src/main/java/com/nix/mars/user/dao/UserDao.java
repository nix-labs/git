package com.nix.mars.user.dao;

import java.util.List;

import com.nix.mars.base.dao.BaseDao;
import com.nix.mars.user.model.User;

public interface UserDao extends BaseDao<User> {

	List<User> getAllUsers();

	User findByUserId(long id);

	User findByUsername(String username);

	User createUser(User user);

	User updateUser(User user);
	
	User deleteUser(long id);
}
