package com.squad.eshop.service.Category;

import java.util.ArrayList;

import com.squad.eshop.dao.Category.ICategoryDAO;
import com.squad.eshop.model.CategoryModel;

public class CategoryService implements ICategoryService {
	
	private ICategoryDAO categoryDao;

	public CategoryService(ICategoryDAO categoryDao) {
		this.categoryDao = categoryDao;
	}

	@Override
	public ArrayList<CategoryModel> getAllCategory() {
		
		ArrayList<CategoryModel> categoryList = categoryDao.getAllCategory();
		
		return categoryList;
	}

}
