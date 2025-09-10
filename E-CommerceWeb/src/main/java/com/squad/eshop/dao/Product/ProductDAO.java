package com.squad.eshop.dao.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.squad.eshop.model.ProductModel;
import com.squad.eshop.util.DBConnection;

public class ProductDAO implements IProductDAO {
	

	@Override
	public boolean saveProduct(ProductModel product) {
		
		String sql = "insert into ProductTable(productName,productDesc,productPrice,productQuantity,categoryId,imgUrl) values(?,?,?,?,?,?)";
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, product.getProdName());
			pstmt.setString(2, product.getProdDesc());
			pstmt.setDouble(3, product.getProdPrice());
			pstmt.setInt(4, product.getProdQuantity());
			pstmt.setInt(5, (product.getCategory()).getCategoryId());
			pstmt.setString(6, product.getImgUrl());
			
			return pstmt.executeUpdate() > 0;
			
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

}
