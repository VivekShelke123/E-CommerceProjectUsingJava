package com.squad.eshop.service;

import com.squad.eshop.dao.UserDAO;
import com.squad.eshop.model.UserModel;

public class UserService {

	public boolean registerUser(String userName, String userEmail, String userPass, String userAdd, String userPhone) {
		
		UserModel user = new UserModel( userName,  userEmail,  userPass,  userAdd,  userPhone);
		
		UserDAO userDao = new UserDAO();
		
		boolean ifSaved = userDao.saveUser(user);
		
		if(ifSaved) {
			return true;
		}
		
		return false;
		
	}
	
	public boolean loginUser(String userEmail,String userPass) {
		
		UserDAO daoObj = new UserDAO();
		
		UserModel user = daoObj.searchUser(userEmail);
		
		if(user == null) {
			return false;
		}
		
		if(userPass.equals(user.getUserPass())) {
			return true;
		}
		return false;
	}
}
