package com.nix.mars.catalog.service;

import java.util.List;

import com.nix.mars.catalog.dao.ProductDao;
import com.nix.mars.catalog.model.Product;

public class ProductServiceImpl implements ProductService {

	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> getAllProducts() {
		
		return productDao.getAllProducts();
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
		return productDao.getProductById(id);
	}

	public Product getProductBySku(String sku) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public void saveProduct(Product product) {
		productDao.saveProduct(product);
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
	}
	
	
	/*private static final AtomicLong counter = new AtomicLong();
	
	private static List<User> users;
	
	static{
		users= populateDummyUsers();
	}

	public List<User> findAllUsers() {
		return users;
	}
	
	public User findById(long id) {
		for(User user : users){
			if(user.getId() == id){
				return user;
			}
		}
		return null;
	}
	
	public User findByName(String name) {
		for(User user : users){
			if(user.getName().equalsIgnoreCase(name)){
				return user;
			}
		}
		return null;
	}
	
	public void saveUser(User user) {
		user.setId(counter.incrementAndGet());
		users.add(user);
	}

	public void updateUser(User user) {
		int index = users.indexOf(user);
		users.set(index, user);
	}

	public void deleteUserById(long id) {
		
		for (Iterator<User> iterator = users.iterator(); iterator.hasNext(); ) {
		    User user = iterator.next();
		    if (user.getId() == id) {
		        iterator.remove();
		    }
		}
	}

	public boolean isUserExist(User user) {
		return findByName(user.getName())!=null;
	}
	
	public void deleteAllUsers(){
		users.clear();
	}

	private static List<User> populateDummyUsers(){
		List<User> users = new ArrayList<User>();
		users.add(new User(counter.incrementAndGet(),"Sam",30, 70000));
		users.add(new User(counter.incrementAndGet(),"Tom",40, 50000));
		users.add(new User(counter.incrementAndGet(),"Jerome",45, 30000));
		users.add(new User(counter.incrementAndGet(),"Silvia",50, 40000));
		return users;
	}*/

}
