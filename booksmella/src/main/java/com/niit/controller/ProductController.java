package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	
	@RequestMapping("/product")
	public ModelAndView getaddproduct(){
		
		ModelAndView model=new ModelAndView("addProduct");
		
		return model;
		
	}
	
	@ModelAttribute("prod")
	public Product newProduct(){
		
		return new Product();
		
	}
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/productSubmitted" ,method=RequestMethod.POST)
	public ModelAndView setaddproduct(@ModelAttribute("product")Product product,BindingResult result, HttpServletRequest request){
		productService.addProduct(product);
		ModelAndView model=new ModelAndView("productAdded");
		model.addObject("message", "your product is added");
		return model;
		
		
		
	}
	

}
