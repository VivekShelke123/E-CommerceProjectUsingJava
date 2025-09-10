package com.squad.eshop.model;

public class ProductModel {
	private int prodId,prodQuantity;
	private String prodName,prodDesc,imgUrl;
	private double prodPrice;
	private CategoryModel category;
	public ProductModel(int prodQuantity, String prodName, String prodDesc, double prodPrice, CategoryModel category,String imgUrl) {
		super();
		this.prodQuantity = prodQuantity;
		this.prodName = prodName;
		this.prodDesc = prodDesc;
		this.prodPrice = prodPrice;
		this.category = category;
		this.imgUrl = imgUrl;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public int getProdQuantity() {
		return prodQuantity;
	}
	public void setProdQuantity(int prodQuantity) {
		this.prodQuantity = prodQuantity;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdDesc() {
		return prodDesc;
	}
	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}
	public double getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(double prodPrice) {
		this.prodPrice = prodPrice;
	}
	public CategoryModel getCategory() {
		return category;
	}
	public void setCategory(CategoryModel category) {
		this.category = category;
	}
	
	
}
