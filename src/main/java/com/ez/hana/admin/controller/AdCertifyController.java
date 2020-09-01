package com.ez.hana.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin/certify")
@Controller
public class AdCertifyController {
	
	
	@GetMapping("/list")
	public String certifyList() {
		return "admin/certify/list";
	}
	

}