package com.niit.service;

import java.util.List;

import com.niit.model.Product;

public interface ProductService {
	
void addProduct(Product product);
	
	void editProduct(Product product);
	
	void deleteProduct(Product product);
	
	Product getProductById(int productId);
	
	List<Product> getProductList();


}
