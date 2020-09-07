package com.ez.hana.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ez.hana.admin.service.AdCertifyService;
import com.ez.hana.vo.CertHistoryVO;

@RequestMapping("/admin/certify")
@Controller
public class AdCertifyController {
	
	@Autowired
	AdCertifyService adCertifyService;
	
	@GetMapping("/list")
	public ModelAndView certifyList() {
		
		ModelAndView mav = new ModelAndView("admin/certify/certList");
		List<CertHistoryVO> certList = adCertifyService.getCertList();
		mav.addObject("certList", certList);
		
		return mav;
	}

}
