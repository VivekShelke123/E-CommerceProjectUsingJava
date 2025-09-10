package com.squad.eshop.service;

import com.squad.eshop.dao.IAdminDAO;
import com.squad.eshop.model.AdminModel;


public class AdminService implements IAdminService {
	
	private IAdminDAO adminDao;
	
	public AdminService(IAdminDAO adminDao){
		this.adminDao = adminDao;
	}

	@Override
	public AdminModel loginAdmin(String adminEmail, String adminPass) {
		AdminModel admin = adminDao.searchUser(adminEmail);
		
		
		if(admin!=null && adminPass.equals(admin.getAdminPass())) {
			return admin;
		}
		return null;
	}

}
