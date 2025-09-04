package com.squad.eshop.dao;

import com.squad.eshop.model.UserModel;
import com.squad.eshop.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

public class UserDAO {

	public boolean saveUser(UserModel user) {
		
		String sql = "insert into UserInfoTable(UserName,UserEmail,UserPass,UserAdd,UserPhone) values(?,?,?,?,?)";
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserEmail());
			pstmt.setString(3, user.getUserPass());
			pstmt.setString(4, user.getUserAdd());
			pstmt.setString(5, user.getUserPhone());	
			return pstmt.executeUpdate() > 0;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}
	
	public UserModel searchUser(String userEmail) {
		String sql = "select * from UserInfoTable where userEmail=?";
		UserModel user = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userEmail);
			
			ResultSet rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				user = new UserModel(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
				user.setUserId(rs.getInt(1));
			}
			
			return user;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return user;
		}
	}
}
