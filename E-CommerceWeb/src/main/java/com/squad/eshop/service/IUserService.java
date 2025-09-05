package com.squad.eshop.service;

import com.squad.eshop.model.UserModel;

public interface IUserService {
	boolean registerUser(String userName, String userEmail, String userPass, String userAdd, String userPhone);
	UserModel loginUser(String userEmail,String userPass);
}
