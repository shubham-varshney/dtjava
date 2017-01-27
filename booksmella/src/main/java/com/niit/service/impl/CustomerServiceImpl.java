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

	public void getCustomerById(int CustomerId) {
		// TODO Auto-generated method stub

	}

	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return null;
	}

	public Customer getCustomerByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
