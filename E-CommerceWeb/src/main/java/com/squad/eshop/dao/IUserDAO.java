package com.squad.eshop.dao;

import com.squad.eshop.model.UserModel;

public interface IUserDAO {
	 boolean saveUser(UserModel user);
	 UserModel searchUser(String userEmail);
}
