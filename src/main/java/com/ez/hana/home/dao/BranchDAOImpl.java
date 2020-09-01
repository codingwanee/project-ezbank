package com.ez.hana.home.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.hana.vo.BranchVO;

@Repository
public class BranchDAOImpl implements BranchDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 지점 검색하는 기능
	 */
	public List<BranchVO> selectByKeyword(String keyword) {		
		List<BranchVO> branchList = sqlSession.selectList("branchMapper.selectSome", keyword);
		return branchList;
	}
	
	/**
	 * 지점 등록
	 */
	public void insert(BranchVO branchVO) {
		sqlSession.insert("branchMapper.insert", branchVO);
	}
}
