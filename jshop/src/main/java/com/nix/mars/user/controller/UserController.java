package com.nix.mars.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.nix.mars.user.model.User;
import com.nix.mars.user.service.UserService;

@RestController
public class UserController {

	@Autowired
	UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/user/", method = RequestMethod.GET)
	public ResponseEntity<List<User>> getAllUsers() {
		List<User> users = userService.getAllUsers();
		if (users.isEmpty()) {
			return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<User>>(users, HttpStatus.OK);
	}

	@RequestMapping(value = "/user/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<User> getUser(@PathVariable("id") long id) {
		User user = userService.findByUserId(id);
		if (user == null) {
			return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}

	// -------------------Create a
	// User--------------------------------------------------------

	/*
	 * @RequestMapping(value = "/user/", method = RequestMethod.POST) public
	 * ResponseEntity<Void> createUser(@RequestBody User user,
	 * UriComponentsBuilder ucBuilder) { System.out.println("Creating User " +
	 * user.getUsername());
	 * 
	 * if (userService.findByUsername(user.getUsername()) { System.out.println(
	 * "A User with name " + product.getModel() + " already exist"); return new
	 * ResponseEntity<Void>(HttpStatus.CONFLICT); }
	 * 
	 * userService.saveProduct(product);
	 * 
	 * HttpHeaders headers = new HttpHeaders();
	 * headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(product.
	 * getProductId()).toUri()); return new ResponseEntity<Void>(headers,
	 * HttpStatus.CREATED); }
	 */

	// ------------------- Update a User
	// --------------------------------------------------------

	@RequestMapping(value = "/user/{id}", method = RequestMethod.PUT)
	public ResponseEntity<User> updateUser(@PathVariable("id") long id, @RequestBody User user) {

		/*
		 * User user = userService.findByUserId(id);
		 * 
		 * if (user == null) { return new
		 * ResponseEntity<User>(HttpStatus.NOT_FOUND); }
		 * 
		 * currentProduct.setModel(product.getModel());
		 * 
		 * userService.updateProduct(currentProduct);
		 */
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}

	// ------------------- Delete a User
	// --------------------------------------------------------

	@RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<User> deleteUser(@PathVariable("id") long id) {

		User user = userService.findByUserId(id);
		if (user == null) {
			return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
		}

		userService.deleteUser(id);
		return new ResponseEntity<User>(HttpStatus.NO_CONTENT);
	}

}