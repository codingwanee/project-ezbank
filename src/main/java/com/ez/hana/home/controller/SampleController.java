package com.ez.hana.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SampleController {
	
	@GetMapping("/sample")
	public String sample() {	
		
		return "sample/sample";		
	}
	
	@GetMapping("/module")
	public String module() {
		return "sample/module";
	}
}
