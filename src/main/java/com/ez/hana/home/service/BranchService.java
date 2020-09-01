package com.ez.hana.home.service;

import java.util.List;

import com.ez.hana.vo.BranchVO;

public interface BranchService {

	/**
	 * 새 지점 등록
	 * @param branchVO 등록한 지점정보
	 */
	public void registerBranch(BranchVO branchVO);
	
	
	/**
	 * 키워드로 지점검색
	 * @param keyword 검색키워드
	 */
	public List<BranchVO> searchBranch(String keyword);
}
