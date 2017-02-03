package com.niit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.service.CustomerService;


@Service	
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao customerDao;

	public void addCustomer(Customer customer) {
		
		customerDao.addCustomer(customer);

		
	}

	public Customer getCustomerById(int CustomerId) {
		return customerDao.getCustomerById(CustomerId);

	}

	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return customerDao.getAllCustomers();
	}

	public Customer getCustomerByName(String username) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerByName(username);
	}

}
