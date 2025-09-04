package com.squad.eshop.model;

public class UserModel {
	private int userId;
	private String userName,userEmail,userPass,userAdd,userPhone;
	
	public UserModel(String userName, String userEmail, String userPass, String userAdd, String userPhone) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPass = userPass;
		this.userAdd = userAdd;
		this.userPhone = userPhone;
	}

	public UserModel() {
		super();
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserAdd() {
		return userAdd;
	}

	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	
	
}
