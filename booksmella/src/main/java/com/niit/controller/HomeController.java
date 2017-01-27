package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public String home(){
		
		
		return "Home";
		
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false)String logout,Model model){
		
		if(error!=null){
			
			model.addAttribute("error", "invalid username or password");
		}
		
		
		if(logout!=null){
			
			model.addAttribute("msg","you have been logiut successfully");
			
		}
		
		return "Login";
		
	}
	
	
	
	@RequestMapping("/about")
	public String about(){
		
		
		return "AboutUs";
	}
}
