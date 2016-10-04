package com.latzchaat.dao;

import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.model.UserDetails;

/*Creating DAO Interface for UserDetails*/

public interface UserDAOInterface {
	public void registerUser(UserDetails user);
	public UserDetails getUserByName(String email);
	public UserDetails getUserDetails(int uid);
	public void updateUserDetails(UserDetails userDetail);
}
