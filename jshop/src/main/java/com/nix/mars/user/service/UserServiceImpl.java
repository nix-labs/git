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

	public User createUser(User user) {
		if(findByUsername(user.getUsername()) != null) {
			return null;
		}
		return userDao.createUser(user);
	}

	public User updateUser(long id, User user) {
		if(findByUserId(id) == null) {
			return null;
		}
		return userDao.updateUser(user);
	}

	public User deleteUser(long id) {
		if(findByUserId(id) == null) {
			return null;
		}
		return userDao.deleteUser(id);
	}
}
