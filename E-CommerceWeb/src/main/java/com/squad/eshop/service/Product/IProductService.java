package com.squad.eshop.service.Product;

import com.squad.eshop.model.CategoryModel;

public interface IProductService {
	boolean addProduct(int prodQuantity, String prodName, String prodDesc, double prodPrice, String categoryName, String imgUrl);
}
