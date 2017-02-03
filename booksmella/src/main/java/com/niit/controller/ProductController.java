package com.niit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	
	@RequestMapping("/productList/all")
	public String getProduct(Model model){
		List<Product> products=productService.getProductList();
		model.addAttribute("products",products);
		
	return "productList";	
	}
	
	
	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable int productId,Model model)throws IOException{
		
		Product product=productService.getProductById(productId);
		model.addAttribute("product", product);
		
		return "viewProduct";
	}
	
	@RequestMapping("/productList")
	public String getProductByCategory(@RequestParam("searchCondition") String searchCondition,Model model){
		
		List<Product> products=productService.getProductList();
		model.addAttribute("products", products);
		model.addAttribute("searchCondition", searchCondition);
		return "productList";
	}
	
	
	


}
