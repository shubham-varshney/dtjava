package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;


public interface CustomerDao {
	
	
	void addCustomer(Customer customer);
	
	void getCustomerById(int CustomerId);
	
	List<Customer> getAllCustomers();
	
	Customer getCustomerByName(String username);
	

}
