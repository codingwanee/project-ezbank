package com.ez.hana.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.hana.home.service.BranchService;
import com.ez.hana.vo.BranchVO;

@RequestMapping("/branch")
@Controller
public class BranchController {
	
	@Autowired
	BranchService branchService;

	@GetMapping
	public String branchPage() {
		return "home/branch/branch";
	}

	@GetMapping("/search")
	public List<BranchVO> branchSearch(String keyword) {
		List<BranchVO> branchList = branchService.searchBranch(keyword);
		return branchList;
	}

}
