package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Product;


@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) {
		
		
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();

	}

	public void editProduct(Product product) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();

	}

	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
		session.flush();

	}

	public Product getProductById(int productId) {
		
		Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, productId);
        session.flush();

        return product;
	}

	public List<Product> getProductList() {
		
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Product");
			
			List<Product>productList=query.list();
			session.flush();
		
			return productList;
		
	}

}
