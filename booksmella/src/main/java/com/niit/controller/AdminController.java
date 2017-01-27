package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.service.CustomerService;
import com.niit.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping
	public String adminPage(){
		
		return "admin";
	}
	
	public String productInventory(Model model){
		
		List<Product>productList=productService.getProductList();
		model.addAttribute("products", "product");
		return "productInventory";
		
		
	}
	
	public String customerDetail(Model model){
		
		List<Customer> customers=customerService.getAllCustomers();
		model.addAttribute("customerList", "customerList");
		return "customerView";
	}

}
