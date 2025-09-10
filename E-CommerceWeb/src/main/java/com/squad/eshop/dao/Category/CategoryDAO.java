package com.squad.eshop.dao.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.squad.eshop.dao.AssociateTo.AssociateToDAO;
import com.squad.eshop.dao.AssociateTo.IAssociateToDAO;
import com.squad.eshop.model.AssociateToModel;
import com.squad.eshop.model.CategoryModel;
import com.squad.eshop.model.UserModel;
import com.squad.eshop.service.AssociateTo.AssociateToService;
import com.squad.eshop.service.AssociateTo.IAssociateToService;
import com.squad.eshop.util.DBConnection;

public class CategoryDAO implements ICategoryDAO {
	
	private IAssociateToService associateService;
	
	public CategoryDAO() {
		IAssociateToDAO associateDao = new AssociateToDAO();
		this.associateService = new AssociateToService(associateDao);
	}
	

	@Override
	public ArrayList<CategoryModel> getAllCategory() {

		String sql = "select * from CategoryTable";
		ArrayList<CategoryModel> categoryList = new ArrayList<CategoryModel>();
		try {
			Connection con = DBConnection.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				AssociateToModel associate = associateService.getAssociate(rs.getInt(3));
				CategoryModel category = new CategoryModel(rs.getString(2),associate);
				category.setCategoryId(rs.getInt(1));
				
				categoryList.add(category);
			}
			
			return categoryList;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return categoryList;
		}
	}

}
