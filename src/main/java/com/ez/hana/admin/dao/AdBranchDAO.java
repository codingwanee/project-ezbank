package com.ez.hana.admin.dao;

import java.util.List;

import com.ez.hana.vo.BranchVO;

public interface AdBranchDAO {
	
	/**
	 * 지점 전체조회
	 */
	public List<BranchVO> selectAll();

	/**
	 * 지점 등록
	 * @param branchVO 지점 정보
	 */
	public void insert(BranchVO branchVO);
}
