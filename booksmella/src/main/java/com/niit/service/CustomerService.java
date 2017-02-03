package com.niit.service;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerService {
	
	
	

	void addCustomer(Customer customer);
	
	Customer getCustomerById(int CustomerId);
	
	List<Customer> getAllCustomers();
	
	Customer getCustomerByName(String username);
	


}
