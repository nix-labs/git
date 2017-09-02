package com.nix.user.dao;

import java.util.List;

import com.nix.base.dao.BaseDao;
import com.nix.user.model.User;

public interface UserDao extends BaseDao<User> {

	List<User> getAllUsers();

	User findByUserId(long id);

	User findByUsername(String username);

	User createUser(User user);

	User updateUser(User user);
	
	User deleteUser(long id);
}
