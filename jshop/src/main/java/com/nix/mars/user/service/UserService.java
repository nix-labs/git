package com.nix.mars.user.service;

import java.util.List;

import com.nix.mars.user.model.User;

public interface UserService {

	List<User> getAllUsers();

	User findByUserId(long id);

	User findByUsername(String username);

	User createUser(User user);

	User updateUser(long id, User user);
	
	User deleteUser(long id);
}
