package com.squad.eshop.dao.AssociateTo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.squad.eshop.model.AssociateToModel;
import com.squad.eshop.util.DBConnection;

public class AssociateToDAO implements IAssociateToDAO {

	@Override
	public AssociateToModel getAssociateTo(int associateId) {
		String sql = "select * from AssociatedToTable where associateId=?";
		AssociateToModel associate = null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, associateId);
			
			ResultSet rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				associate = new AssociateToModel(rs.getString(2));
				associate.setAssociateId(rs.getInt(1));
			}
			
			return associate;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return associate;
		}
	}

}
