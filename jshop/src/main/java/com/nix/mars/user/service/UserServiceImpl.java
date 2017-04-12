package com.nix.mars.user.service;

import java.util.List;

import com.nix.mars.user.dao.UserDao;
import com.nix.mars.user.model.User;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<User> getAllUsers() {
		return userDao.getAllUsers();
	}

	public User findByUserId(long id) {
		return userDao.findByUserId(id);
	}

	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}

	public int createUser(User user) {
		return userDao.createUser(user);
	}

	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	public int deleteUser(long userId) {
		return userDao.deleteUser(userId);
	}
}
