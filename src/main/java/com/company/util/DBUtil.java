package com.company.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	private static final String url = "jdbc:mysql://localhost:3306/login_register";
	private static final String username = "root";
	private static final String password = "Admin@123";

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}catch(ClassNotFoundException e ){
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection ()throws SQLException{
		
		return DriverManager.getConnection(url,username,password);
	}
}
