package com.career.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

public class DbUtil {
	public static Connection getConnection() throws SQLException {
		ResourceBundle bundle = PropertyResourceBundle.getBundle("dbconfig");
		
		String driver = bundle.getString("connection.driver");
		String url = bundle.getString("connection.url");
		String username = bundle.getString("connection.username");
		String password = bundle.getString("connection.password");
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection con = DriverManager.getConnection(url, username, password);
		return con;
	}
	
	public static long getMaxId(String primaryKey, String tableName) {
		
		PreparedStatement stmt;
		ResultSet rs;
		String sqlQuery = "select max(" + primaryKey + ") as max_id from " + tableName;
		long maxId = 0;
		
		try {
			stmt = DbUtil.getConnection().prepareStatement(sqlQuery);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				maxId = rs.getLong("max_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return maxId + 1;
	}

}
