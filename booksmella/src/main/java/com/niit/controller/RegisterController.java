package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.BillingAddress;
import com.niit.model.Customer;
import com.niit.model.ShippingAddress;
import com.niit.service.CustomerService;

@Controller
public class RegisterController {
	
	
	@RequestMapping("/register")
	public String registerCustomer(){
		
		/*Customer customer=new Customer();
		BillingAddress billingAddress=new BillingAddress();
		ShippingAddress shippingAddress=new ShippingAddress();
		
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		
		model.addAttribute("customer",customer);*/
		
		return "Register";
		
		
	}
	
	@ModelAttribute("registration")
	public Customer newcustomer(){
		
		return new Customer();
		
	}
	
	

	@Autowired
	private CustomerService customerService;


	@RequestMapping(value="/registerCustomer",method=RequestMethod.POST)
	public ModelAndView registerCustomerPost(@ModelAttribute("customer") Customer customer, BindingResult result, HttpServletRequest request){
		
		customerService.addCustomer(customer);
		ModelAndView model=new ModelAndView("registersuccess");
		 model.addObject("msg","your product is added");
		 
		 return model;
		
		
		
		
		
	}
	
	
	
	

}
