package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;
import com.company.util.Queries;

public class UserDaoImpl implements UserDao{

	
	@Override
	public boolean isValidUser(String username, String password) {
		
		try {
			
			
			PreparedStatement preparedStatement = DBUtil.getConnection().prepareStatement(Queries.select);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet  = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				return true;
				
			}else {
				
				return false;
				
			}
		} catch (SQLException e) {	
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean addUser(User user) {
		
		String username = user.getUsername();
		String email = user.getEmail();
		String password = user.getPassword();
		
		try {
			
			PreparedStatement preparedStatement = DBUtil.getConnection().prepareStatement(Queries.insert);
			
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, password);
			int effectedRows = preparedStatement.executeUpdate();
			
			return effectedRows > 0;
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
