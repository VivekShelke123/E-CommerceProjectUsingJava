package com.squad.eshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.squad.eshop.model.AdminModel;
import com.squad.eshop.util.DBConnection;

public class AdminDao implements IAdminDAO {

	@Override
	public AdminModel searchUser(String adminEmail) {
		String sql = "select * from AdminInfoTable where AdminEmail=?";
		AdminModel admin = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, adminEmail);
			
			ResultSet rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				admin = new AdminModel(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				admin.setAdminId(rs.getInt(1));
			}
			
			return admin;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return admin;
		}
	}

}
