package com.nix.mars.user.service;

import java.util.List;

import com.nix.mars.user.model.User;

public interface UserService {

	List<User> getAllUsers();

	User findByUserId(long id);

	User findByUsername(String username);

	int createUser(User user);

	int updateUser(User user);
	
	int deleteUser(long userId);
}
