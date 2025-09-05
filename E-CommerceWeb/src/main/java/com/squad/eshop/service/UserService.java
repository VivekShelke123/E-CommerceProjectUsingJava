package com.squad.eshop.service;

import com.squad.eshop.dao.IUserDAO;
import com.squad.eshop.model.UserModel;

public class UserService implements IUserService {

	private IUserDAO userDao;
	
	public UserService(IUserDAO userDao){
		this.userDao = userDao;
	}
	
	@Override
	public boolean registerUser(String userName, String userEmail, String userPass, String userAdd, String userPhone) {
		
		UserModel user = new UserModel( userName,  userEmail,  userPass,  userAdd,  userPhone);
		
		boolean ifSaved = userDao.saveUser(user);
		
		if(ifSaved) {
			return true;
		}
		
		return false;
		
	}
	
	@Override
	public UserModel loginUser(String userEmail,String userPass) {
		
		UserModel user = userDao.searchUser(userEmail);
		
		
		if(user!=null && userPass.equals(user.getUserPass())) {
			return user;
		}
		return null;
	}
}
