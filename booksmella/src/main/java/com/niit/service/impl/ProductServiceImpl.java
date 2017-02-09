package com.niit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;

	public void addProduct(Product product) {
		
		productDao.addProduct(product);

	}

	public void editProduct(Product product) {
		
		productDao.editProduct(product);

	}

	public void deleteProduct(Product product) {
		
		productDao.deleteProduct(product);

	}

	public Product getProductById(int productId) {
		return productDao.getProductById(productId);
		
	}

	public List<Product> getProductList() {
		return productDao.getProductList();
	}

}
