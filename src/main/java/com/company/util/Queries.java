package com.company.util;

public class Queries {

	public static String insert = "INSERT INTO users(username,email,password) VALUES(?,?,?)";
	
	public static String select = "SELECT * FROM users WHERE username = ? and password = ?";
}
