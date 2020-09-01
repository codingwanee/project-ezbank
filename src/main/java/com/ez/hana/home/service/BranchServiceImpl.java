package com.ez.hana.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.hana.admin.dao.AdBranchDAO;
import com.ez.hana.home.dao.BranchDAO;
import com.ez.hana.vo.BranchVO;

@Service
public class BranchServiceImpl implements BranchService {

	@Autowired
	AdBranchDAO adBranchDAO;
	
	@Autowired
	BranchDAO branchDAO;
	
	@Override
	public void registerBranch(BranchVO branchVO) {
		adBranchDAO.insert(branchVO);		
	}
	
	@Override
	public List<BranchVO> searchBranch(String keyword) {
		List<BranchVO> branchList = branchDAO.selectByKeyword(keyword);
		return branchList;
	}
	
	

}
