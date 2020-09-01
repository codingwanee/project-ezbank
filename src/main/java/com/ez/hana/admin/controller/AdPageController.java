package com.ez.hana.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdPageController {

	@GetMapping
	public String adminMainPage() {
		return "admin/main";
	}	
	
	@GetMapping("/login")
	public String adminLogin() {
		return "admin/login";
	}
	

}
