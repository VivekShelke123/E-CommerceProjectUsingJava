package com.squad.eshop.dao;

import com.squad.eshop.model.AdminModel;

public interface IAdminDAO {
	AdminModel searchUser(String adminEmail);
}
