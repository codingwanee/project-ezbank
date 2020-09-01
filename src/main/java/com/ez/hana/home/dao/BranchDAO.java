package com.ez.hana.home.dao;

import java.util.List;

import com.ez.hana.vo.BranchVO;

public interface BranchDAO {
	
	/**
	 * 키워드로 지점 조회
	 * @param keyword 검색키워드
	 */
	public List<BranchVO> selectByKeyword(String keyword);

	/**
	 * 지점 등록
	 * @param branchVO 지점 정보
	 */
	public void insert(BranchVO branchVO);
	
}
