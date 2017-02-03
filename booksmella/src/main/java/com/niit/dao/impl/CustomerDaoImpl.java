package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerDao;
import com.niit.model.Authorities;
import com.niit.model.Customer;
import com.niit.model.User;


@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomer(Customer customer) {
		
		Session session=sessionFactory.openSession();
		customer.getBillingAddress().setCustomer(customer);
		customer.getShippingAddress().setCustomer(customer);
		
		session.saveOrUpdate(customer);
		session.saveOrUpdate(customer.getBillingAddress());
		session.saveOrUpdate(customer.getShippingAddress());
		
		
		User user=new User();
		user.setUsername(customer.getUsername());
		user.setPassword(customer.getPassword());
		user.setEnabled(true);
		user.setCustomerId(customer.getCustomerId());
		
		
		Authorities authority=new Authorities();
		authority.setUsername(customer.getUsername());
		authority.setAuthority("ROLE_USER");
		
		session.saveOrUpdate(user);
		session.saveOrUpdate(authority);
		
		session.flush();
		
		
		// TODO Auto-generated method stub

	}

	public Customer getCustomerById(int CustomerId) {
		
		Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, CustomerId);
	}

	public List<Customer> getAllCustomers() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customerList=query.list();
		return customerList;
	}

	public Customer getCustomerByName(String username) {
		
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where username = ?");
        query.setString(0, username);


        return (Customer) query.uniqueResult();
	}

}
