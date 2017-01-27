package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	
	void addProduct(Product product);
	
	void editProduct(Product product);
	
	void deleteProduct(Product product);
	
	Product getProductById(int productId);
	
	List<Product> getProductList();

}
