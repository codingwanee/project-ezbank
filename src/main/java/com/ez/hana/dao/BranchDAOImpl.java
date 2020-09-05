package com.ez.hana.dao;

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
	
	/**
	 * 지점 전체목록 조회
	 */
	public List<BranchVO> selectAll() {
		List<BranchVO> branchList = sqlSession.selectList("branchMapper.selectAll");

		// Iterator<BranchVO> it = branchList.iterator();
		// while (it.hasNext()) { System.out.println(it.next()); }
		// System.out.println("branchList : " + branchList.iterator().toString());

		return branchList;
	}
}
