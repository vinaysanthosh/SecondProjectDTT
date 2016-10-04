package com.latzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.dao.UserDAO;
import com.latzchaat.model.UserDetails;

@Service
@Transactional
@EnableTransactionManagement
public class UserService {

	private UserDAO userDAO;

	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Autowired
	
	public UserService(UserDAO userDAO) {
		
		this.userDAO= userDAO;
	}
	
	public UserDetails getUserByName(String email)
	{
		return userDAO.getUserByName(email);
	}
	/*Service Method for user registration*/
	public void registerUser(UserDetails userDetails) {
		/*
		 * calling registerUser method for registring the new user this method
		 * belongs to UserDAO
		 */
		System.out.println("Hi from service");
		userDAO.registerUser(userDetails);
		System.out.println("bbye from service");
	}
	
	public List<UserDetails> getAllUsers()
	{
		return userDAO.getAllUsers();
	}
	
	public void updateUserDetails(UserDetails userDetail) {
		userDAO.updateUserDetails(userDetail);		
	}

}
