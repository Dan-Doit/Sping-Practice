package com.newfolder.project.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	ModelAndView mav;
	
	@RequestMapping(value="/Loginindex")
	public String LoginPage() {
		
		return "Loginindex";
	}
	@RequestMapping(value="/RegStore")
	public String RegStore() {
		
		return "RegStore";
	}
	@RequestMapping(value="/RegCoupon")
	public String RegCoupon() {
		
		return "RegCoupon";
	}
	@RequestMapping(value="/UserModify")
	public String UserModify() {
		
		return "UserModify";
	}
	@RequestMapping(value="/community")
	public String community() {
		
		return "community";
	}
	
	
}

















