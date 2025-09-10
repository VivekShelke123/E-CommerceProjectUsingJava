package com.squad.eshop.model;

public class CategoryModel {
	private int categoryId;
	private String categoryName;
	private AssociateToModel associateTo;
	public CategoryModel(String categoryName, AssociateToModel associateTo) {
		super();
		this.categoryName = categoryName;
		this.associateTo = associateTo;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public AssociateToModel getAssociateTo() {
		return associateTo;
	}
	public void setAssociateTo(AssociateToModel associateTo) {
		this.associateTo = associateTo;
	}
	
}
