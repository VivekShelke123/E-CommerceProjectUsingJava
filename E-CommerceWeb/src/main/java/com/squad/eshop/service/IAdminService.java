package com.squad.eshop.service;

import com.squad.eshop.model.AdminModel;

public interface IAdminService {
	AdminModel loginAdmin(String adminEmail,String adminPass);
}
