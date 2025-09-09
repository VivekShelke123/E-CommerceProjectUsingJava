package com.squad.eshop.model;

public class AdminModel {
	private int adminId;
	private String adminUserName,adminEmail,adminPass,adminPhone;
	
	public AdminModel(String adminUserName, String adminEmail, String adminPass, String adminPhone) {
		this.adminUserName = adminUserName;
		this.adminEmail = adminEmail;
		this.adminPass = adminPass;
		this.adminPhone = adminPhone;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminUserName() {
		return adminUserName;
	}

	public void setAdminUserName(String adminUserName) {
		this.adminUserName = adminUserName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPass() {
		return adminPass;
	}

	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}

	public String getAdminPhone() {
		return adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	
	
}
