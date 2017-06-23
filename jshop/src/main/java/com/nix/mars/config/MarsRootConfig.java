package com.nix.mars.config;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.nix.mars.catalog.dao.ProductDao;
import com.nix.mars.catalog.dao.ProductDaoImpl;
import com.nix.mars.catalog.service.ProductService;
import com.nix.mars.catalog.service.ProductServiceImpl;
import com.nix.mars.user.dao.UserDao;
import com.nix.mars.user.dao.UserDaoImpl;
import com.nix.mars.user.service.UserService;
import com.nix.mars.user.service.UserServiceImpl;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.nix.mars")
public class MarsRootConfig {

	@Bean(destroyMethod = "close")
    public BasicDataSource dataSource() {
    
	    BasicDataSource ds = new BasicDataSource();
	    ds.setDriverClassName("com.mysql.jdbc.Driver");
	    ds.setUrl("jdbc:mysql://localhost:3306/marsdb");
	    ds.setUsername("dbadmin");
	    ds.setPassword("dbadmin");
        return ds;
    }
	
	@Bean
    public ProductDao productDao() {
    	ProductDaoImpl productDao = new ProductDaoImpl();
        productDao.setDataSource(dataSource());
        return productDao;
    }
	
	@Bean
    public UserDao userDao() {
		UserDaoImpl userDao = new UserDaoImpl();
    	userDao.setDataSource(dataSource());
        return userDao;
    }
	
	@Bean
    public ProductService productService() {
		ProductServiceImpl productService = new ProductServiceImpl();
        productService.setProductDao(productDao());
        return productService;
    }
	
	@Bean
    public UserService userService() {
		UserServiceImpl userService = new UserServiceImpl();
		userService.setUserDao(userDao());
        return userService;
    }
    
    
}